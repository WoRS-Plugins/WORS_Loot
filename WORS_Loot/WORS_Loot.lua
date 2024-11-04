-- Create the main frame
-- TO add new module ensure Data file is in this format "WORS_Loot_*ModuleName*_Data"
-- See Functions bellow to add new modules
--local function UpdateLootTable(subCat, subSubCat)
    --***local modulesData = {WORS_Loot_Slayer_Data, WORS_Loot_Skill_Data, WORS_Loot_Meme_Data, WORS_Loot_Boss_Data}
--local function UpdateSubcategoryDropdown(selectedModule)
	--***local modulesData = {WORS_Loot_Slayer_Data, WORS_Loot_Skill_Data, WORS_Loot_Meme_Data, WORS_Loot_Boss_Data}
--UIDropDownMenu_Initialize(moduleDropdown, function(self, level)
	--***local modules = {"Bosses", "Slayer", "Skills", "Memes"}


local WORS_Loot = CreateFrame("Frame", "WORS_Loot", UIParent)
WORS_Loot:SetSize(550, 450)
WORS_Loot:SetPoint("CENTER")

WORS_Loot:SetBackdrop({	
	bgFile = "Interface\\WORS\\OldSchoolBackground2",
    edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
    tile = false, tileSize = 32, edgeSize = 32,
    insets = { left = 5, right = 6, top = 6, bottom = 5 }
})
--WORS_Loot:SetBackdropColor(0, 0, 0, 1)

-- Enable mouse interactions
WORS_Loot:EnableMouse(true)
WORS_Loot:SetMovable(true)
WORS_Loot:RegisterForDrag("LeftButton")

-- Set up dragging behavior
WORS_Loot:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

WORS_Loot:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)

-- Optional: keep the frame within screen bounds
WORS_Loot:SetClampedToScreen(true)

WORS_Loot:Hide()
print("WORS Loot main frame created.")


-- Title
local title = WORS_Loot:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
title:SetPoint("TOP", 0, -10)
title:SetText("WORS Loot")

-- Dropdowns
local moduleDropdown = CreateFrame("Frame", "WORS_Loot_ModuleDropdown", WORS_Loot, "UIDropDownMenuTemplate")
moduleDropdown:SetPoint("TOPLEFT", WORS_Loot, "TOPLEFT", 20, -30)
UIDropDownMenu_SetWidth(moduleDropdown, 130)
print("Module dropdown created.")

local subcategoryDropdown = CreateFrame("Frame", "WORS_Loot_SubcategoryDropdown", WORS_Loot, "UIDropDownMenuTemplate")
subcategoryDropdown:SetPoint("TOPLEFT", moduleDropdown, "TOPLEFT", 160, 0)
UIDropDownMenu_SetWidth(subcategoryDropdown, 130)
print("Subcategory dropdown created.")

local thirdDropdown = CreateFrame("Frame", "WORS_Loot_ThirdDropdown", WORS_Loot, "UIDropDownMenuTemplate")
thirdDropdown:SetPoint("TOPLEFT", subcategoryDropdown, "TOPLEFT", 160, 0)
UIDropDownMenu_SetWidth(thirdDropdown, 130)
print("Third dropdown created.")


