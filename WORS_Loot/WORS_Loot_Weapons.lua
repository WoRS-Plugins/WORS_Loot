-- WORS_Loot_Weapons.lua
WORS_Loot_Weapons_Data = {
	subcategoryOneText = "Select SubCat",
	subcategoryTwo = true,
	subcategoryTwoText = "Select SubSubcat",
	subTwoCat = {"Melee_Weapons", "Range_Weapons", "Magic_Weapons", "Meme_Weapons"},  -- Add 3rd dropdown list here  here	
	
	Melee_Weapons = {
		thirdSubCatList = {"Melee_Spec", "Dragon", "Rune", "Adamant", "Mithril", "Black", "Iron", "Bronze"},
		['Melee_Spec'] = {
		--normalDrops = {"Abyssal Whip", "Granite Maul", "Dragon Dagger", "Dragon Dagger(p+)", "Dragon Longsword", "Dragon Scimitar", "Dragon Battleaxe", "Dragon Mace"}, rareDropTable = {},},
		  normalDrops = {"52011", "52012", "50489", "53098", "50509", "52305", "50514", "50527"}, rareDropTable = {},},		
		
		['Dragon'] = {
		--normalDrops = {"Dragon Scimitar", "Dragon Longsword", "Dragon Dagger", "Dragon Dagger(p+)", "Dragon Battleaxe", "Dragon Mace"}, rareDropTable = {},},
		  normalDrops = {"52305", "50509", "50489", "53098", "50514", "50527"}, rareDropTable = {},},
		['Bronze'] = {
		--normalDrops = {"Bronze Scimitar", "Bronze 2h Sword", "Bronze Battle Axe", "Bronze Warhammer", "Bronze Longsword", "Bronze Sword", "Bronze Mace", "Bronze Axe", "Bronze Dagger"}, rareDropTable = {},},
		  normalDrops = {"90033", "90175", "90170", "90236", "90165", "90163", "90009", "90162"}, rareDropTable = {},},
		['Black'] = {
		--normalDrops = {"Black Scimitar", "Black 2h Sword", "Black BattleAxe", "Black Warhammer", "Black Longsword", "Black Sword", "Black Mace", "Black Axe", "Black Dagger"}, rareDropTable = {},},
		  normalDrops = {"50511", "50510", "50513", "50512", "50508", "50507", "50526", "90013", "50490"}, rareDropTable = {},},
		['Iron'] = {
		--normalDrops = {"Iron Scimitar", "Iron 2h Sword", "Iron BattleAxe", "Iron Warhammer", "Iron Longsword", "Iron Sword", "Iron Mace", "Iron Axe", "Iron Dagger"}, rareDropTable = {},},
		  normalDrops = {"90186", "90200", "90085", "90192", "90188", "90184", "90181", "90011", "90086"}, rareDropTable = {},},
		['Steel'] = {
		--normalDrops = {"Steel Scimitar", "Steel 2h Sword", "Steel BattleAxe", "Steel Warhammer", "Steel Longsword", "Steel Sword", "Steel Mace", "Steel Axe", "Steel Dagger"}, rareDropTable = {},},
		  normalDrops = {"90272", "90286", "90266", "90278", "90274", "90271", "90268", "90012", "90267"}, rareDropTable = {},},
		['Mithril'] = {
		--normalDrops = {"Mithril Scimitar", "Mithril 2h Sword", "Mithril BattleAxe", "Mithril Warhammer", "Mithril Longsword", "Mithril Sword", "Mithril Mace", "Mithril Axe", "Mithril Dagger"}, rareDropTable = {},},
		  normalDrops = {"90304", "90318", "90298", "90310", "90306", "90303", "90300", "90014", "90299"}, rareDropTable = {},},
		['Adamant'] = {
		--normalDrops = {"Adamant Scimitar", "Adamant 2h Sword", "Adamant BattleAxe", "Adamant Warhammer", "Adamant Longsword", "Adamant Sword", "Adamant Mace", "Adamant Axe", "Adamant Dagger"}, rareDropTable = {},},
		  normalDrops = {"90335", "90349", "90329", "90341", "90337", "90334", "90331", "90015", "90330"}, rareDropTable = {},},
		['Rune'] = {
		--normalDrops = {"Rune Scimitar", "Rune 2h Sword", "Rune BattleAxe", "Rune Warhammer", "Rune Longsword", "Rune Sword", "Rune Mace", "Rune Axe", "Rune Dagger"}, rareDropTable = {},},
		  normalDrops = {"90366", "90380", "90360", "90372", "90368", "90365", "90362", "90016", "90361"}, rareDropTable = {},},


	
	
	},	
	
	
	
	Range_Weapons = {
		thirdSubCatList = {"Bows", "Ammo"},
		['Bows'] = {
		--normalDrops = {"Magic Shortbow", "Magic Longbow", "Yew Shortbow", "Yew Longbow", "Maple Shortbow", "Maple Longbow", "Willow Shortbow", "Willow Longbow", "Oak Shortbow", "Oak Longbow", "Shortbow", "Longbow"}, rareDropTable = {},},
		  normalDrops = {"90658", "90659", "90656", "90657", "90654", "90655", "90652", "90653", "90650", "90651", "90648", "90649"}, rareDropTable = {},},
		['Ammo'] = {
		--normalDrops = {"Rune Arrows", "Adamant Arrows", "Mithril Arrows", "Steel Arrows", "Iron Arrows", "Blurite Arrows", "Bronze Arrows"}, rareDropTable = {},},
		  normalDrops = {"90390", "90359", "90328", "90296", "90257", "90633"}, rareDropTable = {},},		
		--['Crossbows'] = {
		--['Cannon'] = {
		--['Darts'] = {

	},
	
	Magic_Weapons = {
		thirdSubCatList = {"God Staffs", "Elemental staffs", "Battlestaffs", "Mystic Staffs", "Runes"},
		['God Staffs'] = {
		--normalDrops = {"Guthix staff", "Guthix cape", "Saradomin staff", "Saradomin cape", "Zamorak staff", "Zamorak cape"}, rareDropTable = {},},
		  normalDrops = {"50955", "50952", "50954", "50951", "50956", "50953"}, rareDropTable = {},},		['Elemental staffs'] = {
		--normalDrops = {"Staff of Air", "Staff of water", "Staff of earth", "staff of fire"}, rareDropTable = {},},
		  normalDrops = {"90838", "90837", "90839", "90836"}, rareDropTable = {},},
		['Battlestaffs'] = {
		--normalDrops = {"Air Battlestaff", "Water Battlestaff", "Earth Battlestaff", "Fire Battlestaff", "Dust Battlestaff", "Lava Battlestaff", "Mist Battlestaff", "Mud Battlestaff", "Smoke Battlestaff", "Steam Battlestaff"}, rareDropTable = {},},
		  normalDrops = {"90404", "90533", "90433", "90439", "51348"}, rareDropTable = {},},		['Mystic Staffs'] = {
		--normalDrops = {"Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff", "Mystic Staffs  staff"}, rareDropTable = {},},
		  normalDrops = {}, rareDropTable = {},},		
		['Runes'] = {
		--normalDrops = {"Air Rune", "Mind Rune", "Water Rune", "Earth Rune", "Fire Rune", "Body Rune", "Cosmic Rune", "Chaos Rune", "Astral Rune", "Nature Rune", "Law Rune", "Death Rune", "Wrath Rune"}, rareDropTable = {},},
		  normalDrops = {"90120", "90090", "90107", "90067", "90070", "90038", "90130", "90052", "90123", "90091", "90139", "90133", "90109"}, rareDropTable = {},},	
	},
	
	
	Meme_Weapons = {
		thirdSubCatList = {"Trees", "Axes"},
		['Trees'] = {
		--normalDrops = {"Logs", "Oak Logs", "Willow Logs", "Teak Logs", "Maple Logs", "Mahogany Logs", "Yew Logs", "Magic Logs", "Redwood Logs"}, rareDropTable = {},},
		  normalDrops = {"90000", "90001", "90002", "90008", "90003", "90007", "90004", "90005", "90006"}, rareDropTable = {},},
		['Axes'] = {
		--normalDrops = {"Dragon Axe", "Rune Axe", "Adamant Axe", "Mithril Axe", "Steel Axe", "Iron Axe", "Bronze Axe"}, rareDropTable = {},},
		  normalDrops = {"90017", "90016", "90015", "90014", "90012", "90011", "90009"}, rareDropTable = {},},	
	},

}

	