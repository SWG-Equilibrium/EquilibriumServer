theme_park_smc_rancor_pygmy_maufel = Creature:new {
	objectName = "",
	customName = "Mau'fel",
	socialGroup = "rancor",
	faction = "mtn_clan",
	mobType = MOB_CARNIVORE,
	level = 50,
	chanceHit = 0.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 4370,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {130,130,-1,160,160,160,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 553,
	boneType = "bone_mammal",
	boneAmount = 453,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	scale = 0.2,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"stunattack",""}, {"intimidationattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(theme_park_smc_rancor_pygmy_maufel, "theme_park_smc_rancor_pygmy_maufel")
