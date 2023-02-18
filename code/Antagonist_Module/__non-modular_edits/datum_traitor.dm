// /code/modules/antagonists/traitor/

	// NON-MODULAR CHANGES: ADV TRAITORS
/*
	if(give_uplink)
		owner.give_uplink(silent = TRUE, antag_datum = src)
	var/datum/component/uplink/uplink = owner.find_syndicate_uplink()
	uplink_ref = WEAKREF(uplink)
	if(uplink)
		if(uplink_handler)
			uplink.uplink_handler = uplink_handler
		else
			uplink_handler = uplink.uplink_handler
		uplink_handler.primary_objectives = objectives
		uplink_handler.has_progression = TRUE
		SStraitor.register_uplink_handler(uplink_handler)
		uplink_handler.has_objectives = TRUE
		uplink_handler.generate_objectives()
		if(uplink_handler.progression_points < SStraitor.current_global_progression)
			uplink_handler.progression_points = SStraitor.current_global_progression * SStraitor.newjoin_progression_coeff
		var/list/uplink_items = list()
		for(var/datum/uplink_item/item as anything in SStraitor.uplink_items)
			if(item.item && !item.cant_discount && (item.purchasable_from & uplink_handler.uplink_flag) && item.cost > 1)
				if(!length(item.restricted_roles) && !length(item.restricted_species))
					uplink_items += item
					continue
				if((uplink_handler.assigned_role in item.restricted_roles) || (uplink_handler.assigned_species in item.restricted_species))
					uplink_items += item
					continue
		uplink_handler.extra_purchasable += create_uplink_sales(uplink_sale_count, /datum/uplink_category/discounts, 1, uplink_items)
*/

	if(give_objectives)
		forge_traitor_objectives()

	if(finalize_antag)
		finalize_antag()
	// NON-MODULAR CHANGES END
