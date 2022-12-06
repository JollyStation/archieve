// -- Hydroponics tray additions --
#define TRAY_MODIFIED_BASE_NUTRIDRAIN 0.5

/obj/machinery/hydroponics/constructable
	// Nutriment drain is halved so they can not worry about fertilizer as much
	nutridrain = TRAY_MODIFIED_BASE_NUTRIDRAIN

/obj/machinery/hydroponics/set_self_sustaining(new_value)
	var/old_self_sustaining = self_sustaining
	. = ..()
	if(self_sustaining != old_self_sustaining)
		if(self_sustaining)
			nutridrain /= 2
		else
			nutridrain *= 2

#undef TRAY_MODIFIED_BASE_NUTRIDRAIN
