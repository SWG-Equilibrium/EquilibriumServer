blood_razor_guard = Creature:new {
	objectName = "@mob/creature_names:blood_razor_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 39,
	chanceHit = 0.42,
	damageMin = 345,
	damageMax = 400,
	baseXp = 3915,
	baseHAM = 8900,
	baseHAMmax = 10900,
	armor = 0,
	resists = {0,60,0,0,-1,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_blood_razor_pirate_guard_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_guard_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_guard_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_guard_rod_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3800000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 400000},
				{group = "power_crystals", chance = 400000},
				{group = "melee_unarmed", chance = 600000},
				{group = "melee_polearm", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "bloodrazor_common", chance = 2000000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "blood_razer_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pistoleermaster,pikemanmaster,tkamaster,brawlermaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(blood_razor_guard, "blood_razor_guard")
