// code/modules/antagonists/malf_ai/

owner.special_role = job_rank
	if(give_objectives)
		forge_ai_objectives()

	// NON-MODULAR CHANGES: Malf AI
	if(finalize_antag)
		finalize_antag()
	// NON-MODULAR CHANGES END
