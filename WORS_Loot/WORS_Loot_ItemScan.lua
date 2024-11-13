WORS_ItemScan = WORS_ItemScan or {}
WORS_ItemScan.itemData = WORS_ItemScan.itemData or {}
WORS_ItemScan.lastQueriedID = WORS_ItemScan.lastQueriedID or 90000  -- Start from a desired point

local retryQueue = {}
local retryCounts = {}
local QUERY_DELAY = 0.3   -- Throttling delay between item queries
local MAX_RETRIES = 1     -- Max retries before marking item as not found
local scanInProgress = false  -- Flag to indicate if scanning was started by the slash command

-- Function to query the item by item ID
local function QueryItem(itemID)
    local itemName, _, _, _, _, _, _, _, _, itemIcon = GetItemInfo(itemID)
    if itemName then
        WORS_ItemScan.itemData[itemID] = { id = itemID, name = itemName, icon = itemIcon }
        WORS_ItemScan.lastQueriedID = itemID + 1  -- Increment the last queried ID
    else
        -- Create fallback item link if item is not found
        local fallbackItemLink = format("|cffff8000|Hitem:%d:0:0:0:0:0:0:0|h[%d]|h|r", itemID, itemID)
        GameTooltip:SetOwner(UIParent, "ANCHOR_NONE")  
        GameTooltip:SetPoint("LEFT", UIParent, "LEFT", 10, 0)  
        GameTooltip:SetHyperlink(fallbackItemLink)
        GameTooltip:Show()
        retryCounts[itemID] = (retryCounts[itemID] or 0) + 1
        if retryCounts[itemID] <= MAX_RETRIES then
            table.insert(retryQueue, itemID)
        else
            WORS_ItemScan.itemData[itemID] = { id = itemID, name = "Item not found", icon = nil }
        end
    end
end

-- Main loop to query items from a specified start ID up to a specified end ID
local function QueryItems(startID, endID)
    for i = startID, endID do
        table.insert(retryQueue, i)  -- Add each item to the retry queue initially
    end
    scanInProgress = true  -- Set flag to indicate that scanning is in progress
end

-- Set up the retry handler with throttling using OnUpdate
local retryTimer = 0
local function OnUpdate(self, elapsed)
    retryTimer = retryTimer + elapsed
    if retryTimer >= QUERY_DELAY and #retryQueue > 0 then
        local itemID = table.remove(retryQueue, 1)  
        QueryItem(itemID)
        retryTimer = 0
    elseif #retryQueue == 0 and scanInProgress then
        self:SetScript("OnUpdate", nil)  
        print("All items queried and retries completed.")
        scanInProgress = false  -- Reset flag
    end
end

-- Set up the addon frame for handling events
local f = CreateFrame("Frame")
f:SetScript("OnUpdate", OnUpdate)

SLASH_SCANITEMS1 = "/scanitems"
SlashCmdList["SCANITEMS"] = function(msg)
    local startID, endID = msg:match("^(%d+)%s+(%d+)$")
    startID, endID = tonumber(startID), tonumber(endID)
    if startID and endID then
        print("Item Scan from  startID: " .. startID .." to endID: " .. endID)
		WORS_ItemScan.lastQueriedID = startID
        QueryItems(startID, endID)
        f:SetScript("OnUpdate", OnUpdate)  -- Begin retry process with throttling
	else
        print("Usage: /scanitems startNumber endNumber (e.g., /scanitems 90000 90020)")
    end
end
