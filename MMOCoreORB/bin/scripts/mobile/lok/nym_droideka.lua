nym_droideka = Creature:new {
	objectName = "@mob/creature_names:nym_droideka_strong",
	socialGroup = "nym",
	faction = "nym",
	mobType = MOB_DROID,
	level = 45,
	chanceHit = 0.47,
	damageMin = 360,
	damageMax = 430,
	baseXp = 4461,
	baseHAM = 9900,
	baseHAMmax = 12100,
	armor = 1,
	resists = {135,135,0,0,0,-1,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_uncommon", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "nyms_rare", chance = 500000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			}
		}
	},
	defaultAttack = "attack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(nym_droideka, "nym_droideka")