-- Loot Table Frame
local lootTableFrame = CreateFrame("ScrollFrame", "WORS_Loot_LootTable", WORS_Loot, "UIPanelScrollFrameTemplate")
lootTableFrame:SetSize(450, 350)
lootTableFrame:SetPoint("TOPLEFT", moduleDropdown, "BOTTOMLEFT", 20, -20)
lootTableFrame:SetBackdrop({
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
lootTableFrame:SetBackdropColor(0, 0, 0, 0)
lootTableFrame:SetBackdropBorderColor(0, 0, 0, 0)
local lootContent = CreateFrame("Frame", nil, lootTableFrame)
lootContent:SetSize(225, 1)
lootTableFrame:SetScrollChild(lootContent)
local lootItems = {}
local buttonHeight = 40
local buttonSpacing = 5

-- Create clickable item link with icon using item ID
local buttonHeight = 40
local buttonSpacing = 5
-- Create a font string for displaying information
local infoText = lootTableFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
infoText:SetPoint("TOP", lootTableFrame, "TOP", 0, -60)  -- Adjust position as necessary
infoText:SetText("")  -- Initial text
infoText:SetTextColor(1, 1, 1)  -- White text color
infoText:SetJustifyH("CENTER")  -- Center the text horizontally
local subInfoText = lootTableFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
subInfoText:SetPoint("TOP", lootTableFrame, "TOP", 0, -60)  -- Adjust position as necessary
subInfoText:SetText("")  -- Initial text
subInfoText:SetTextColor(1, 1, 1)  -- White text color
subInfoText:SetJustifyH("CENTER")  -- Center the text horizontally

-- Function to create the loot frame
local function CreateLootFrame()
    local lootFrame = CreateFrame("Frame", "WORS_Loot", UIParent)
    lootFrame:SetSize(400, 300)  -- Set the desired size
    lootFrame:SetPoint("CENTER")  -- Position it in the center of the screen

    -- Set the backdrop for the loot frame
    lootFrame:SetBackdrop({
        bgFile = "Interface\\WORS\\OldSchoolBackground2",
        edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
        tile = false,
        tileSize = 32,
        edgeSize = 32,
        insets = { left = 5, right = 6, top = 6, bottom = 5 }
    })

    lootFrame:SetBackdropColor(0, 0, 0, 1)  -- Black background
    lootFrame:SetBackdropBorderColor(1, 1, 1, 1)  -- White border

    lootFrame:Show()  -- Show the loot frame
    return lootFrame
end


-- Function to create a loot button
local function CreateLootButton(itemId, index, isRareDrop)
    print("Creating loot button for item ID:", itemId)
    if not itemId then
        print("Error: Missing item ID.")
        return nil
    end

    local lootButton = CreateFrame("Button", nil, lootContent)
    lootButton:SetSize(210, buttonHeight)

    -- Calculate row and column based on the index
    local column = (index - 1) % 2  -- 0 for first column, 1 for second column
    local row = math.floor((index - 1) / 2)  -- Calculate the row number
    lootButton:SetPoint("TOPLEFT", lootContent, "TOPLEFT", 10 + column * (220 + 10), -(row * (buttonHeight + buttonSpacing)))

    -- Set the button background color based on the rarity
    if isRareDrop then
        lootButton:SetBackdrop({
            bgFile = "Interface\\WORS\\OldSchoolBackground2",  -- Use the same background texture
            edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
            tile = false,
            tileSize = 32,
            edgeSize = 32,
            insets = { left = 5, right = 6, top = 6, bottom = 5 }
        })
        lootButton:SetBackdropColor(0.75, 0.25, 0.75, 1)  -- Lighter purple background for rare drops

    else
        lootButton:SetBackdrop({
            bgFile = "Interface\\WORS\\OldSchoolBackground2",
            edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
            tile = false,
            tileSize = 32,
            edgeSize = 32,
            insets = { left = 5, right = 6, top = 6, bottom = 5 }
        })
        lootButton:SetBackdropColor(0, 0, 0, 1)  -- Black background for normal drops
    end

    -- Create item icon
    local itemIcon = lootButton:CreateTexture(nil, "ARTWORK")
    itemIcon:SetSize(40, 40)
    itemIcon:SetPoint("LEFT", lootButton, "LEFT", 5, 0)
    itemIcon:SetTexture(GetItemIcon(itemId) or "Interface/Icons/INV_Misc_QuestionMark")

    -- Tooltip on hover
    lootButton:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        local itemLink = GetItemLink(itemId)
        if itemLink then
            GameTooltip:SetHyperlink(itemLink)
            GameTooltip:Show()
        else
            print("Error: Item link not found for item ID " .. itemId)
        end
    end)

    lootButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- Item name display
    local itemName = lootButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    itemName:SetPoint("LEFT", itemIcon, "RIGHT", 5, 0)
    itemName:SetFont("Fonts\\runescape.ttf", 20)  -- Set custom font and size
    itemName:SetTextColor(0, 0, 1)

    -- Attempt to fetch the item name using the cached method
    local itemInfo = {GetItemInfo(itemId)}
    if itemInfo[1] then
        itemName:SetTextColor(1, 1, 0)
        itemName:SetText(itemInfo[1])  -- Use the name if found
    else
        local itemLink = format("|cffff8000|Hitem:%d:0:0:0:0:0:0:0|h[%d]|h|r", itemId, itemId)
        itemName:SetText(itemLink)  -- Display the raw hyperlink format
        itemName:SetTextColor(1, 1, 0)  -- Yellow color for unknown items

        local loadingStartTime = GetTime()
        lootButton:SetScript("OnUpdate", function(self)
            if (GetTime() - loadingStartTime) > 999 then
                lootButton:SetScript("OnUpdate", nil)  -- Stop the update script
            else
                itemInfo = {GetItemInfo(itemId)}
                if itemInfo[1] then
                    itemName:SetText(itemInfo[1])  -- Update the name if it has now been found
                    itemName:SetTextColor(1, 1, 0)  -- Reset color to white
                    lootButton:SetScript("OnUpdate", nil)  -- Stop the update script
                end
            end
        end)
    end

    lootButton:SetHighlightTexture("Interface/Buttons/UI-Common-MouseHilight", "ADD")
    lootButton:SetPushedTextOffset(0, -1)

    lootButton:SetScript("OnClick", function(self, button)
        local itemLink = GetItemLink(itemId)
        if itemLink then
            if ChatFrame1.editBox:IsVisible() then
                local currentChatText = ChatFrame1.editBox:GetText()
                ChatFrame1.editBox:SetText(currentChatText .. " " .. itemLink)
                ChatFrame1.editBox:SetCursorPosition(#currentChatText + #itemLink + 1)
                ChatFrame1.editBox:SetFocus()
            else
                ItemRefTooltip:SetOwner(self, "ANCHOR_RIGHT")
                ItemRefTooltip:SetHyperlink(itemLink)
                ItemRefTooltip:Show()
            end
        else
            local fallbackItemLink = format("|cffff8000|Hitem:%d:0:0:0:0:0:0:0|h[%d]|h|r", itemId, itemId)
            ItemRefTooltip:SetOwner(self, "ANCHOR_RIGHT")
            ItemRefTooltip:SetHyperlink(fallbackItemLink)
            ItemRefTooltip:Show()
        end
    end)

    lootButton:Show()
    return lootButton
end

local function DisplayDefaultInfo()
    -- Create a text frame to display information about the add-on
    --local infoText = LootFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    infoText:SetText("Welcome to the WORS Loot!\n\nSelect a category to view item tables for Bosses, \nSlayer Tasks, Crafting and More.\n\n Items with Black background are from the regular drop table\nItems with a Purple background are from random drop table\n\nDrop tables have been mostly scraped from OSRS wiki \nmistakes likly here")
	--subInfoText:SetText("")
    -- Example button for normal drops
    local normalDropButton = CreateLootButton(90066, 1, false)  -- Replace 12345 with an example item ID
    normalDropButton:SetPoint("TOP", infoText, "BOTTOM", 0, -20)


    -- Example button for rare drops
    local rareDropButton = CreateLootButton(91119	, 2, true)  -- Replace 67890 with an example rare item ID
    rareDropButton:SetPoint("TOP", normalDropButton, "BOTTOM", 0, -10)

    --Ensure all elements are visible
    normalDropButton:Show()
    rareDropButton:Show()

    --Store these in lootItems for cleanup
    table.insert(lootItems, normalDropButton)
    table.insert(lootItems, rareDropButton)
    table.insert(lootItems, infoText)
end
DisplayDefaultInfo()

-- Clear Loot Content
-- Clear Loot Content
local function ClearLootContent()
    print("Clearing loot content...")

    -- Check if lootItems is nil or empty
    if not lootItems or #lootItems == 0 then
        print("No loot items to clear.")
        subInfoText:SetText("")  -- Clear any existing text
        subInfoText:Show()  -- Show the info text if needed
        return
    else
        print("Loot items before clearing: ", #lootItems)
    end

    for _, button in ipairs(lootItems) do
        if button and button.Hide then
            button:Hide()  -- Hide the button
            button:ClearAllPoints()  -- Clear positioning
            print("Hiding item button with ID:", button.itemID) -- Log the action
        elseif not button then
            print("Button is nil")
        else
            print("Button does not have a Hide method")
        end
    end

    subInfoText:SetText("")  -- Clear the error message or info text
    subInfoText:Hide()  -- Optionally hide the text if there's no message to show
    wipe(lootItems)  -- Clear the lootItems table
    print("Loot content cleared. Total items now:", #lootItems)
end




-- Update Loot Table based on selection
-- ********************************
-- *****HERE TO ADD NEW MODULE*****
-- ********************************
local function UpdateLootTable(subCat, subSubCat)
    print("Updating loot table for SubCat:", subCat, "SubSubCat:", subSubCat)
    ClearLootContent()
    -- Check if no valid selection was made
    if not subCat or not subSubCat then
        -- Display default message and example buttons
        --DisplayDefaultInfo()
        return
    end
    local lootEntries = {}

    -- Create a mapping of all loot datasets
    local lootDataSources = {WORS_Loot_Boss_Data, WORS_Loot_RDT_Data, WORS_Loot_Weapons_Data, WORS_Loot_Armour_Data, WORS_Loot_Slayer_Data, WORS_Loot_Skill_Data, WORS_Loot_Meme_Data}
    if subCat and subSubCat then
        local foundData = false
        for _, dataSource in ipairs(lootDataSources) do
            if dataSource[subCat] then
                local categoryData = dataSource[subCat][subSubCat]
                if categoryData then
                    foundData = true
                    for _, itemID in ipairs(categoryData.normalDrops) do
                        table.insert(lootEntries, { itemID = itemID, rareDrop = false })
                    end
                    for _, itemID in ipairs(categoryData.rareDropTable) do
                        table.insert(lootEntries, { itemID = itemID, rareDrop = true })
                    end
                end
            end
        end
        if not foundData then
            print("Error: No data found for subCat:", subCat, "subSubCat:", subSubCat)
        end
    else
        print("Error: Missing subCat or subSubCat.")
        return
    end

    if #lootEntries > 0 then
        for index, lootItem in ipairs(lootEntries) do
            print("Loot entry:", lootItem.itemID, "Rare:", lootItem.rareDrop)
            local lootButton = CreateLootButton(lootItem.itemID, index, lootItem.rareDrop)  -- Create the button
            table.insert(lootItems, lootButton)  -- Store the button reference instead of the lootItem
        end
    else
        print("No loot entries available for the selected category.")
		subInfoText:SetText("No loot in this catogry maybe bug or maybe itemID is\n unknown check OSRS Wiki before reporting")
    end
end






-- Update Subcategory for Skills / ModularTemplate
local function UpdateThirdSubCategory(selectedMod, selectedCat)
	ClearLootContent()
    print("UpdateSubCategory: Updating thirdDropdown for selected subSubCat:", selectedCat)
    UIDropDownMenu_ClearAll(thirdDropdown)
    UIDropDownMenu_SetText(thirdDropdown, selectedMod.subcategoryTwoText)

    -- Get the thirdSubCatList for the selected category
    local thirdDropdownValues = nil
    if selectedMod[selectedCat] then
        thirdDropdownValues = selectedMod[selectedCat].thirdSubCatList
    end

    print("Retrieved third dropdown values for category:", selectedCat)
    if thirdDropdownValues then
        for _, value in ipairs(thirdDropdownValues) do
            print(" - " .. value)
        end
    else
        print("No third dropdown values found for category:", selectedCat)
        return  -- Exit early if no values found
    end
    -- Initialize the dropdown menu
    UIDropDownMenu_Initialize(thirdDropdown, function(self, level)
        for _, value in ipairs(thirdDropdownValues) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = value  -- Set the text for the dropdown option
            info.func = function()
                UIDropDownMenu_SetText(thirdDropdown, value)
                UpdateLootTable(selectedCat, value)  -- Assuming value is used here
            end
            UIDropDownMenu_AddButton(info)
        end
    end)
end


-- Update Subcategory Dropdown
-- ********************************
-- *****HERE TO ADD NEW MODULE*****
-- ********************************
local function UpdateSubcategoryDropdown(selectedModule)
    print("Updating subcategory dropdown for module:", selectedModule)
    -- Clear dropdowns and loot content
    UIDropDownMenu_ClearAll(subcategoryDropdown)
    UIDropDownMenu_ClearAll(thirdDropdown)
    UIDropDownMenu_SetText(thirdDropdown, "")    
    ClearLootContent() 
    -- Add new modules here if needed
    local modules = {RareDropTable = WORS_Loot_RDT_Data, Weapons = WORS_Loot_Weapons_Data, Armour = WORS_Loot_Armour_Data, Slayer = WORS_Loot_Slayer_Data, Skills = WORS_Loot_Skill_Data, Memes = WORS_Loot_Meme_Data, Bosses = WORS_Loot_Boss_Data,}

    local moduleData = modules[selectedModule]
    if moduleData then
        -- Set the first level dropdown text from the module data
        UIDropDownMenu_SetText(subcategoryDropdown, moduleData.subcategoryOneText)
        -- Retrieve subTwoCat from the module data file
        local subTwoCat = moduleData.subTwoCat or {}
        print("subTwoCat: ", subTwoCat)  -- Check if this is populated correctly        
        -- Initialize the subcategory dropdown
        UIDropDownMenu_Initialize(subcategoryDropdown, function(self, level)
            for _, cat in ipairs(subTwoCat) do
                local info = UIDropDownMenu_CreateInfo()
                info.text = cat
                info.func = function()
                    UIDropDownMenu_SetText(subcategoryDropdown, cat)
                    UpdateThirdSubCategory(moduleData, cat)
                end
                UIDropDownMenu_AddButton(info)
            end
        end)
        thirdDropdown:Show()
    else
        print("Selected module not found in modules table:", selectedModule)
    end
end


-- Module Dropdown Logic
-- ********************************
-- *****HERE TO ADD NEW MODULE*****
-- ********************************
UIDropDownMenu_Initialize(moduleDropdown, function(self, level)
	-- Add Module name bellow to add to first dropdown menu
    local modules = {"Armour", "Weapons", "Bosses", "RareDropTable", "Slayer", "Skills", "Memes"}
    for _, module in ipairs(modules) do
        local info = UIDropDownMenu_CreateInfo()
        info.text = module
        info.func = function()
            UIDropDownMenu_SetText(moduleDropdown, module)
            UpdateSubcategoryDropdown(module)
        end
        UIDropDownMenu_AddButton(info)
    end
end)

-- Toggle Command for Frame Visibility
SLASH_WORS_LOOT1 = "/worsloot"
SlashCmdList["WORS_LOOT"] = function()
    if WORS_Loot:IsVisible() then
        WORS_Loot:Hide()
    else
        WORS_Loot:Show()
    end
end

-- Minimap Icon for WORS_Loot using LibDBIcon and Ace3
local addon = LibStub("AceAddon-3.0"):NewAddon("WORS_Loot")
WORSLootMinimapButton = LibStub("LibDBIcon-1.0", true)
local miniButton = LibStub("LibDataBroker-1.1"):NewDataObject("WORS_Loot", {
	type = "data source",
	text = "WORS Loot",
	icon = "Interface\\Icons\\INV_Misc_Bag_CoreFelclothBag",
	OnClick = function(self, btn)
        if btn == "LeftButton" then
            if WORS_Loot:IsShown() then
                WORS_Loot:Hide()
            else
                WORS_Loot:Show()
            end
        elseif btn == "RightButton" then
			if WORS_Loot:IsShown() then
                WORS_Loot:Hide()
            else
                WORS_Loot:Show()
            end
        end
	end,
	OnTooltipShow = function(tooltip)
		if not tooltip or not tooltip.AddLine then
			return
		end
		tooltip:AddLine("WORS Loot\n\nLeft-click: Toggle WORS Loot Window", nil, nil, nil, nil)
		tooltip:AddLine("Right-click: N/A Placeholder", nil, nil, nil, nil)
	end,
})
function addon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("WORSLootMinimapDB", {
		profile = {
			minimap = {
				hide = false,
			},
		},
	})
	WORSLootMinimapButton:Register("WORS_Loot", miniButton, self.db.profile.minimap)
end


WORSLootMinimapButton:Show("WORS_Loot")
print("WORS Loot addon loaded.")