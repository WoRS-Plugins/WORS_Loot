-- WORS_Loot_Armour.lua
WORS_Loot_Armour_Data = {
	subcategoryOneText = "Select Subcat",
	subcategoryTwo = true,
	subcategoryTwoText = "Select SubSubcat",
	subTwoCat = {"BIS_Armour", "Melee_Armour", "Range_Armour", "Magic_Armour"},  -- Add 3rd dropdown list here  here	

	BIS_Armour = {
		thirdSubCatList = {"Trees", "Axes"},
		['Trees'] = {
		--normalDrops = {"Logs", "Oak Logs", "Willow Logs", "Teak Logs", "Maple Logs", "Mahogany Logs", "Yew Logs", "Magic Logs", "Redwood Logs"}, rareDropTable = {},},
		  normalDrops = {"90000", "90001", "90002", "90008", "90003", "90007", "90004", "90005", "90006"}, rareDropTable = {},},
		['Axes'] = {
		--normalDrops = {"Dragon Axe", "Rune Axe", "Adamant Axe", "Mithril Axe", "Steel Axe", "Iron Axe", "Bronze Axe"}, rareDropTable = {},},
		  normalDrops = {"90017", "90016", "90015", "90014", "90012", "90011", "90009"}, rareDropTable = {},},	
	},

	
	Melee_Armour = {
		thirdSubCatList = {"Dragon", "Rune", "Adamant", "Mithril", "Black", "Iron", "Bronze"},
		['Dragon'] = {
		--normalDrops = {"Dragon med helm", "Dragon chainbody", "Dragon platelegs", "Dragon plateskirt", "Dragon Sq shield", "Dragon defender", "Dragon boots"}, rareDropTable = {},},
		  normalDrops = {"91119", "50989", "51982", "52304", "50487", "67558", "57167"}, rareDropTable = {},},		
		['Bronze'] = {
		--normalDrops = {"Bronze Full Helm", "Bronze Med Helm", "Bronze Platebody", "Bronze Chainbody", "Bronze Platelegs", "Bronze Plateskirt", "Bronze Kiteshield", "Bronze Sq Shield", "Bronze Boots"}, rareDropTable = {},},
		  normalDrops = {"90168", "90043", "90178", "90172", "90176", "90177", "90173", "90046", "90235"}, rareDropTable = {},},
		['Black'] = {
		--normalDrops = {"Black Full Helm", "Black Med Helm", "Black Platebody", "Black Chainbody", "Black Platelegs", "Black Plateskirt", "Black Kiteshield", "Black Sq Shield", "Black Boots"}, rareDropTable = {},},
		  normalDrops = {}, rareDropTable = {},},
		['Iron'] = {
		--normalDrops = {"Iron Full Helm", "Iron Med Helm", "Iron Platebody", "Iron Chainbody", "Iron Platelegs", "Iron Plateskirt", "Iron Kiteshield", "Iron Sq Shield", "Iron Boots"}, rareDropTable = {},},
		  normalDrops = {"90189", "90182", "90198", "90193", "90197", "90196", "90194", "90191", "90251"}, rareDropTable = {},},
		['Steel'] = {
		--normalDrops = {"Steel Full Helm", "Steel Med Helm", "Steel Platebody", "Steel Chainbody", "Steel Platelegs", "Steel Plateskirt", "Steel Kiteshield", "Steel Sq Shield", "Steel Boots"}, rareDropTable = {},},
		  normalDrops = {"90275", "90269", "90284", "90279", "90283", "90282", "90280", "90277", "90290"}, rareDropTable = {},},
		['Mithril'] = {
		--normalDrops = {"Mithril Full Helm", "Mithril Med Helm", "Mithril Platebody", "Mithril Chainbody", "Mithril Platelegs", "Mithril Plateskirt", "Mithril Kiteshield", "Mithril Sq Shield", "Mithril Boots"}, rareDropTable = {},},
		  normalDrops = {"90307", "90301", "90316", "90311", "90315", "90314", "90312", "90309", "90322"}, rareDropTable = {},},
		['Adamant'] = {
		--normalDrops = {"Adamant Full Helm", "Adamant Med Helm", "Adamant Platebody", "Adamant Chainbody", "Adamant Platelegs", "Adamant Plateskirt", "Adamant Kiteshield", "Adamant Sq Shield", "Adamant Boots"}, rareDropTable = {},},
		  normalDrops = {"90338", "90332", "90347", "90342", "90346", "90345", "90343", "90340", "90353"}, rareDropTable = {},},
		['Rune'] = {
		--normalDrops = {"Rune Full Helm", "Rune Med Helm", "Rune Platebody", "Rune Chainbody", "Rune Platelegs", "Rune Plateskirt", "Rune Kiteshield", "Rune Sq Shield", "Rune Boots"}, rareDropTable = {},},
		  normalDrops = {"90369", "90363", "90378", "90373", "90377", "90376", "90374", "90371", "90384"}, rareDropTable = {},},	
	},
	Range_Armour = {
		thirdSubCatList = {"Black d'Hide", "Red d'Hide", "Green d'Hide", "Snakeskin", "Studded Leather", "Hard Leather", "Leather"},
		["Black d'Hide"] = {
		--normalDrops = {"Black d'hide Body", "Black d'hide Chaps", "Black d'hide Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90408", "90409", "90413"}, rareDropTable = {},},
		["Red d'Hide"] = {
		--normalDrops = {"Red d'hide Body", "Red d'hide Chaps", "Red d'hide Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90479", "90480", "90485"}, rareDropTable = {},},
		["Blue d'Hide"] = {
		--normalDrops = {"Blue d'hide Body", "Blue d'hide Chaps", "Blue d'hide Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90414", "90415", "90418"}, rareDropTable = {},},
		["Green d'Hide"] = {
		--normalDrops = {"Green d'hide Body", "Green d'hide Chaps", "Green d'hide Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90446", "90447", "90451"}, rareDropTable = {},},
		['Snakeskin'] = {
		--normalDrops = {"Snakeskin Coif", "Snakeskin Body", "Snakeskin Chaps", "Snakeskin Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90500", "90502", "90504"}, rareDropTable = {},},
		['Studded Leather'] = {
		--normalDrops = {"Studded Coif", "Studded Body", "Studded Chaps", "Studded Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90511", "90512"}, rareDropTable = {},},
		['Hard Leather'] = {
		--normalDrops = {"Hard Leather Coif", "Hard Leather Body", "Hard Leather Chaps", "Hard Leather Vambraces"}, rareDropTable = {},},
		  normalDrops = {"90453"}, rareDropTable = {},},
		['Leather'] = {
		--normalDrops = {"Coif", "Leather Body", "Leather Chaps", "Leather Vambraces", "Leather Cowl"}, rareDropTable = {},},
		  normalDrops = {"90421", "90460", "90461", "90464", "90462"}, rareDropTable = {},},	
	
	
	},
	Magic_Armour = {
		thirdSubCatList = {"Runes"},
		['Runes'] = {
		--normalDrops = {"Air Rune", "Mind Rune", "Water Rune", "Earth Rune", "Fire Rune", "Body Rune", "Cosmic Rune", "Chaos Rune", "Astral Rune", "Nature Rune", "Law Rune", "Death Rune", "Wrath Rune"}, rareDropTable = {},},
		  normalDrops = {"90120", "90090", "90107", "90067", "90070", "90038", "90130", "90052", "90123", "90091", "90139", "90133", "90109"}, rareDropTable = {},},	
	},
}

	