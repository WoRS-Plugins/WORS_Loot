-- WORS_Loot_Armour.lua
WORS_Loot_Armour_Data = {
	subcategoryOneText = "Select Subcat",
	subcategoryTwo = true,
	subcategoryTwoText = "Select SubSubcat",
	subTwoCat = {"BIS", "Melee", "Range", "Magic"},  -- Add 3rd dropdown list here  here	

	BIS = {
		thirdSubCatList = {"Trees", "Axes"},
		['Trees'] = {
		--normalDrops = {"Logs", "Oak Logs", "Willow Logs", "Teak Logs", "Maple Logs", "Mahogany Logs", "Yew Logs", "Magic Logs", "Redwood Logs"}, rareDropTable = {},},
		  normalDrops = {"90000", "90001", "90002", "90008", "90003", "90007", "90004", "90005", "90006"}, rareDropTable = {},},
		['Axes'] = {
		--normalDrops = {"Dragon Axe", "Rune Axe", "Adamant Axe", "Mithril Axe", "Steel Axe", "Iron Axe", "Bronze Axe"}, rareDropTable = {},},
		  normalDrops = {"90017", "90016", "90015", "90014", "90012", "90011", "90009"}, rareDropTable = {},},	
	},

	
	Melee = {
		thirdSubCatList = {"Runes"},
		['Runes'] = {
		--normalDrops = {"Air Rune", "Mind Rune", "Water Rune", "Earth Rune", "Fire Rune", "Body Rune", "Cosmic Rune", "Chaos Rune", "Astral Rune", "Nature Rune", "Law Rune", "Death Rune", "Wrath Rune"}, rareDropTable = {},},
		  normalDrops = {"90120", "90090", "90107", "90067", "90070", "90038", "90130", "90052", "90123", "90091", "90139", "90133", "90109"}, rareDropTable = {},},	
	},
	Range = {
		thirdSubCatList = {"Trees", "Axes"},
		['Trees'] = {
		--normalDrops = {"Logs", "Oak Logs", "Willow Logs", "Teak Logs", "Maple Logs", "Mahogany Logs", "Yew Logs", "Magic Logs", "Redwood Logs"}, rareDropTable = {},},
		  normalDrops = {"90000", "90001", "90002", "90008", "90003", "90007", "90004", "90005", "90006"}, rareDropTable = {},},
		['Axes'] = {
		--normalDrops = {"Dragon Axe", "Rune Axe", "Adamant Axe", "Mithril Axe", "Steel Axe", "Iron Axe", "Bronze Axe"}, rareDropTable = {},},
		  normalDrops = {"90017", "90016", "90015", "90014", "90012", "90011", "90009"}, rareDropTable = {},},	
	},
	Magic = {
		thirdSubCatList = {"Runes"},
		['Runes'] = {
		--normalDrops = {"Air Rune", "Mind Rune", "Water Rune", "Earth Rune", "Fire Rune", "Body Rune", "Cosmic Rune", "Chaos Rune", "Astral Rune", "Nature Rune", "Law Rune", "Death Rune", "Wrath Rune"}, rareDropTable = {},},
		  normalDrops = {"90120", "90090", "90107", "90067", "90070", "90038", "90130", "90052", "90123", "90091", "90139", "90133", "90109"}, rareDropTable = {},},	
	},
}

	