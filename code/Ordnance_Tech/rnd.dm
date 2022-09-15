// talestation_modules/code/modules/clothing/under/jobs/rnd.dm
/obj/item/clothing/under/rank/rnd/ordnance_tech
	desc = "It's made of a special fiber that provides minor protection against explosives and radiation. It has markings that denote the wearer as a Ordnance Technician."
	name = "ordnance technician's jumpsuit"
	icon = 'talestation_modules/icons/obj/clothing/under/rnd.dmi'
	worn_icon = 'talestation_modules/icons/mob/clothing/under/rnd.dmi'
	icon_state = "ordnance"
	inhand_icon_state = "w_suit"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0,ENERGY = 0, BOMB = 15, BIO = 0, FIRE = 50, ACID = 0)
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/rank/rnd/ordnance_tech/skirt
	name = "ordnance technician's jumpskirt"
	icon_state = "ordnance_skirt"
	inhand_icon_state = "w_suit"
	body_parts_covered = CHEST|GROIN|ARMS
	dying_key = DYE_REGISTRY_JUMPSKIRT
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
