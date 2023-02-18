// code/modules/antagopnists/changeling/powers/

	// Lastly, make them not a ling anymore. (But leave their objectives for round-end purposes).
		var/list/copied_objectives = target_ling.objectives.Copy()
		target.mind.remove_antag_datum(/datum/antagonist/changeling)
		/// NON-MODULAR CHANGES: Advanced lings
		var/datum/antagonist/fallen_changeling/fallen = target.mind.add_antag_datum(/datum/antagonist/fallen_changeling)
		fallen.previous_changelingID = target_ling.changelingID
		fallen.changeling_who_robbed_us = WEAKREF(owner.mind)
		target.mind.remove_antag_datum(/datum/antagonist/changeling)
		// NON-MODULAR CHANGES END
		fallen.objectives = copied_objectives
