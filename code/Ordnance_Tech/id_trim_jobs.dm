// talestation_modules/code/datums/id_trim/jobs.dm
// ordnance technician
/datum/id_trim/job/ordnance_tech
	assignment = "Ordnance Technician"
	trim_icon = 'talestation_modules/icons/obj/card.dmi'
	trim_state = "trim_ordnance_tech"
	sechud_icon = 'talestation_modules/icons/mob/huds/hud.dmi'
	sechud_icon_state = "hudordnancetechnician"
	extra_access = list(ACCESS_GENETICS, ACCESS_ROBOTICS, ACCESS_XENOBIOLOGY, ACCESS_XENOBOTANY)
	minimal_access = list(ACCESS_MECH_SCIENCE, ACCESS_MINERAL_STOREROOM, ACCESS_ORDNANCE, ACCESS_ORDNANCE_STORAGE,
					ACCESS_RESEARCH, ACCESS_SCIENCE)
	template_access = list(ACCESS_CAPTAIN, ACCESS_RD, ACCESS_CHANGE_IDS)
	job = /datum/job/scientist/ordnance_tech
