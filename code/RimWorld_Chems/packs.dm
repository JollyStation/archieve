// Original directory: talestation_modules/code/modules/cargo/packs.dm

/datum/supply_pack/goody/luciferium_bottle
	name = "Luciferium Bottle"
	desc = "Contains one bottle - twenty units - of Luciferium, an extremely dangerous medicine. Use with great caution."
	group = GROUP_DRUGS
	cost = PAYCHECK_COMMAND * 15
	contraband = TRUE
	contains = list(
		/obj/item/reagent_containers/cup/bottle/luciferium,
		)

/datum/supply_pack/medical/luciferium_bottles
	name = "Luciferium Shipment"
	desc = "Contains three bottles - sixty units - of Luciferium, an extremely dangerous drug that can cure the most absolute of medicinal issues, but cause permanent addiction. Requires CMO access to open."
	cost = CARGO_CRATE_VALUE * 30
	access = ACCESS_CMO
	contraband = TRUE
	crate_name = "luciferium Shipment"
	contains = list(
		/obj/item/reagent_containers/cup/bottle/luciferium,
		/obj/item/reagent_containers/cup/bottle/luciferium,
		/obj/item/reagent_containers/cup/bottle/luciferium,
		)

/datum/supply_pack/goody/go_juice_bottle
	name = "Go-Juice Bottle"
	desc = "Contains one bottle - twenty units - of Go-Juice, a potent but addictive combat stimulant."
	group = GROUP_DRUGS
	cost = PAYCHECK_COMMAND * 10
	contraband = TRUE
	contains = list(
		/obj/item/reagent_containers/cup/bottle/gojuice,
		)

/datum/supply_pack/medical/go_juice_bottles
	name = "Go-Juice Shipment"
	desc = "Contains three bottles - sixty units - of Go-Juice, a potent but addictive combat stimulant and pain suppressant. Requires armory access to open."
	cost = CARGO_CRATE_VALUE * 10
	contraband = TRUE
	access = ACCESS_ARMORY
	crate_name = "go-juice Shipment"
	contains = list(
		/obj/item/reagent_containers/cup/bottle/gojuice,
		/obj/item/reagent_containers/cup/bottle/gojuice,
		/obj/item/reagent_containers/cup/bottle/gojuice,
		)

/datum/supply_pack/medical/psychoids
	name = "Psychoid Variety Shipment"
	desc = "Contains three randomly selected containers of drugs made from the psychoid leaf - Yayo, Flake, or Psychite Tea - often used to reduce pain and raise moods. Requires medical access to open."
	cost = CARGO_CRATE_VALUE * 8
	access = ACCESS_MEDICAL
	crate_name = "psychoid shipment"
	contains = list(
		/obj/item/reagent_containers/cup/bottle/flake,
		/obj/item/reagent_containers/cup/bottle/yayo,
		/obj/item/reagent_containers/cup/glass/mug/psychite_tea,
		/obj/item/reagent_containers/cup/glass/mug/psychite_tea,
		)

/datum/supply_pack/medical/psychoids/fill(obj/structure/closet/crate/spawned_crate)
	for(var/i in 1 to 3)
		var/item = pick(contains)
		new item(spawned_crate)

/datum/supply_pack/goody/psychite_tea
	name = "Psychite Tea Order"
	desc = "Contains two mugs of Psychite Tea, a slightly addictive but mood boosting tea made from the distant psychoid leaf."
	group = GROUP_DRUGS
	cost = PAYCHECK_COMMAND * 8
	contains = list(
		/obj/item/reagent_containers/cup/glass/mug/psychite_tea,
		/obj/item/reagent_containers/cup/glass/mug/psychite_tea,
		)
