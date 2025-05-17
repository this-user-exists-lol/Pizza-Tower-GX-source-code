function live_room_loader_run_cc()
{
	var l_ccPath, l_ccProgram, l_ccError, l_ccThread;
	
	l_ccPath = argument[1];
	l_ccProgram = gml_program_create([gml_source_create(l_ccPath, argument[0], l_ccPath)]);
	l_ccError = l_ccProgram[11];
	
	if (l_ccError == undefined)
	{
	    l_ccThread = gml_program_call_v(l_ccProgram, l_ccPath, array_create(0));
	    
	    if (l_ccThread[2] != 3)
	    {
	        l_ccError = l_ccThread[7];
	        
	        if (l_ccError == undefined)
	            l_ccError = l_ccPath + ": unknown execution error";
	    }
	}
	
	gml_program_destroy(l_ccProgram);
	
	if (l_ccError != undefined)
	    live_log(l_ccError);
}
