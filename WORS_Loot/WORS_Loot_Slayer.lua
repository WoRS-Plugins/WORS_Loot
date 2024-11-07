-- WORS_Loot_Slayer.lua
WORS_Loot_Slayer_Data = {
	subcategoryOneText = "Select Master",
	subcategoryTwo = true,
	subcategoryTwoText = "Select Task",
	subTwoCat = {"Turael", "Mazchna", "Vannaka",},  -- Add masters here
		
    Mazchna = {
		thirdSubCatList = {"Lizards", "Cockatrice"},
		['Lizards'] = {
		--normalDrops = {"Big bones", "Desert lizard bone", "Iron ore", "Fire rune", "Coal", "Kebab", "Waterskin", "Nature rune", "Tin ore", "Potato seed", "Copper ore", "Silver ore", "Onion seed", "Grimy guam leaf", "Silver bar", "Grimy marrentill", "Cabbage seed", "Uncut sapphire", "Grimy tarromin", "Grimy harralander", "Mithril ore", "Grimy ranarr weed", "Tomato seed", "Uncut emerald", "Grimy irit leaf", "Grimy avantoe", "Sweetcorn seed", "Grimy kwuarm", "Uncut ruby", "Long bone", "Grimy cadantine", "Mystic gloves (light)", "Grimy lantadyme", "Grimy dwarf weed", "Strawberry seed", "Nature talisman", "Watermelon seed", "Uncut diamond", "Snape grass seed", "Loop half of key"},
		  normalDrops = {"90036", "90026", "90070", "90023", "90857", "90091", "90030", "90754", "90024", "90029", "90755", "90078", "90159", "90083", "90756", "90527", "90207", "90079", "90027", "90084", "90757", "90521", "90080", "90075", "90758", "90081", "90526", "90076", "90082", "90077", "90759", "90247", "90760", "90519", "90761", "91122"},
		  rareDropTable = {},
		},
		['Cockatrice'] = {
		--normalDrops = {"Bones", "Iron sword", "Steel dagger", "Iron boots", "Iron javelin", "Steel longsword", "Mystic boots (light)", "Law rune", "Nature rune", "Water rune", "Fire rune", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed", "Potato seed", "Onion seed", "Cabbage seed", "Tomato seed", "Sweetcorn seed", "Strawberry seed", "Watermelon seed", "Snape grass seed", "Limpwurt root", "Clue scroll (medium)", "Cockatrice head"},
		  normalDrops = {"90039", "90184", "90267", "90251", "90274", "90139", "90091", "90107", "90070", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077", "90754", "90755", "90756", "90757", "90758", "90759", "90760", "90761", "90616"},
		  rareDropTable = {},
		},    
	},
    Vannaka = {
		thirdSubCatList = {"Cockatrice"},
		['Cockatrice'] = {
		--normalDrops = {"Bones", "Iron sword", "Steel dagger", "Iron boots", "Iron javelin", "Steel longsword", "Mystic boots (light)", "Law rune", "Nature rune", "Water rune", "Fire rune", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed", "Potato seed", "Onion seed", "Cabbage seed", "Tomato seed", "Sweetcorn seed", "Strawberry seed", "Watermelon seed", "Snape grass seed", "Limpwurt root", "Clue scroll (medium)", "Cockatrice head"},
		  normalDrops = {"90039", "90184", "90267", "90251", "90274", "90139", "90091", "90107", "90070", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077", "90754", "90755", "90756", "90757", "90758", "90759", "90760", "90761", "90616"},
		  rareDropTable = {},
		},
    },
	Turael = {
		--thirdSubCatList = {"Birds: Chicken", "Goblins"},
		thirdSubCatList = {"Birds: Chicken", "Goblins", "Monkeys", "Rats", "Spiders", "Bats", "Cows", "Dwarves", "Minotaurs", "Scorpions", "Zombies", "Bears", "Ghosts", "Guard Dog", "Kalphite_Worker", "Skeleton", "Icefiends", "Wolves", "Crawling Hands", "Cave bugs", "Cave crawlers", "Banshee", "Cave slime", "Lizard"},
		['Birds: Chicken'] = {
		--normalDrops = {"Bones", "Raw chicken", "Feathers", "Clue scroll (beginner)", "Key (medium)"},
		  normalDrops = {"90039", "90097", "90069"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Goblins'] = {
		--normalDrops = {"Bones", "Hammer", "Water rune", "Goblin mail", "Bronze sq shield", "Body rune", "Earth rune", "Bronze bolts", "Chef's hat", "Bronze axe", "Bronze arrows", "Mind rune", "Beer", "Brass necklace", "Air talisman", "Clue scroll (easy)", "Bronze scimitar", "Chaos rune", "Nature rune", "Grapes", "Red cape", "Tin ore", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed", "Goblin champion scroll"},
		  normalDrops = {"90039", "90161", "90107", "90073", "90046", "90038", "90067", "90180", "90753", "90009", "90633", "90090", "90035", "90752", "90105", "90033", "90052", "90091", "90750", "90751", "90030", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Monkeys'] = {
		--normalDrops = {"Monkey bones", "Ensouled monkey head", "Monkey corpse", "Monkey paw"},
		  normalDrops = {"90725"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Rats'] = {
		--normalDrops = {"Bones", "Raw rat meat", "Looting bag", "Clue scroll (beginner)", "Giant rat bone", "Rat's tail"},
		  normalDrops = {"90039", "90206", "90895"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Spiders'] = {
		--normalDrops = {"Looting bag", "Clue scroll (beginner)"},
		  normalDrops = {},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Bats'] = {
		--normalDrops = {"Bat bones", "Looting bag", "Giant bat wing"},
		  normalDrops = {"90726"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Cows'] = {
		--normalDrops = {"Cowhide", "Raw beef", "Bones", "Clue scroll (beginner)"},
		  normalDrops = {"90065", "90096", "90039"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Dwarves'] = {
		--normalDrops = {"Bones", "Bronze pickaxe", "Hammer", "Bronze bolts", "Bronze bar", "Bronze bolts", "Bronze med helm", "Chaos rune", "Nature rune", "Iron ore", "Tin ore", "Copper ore", "Iron bar", "Bronze battleaxe", "Coal", "Clue scroll (beginner)", "Iron battleaxe"},
		  normalDrops = {"90039", "90044", "90161", "90180", "90153", "90180", "90043", "90052", "90091", "90026", "90030", "90024", "90155", "90171", "90023", "90085"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Minotaurs'] = {
		--normalDrops = {"Bones", "Coins", "Iron arrows", "Bronze spear", "Bronze full helm", "Copper ore", "Tin ore", "Pure essence", "Rune essence", "Bronze dagger", "Bronze arrows", "Cooked meat", "Right skull half", "Ensouled minotaur head", "Clue scroll (beginner)", "Mind rune", "Clue scroll (easy)", "Nothing", "Uncut sapphire", "Uncut emerald", "Uncut ruby", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  normalDrops = {"90039", "90257", "90045", "90168", "90024", "90030", "90258", "90162", "90633", "90142", "90090", "90527", "90521", "90526", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Scorpions'] = {
		--normalDrops = {"Looting bag", "Ensouled scorpion head", "Clue scroll (beginner)"},
		  normalDrops = {},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Zombies'] = {
		--normalDrops = {"Bones", "Bronze med helm", "Bronze longsword", "Iron axe", "Iron arrows", "Body rune", "Mind rune", "Air rune", "Iron arrows", "Steel arrows", "Nature rune", "Copper ore", "Fishing bait", "Zombie bone", "Zombie champion scroll", "Iron mace", "Iron dagger", "Bronze kiteshield", "Mithril arrows", "Chaos rune", "Cosmic rune", "Fire rune", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed"},
		  normalDrops = {"90039", "90043", "90236", "90011", "90257", "90038", "90090", "90120", "90257", "90296", "90091", "90024", "90034", "90181", "90086", "90173", "90328", "90052", "90130", "90070", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Bears'] = {
		--normalDrops = {"Bones", "Bear fur", "Raw bear meat"},
		  normalDrops = {"90039", "90832", "90821"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Ghosts'] = {
		--normalDrops = {"Looting bag", "Clue scroll (beginner)"},
		  normalDrops = {},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Guard Dog'] = {
		--normalDrops = {"Bones", "Ensouled dog head", "Key (medium)"},
		  normalDrops = {"90039"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Kalphite_Worker'] = {
		--normalDrops = {"Waterskin", "Iron sword", "Steel dagger", "Law rune", "Hard leather body", "Body rune", "Chaos rune", "Fire rune", "Water rune", "Nature rune", "Grimy guam leaf", "Grimy marrentill", "Iron javelin", "Steel longsword", "Cosmic rune", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Ensouled kalphite head"},
		  normalDrops = {"90184", "90267", "90139", "90453", "90038", "90052", "90070", "90107", "90091", "90078", "90083", "90274", "90130", "90207", "90079", "90084"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Skeleton'] = {
		--normalDrops = {"Bones", "Looting bag", "Larran's key", "Slayer's enchantment", "Iron dagger", "Iron med helm", "Grimy guam leaf", "Bronze bar", "Bronze arrows", "Iron sword", "Grimy marrentill", "Water rune", "Grimy tarromin", "Grimy harralander", "Iron arrows", "Air rune", "Earth rune", "Fire rune", "Chaos rune", "Fire talisman", "Iron axe", "Law rune", "Grimy ranarr weed", "Clue scroll (beginner)", "Grimy irit leaf", "Nature rune", "Steel arrows", "Coins", "Iron ore", "Grain", "Iron scimitar", "Cosmic rune", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed"},
		  normalDrops = {"90039", "90086", "90182", "90078", "90153", "90633", "90184", "90083", "90107", "90207", "90079", "90257", "90120", "90067", "90070", "90052", "90260", "90011", "90139", "90084", "90080", "90091", "90296", "90026", "90074", "90186", "90130", "90075", "90081", "90076", "90082", "90077"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Icefiends'] = {
		--normalDrops = {"Ecumenical key", "Frozen tear", "Looting bag", "Water rune", "Air rune", "Clue scroll (easy)"},
		  normalDrops = {"90107", "90120"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Wolves'] = {
		--normalDrops = {"Wolf bones", "Clue scroll (beginner)", "Wolf bone", "Looting bag"},
		  normalDrops = {"90724"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Crawling Hands'] = {
		--normalDrops = {"Bones", "Leather gloves", "Gold ring", "Purple gloves", "Yellow gloves", "Red gloves", "Teal gloves", "Sapphire ring", "Emerald ring"},
		  normalDrops = {"90039", "90463", "90445", "90495", "90437"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Cave bugs'] = {
		--normalDrops = {"Water rune", "Nature rune", "Earth rune", "Grimy guam leaf", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed", "Unicorn horn dust", "Eye of newt", "Red spiders' eggs", "Limpwurt root", "Snape grass", "Candle", "Tinderbox", "Empty candle lantern", "Fishing bait", "Tin ore", "Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman"},
		  normalDrops = {"90107", "90091", "90067", "90078", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077", "90625", "90610", "90621", "90616", "90632", "90020", "90034", "90030", "90527", "90521", "90526", "90242", "90247"},
		--rareDropTable = {},
		  rareDropTable = {},
		},
		['Cave crawlers'] = {
		--normalDrops = {"Bronze boots", "Nature rune", "Fire rune", "Earth rune", "Grimy guam leaf", "Grimy guam leaf", "Grimy marrentill", "Grimy tarromin", "Grimy harralander", "Grimy ranarr weed", "Grimy irit leaf", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Grimy lantadyme", "Grimy dwarf weed", "Unicorn horn dust", "Eye of newt", "Red spiders' eggs", "Limpwurt root", "Snape grass", "White berries", "Potato seed", "Onion seed", "Cabbage seed", "Tomato seed", "Sweetcorn seed", "Strawberry seed", "Watermelon seed", "Snape grass seed"},
		  normalDrops = {"90235", "90091", "90070", "90067", "90078", "90078", "90083", "90207", "90079", "90084", "90080", "90075", "90081", "90076", "90082", "90077", "90625", "90610", "90621", "90616", "90632", "90626", "90754", "90755", "90756", "90757", "90758", "90759", "90760", "90761"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Banshee'] = {
		--normalDrops = {"Pure essence", "Grimy guam leaf", "Grimy marrentill", "Fishing bait", "Grimy tarromin", "Grimy harralander", "Air rune", "Cosmic rune", "Grimy ranarr weed", "Grimy irit leaf", "Iron mace", "Iron dagger", "Grimy avantoe", "Grimy kwuarm", "Grimy cadantine", "Iron kiteshield", "Chaos rune", "Fire rune", "Iron ore", "Eye of newt", "Clue scroll (easy)", "Grimy lantadyme", "Grimy dwarf weed", "Mystic gloves (dark)"},
		  normalDrops = {"90258", "90078", "90083", "90034", "90207", "90079", "90120", "90130", "90084", "90080", "90181", "90086", "90075", "90081", "90076", "90194", "90052", "90070", "90026", "90610", "90082", "90077"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Cave slime'] = {
		--normalDrops = {"Swamp tar", "Unlit torch", "Iron sword", "Water rune", "Bronze axe", "Earth rune", "Iron kiteshield", "Gold bar", "Bronze full helm", "Iron boots", "Oil lantern frame", "Clue scroll (easy)"},
		  normalDrops = {"90844", "90184", "90107", "90009", "90067", "90194", "90160", "90168", "90251"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
		['Lizard'] = {
		--normalDrops = {"Big bones", "Desert lizard bone", "Iron ore", "Fire rune", "Coal", "Kebab", "Waterskin", "Nature rune", "Tin ore", "Potato seed", "Copper ore", "Silver ore", "Onion seed", "Grimy guam leaf", "Silver bar", "Grimy marrentill", "Cabbage seed", "Grimy tarromin", "Grimy harralander", "Mithril ore", "Grimy ranarr weed", "Tomato seed", "Grimy irit leaf", "Grimy avantoe", "Sweetcorn seed", "Grimy kwuarm", "Long bone", "Grimy cadantine", "Mystic gloves (light)", "Grimy lantadyme", "Grimy dwarf weed", "Strawberry seed", "Watermelon seed", "Snape grass seed"},
		  normalDrops = {"90036", "90026", "90070", "90023", "90857", "90091", "90030", "90754", "90024", "90029", "90755", "90078", "90159", "90083", "90756", "90207", "90079", "90027", "90084", "90757", "90080", "90075", "90758", "90081", "90076", "90082", "90077", "90759", "90760", "90761"},
		--rareDropTable = {"Uncut sapphire", "Uncut emerald", "Uncut ruby", "Chaos talisman", "Nature talisman", "Uncut diamond", "Loop half of key", "Tooth half of key", "Rune javelin", "Rune spear", "Shield left half", "Dragon spear"},
		  rareDropTable = {"90527", "90521", "90526", "90242", "90247", "90519", "91122", "91121", "90381", "91125", "59606"},
		},
	
	},
}

	