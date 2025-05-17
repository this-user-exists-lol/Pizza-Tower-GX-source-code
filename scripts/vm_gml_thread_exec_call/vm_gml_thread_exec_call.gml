function vm_gml_thread_exec_call()
{
	var l_fn, l_args1, l_argc;
	
	l_fn = argument[0];
	l_args1 = argument[1];
	l_argc = argument[2];
	
	switch (l_argc >> 3)
	{
	    case 0:
	        return vm_gml_thread_exec_call_fn0(l_fn, l_args1, l_argc);
	    
	    case 1:
	        return vm_gml_thread_exec_call_fn1(l_fn, l_args1, l_argc);
	    
	    case 2:
	        return vm_gml_thread_exec_call_fn2(l_fn, l_args1, l_argc);
	    
	    case 3:
	        return vm_gml_thread_exec_call_fn3(l_fn, l_args1, l_argc);
	    
	    case 4:
	        return vm_gml_thread_exec_call_fn4(l_fn, l_args1, l_argc);
	    
	    case 5:
	        return vm_gml_thread_exec_call_fn5(l_fn, l_args1, l_argc);
	    
	    case 6:
	        return vm_gml_thread_exec_call_fn6(l_fn, l_args1, l_argc);
	    
	    case 7:
	        return vm_gml_thread_exec_call_fn7(l_fn, l_args1, l_argc);
	    
	    case 8:
	        return vm_gml_thread_exec_call_fn8(l_fn, l_args1, l_argc);
	    
	    case 9:
	        return vm_gml_thread_exec_call_fn9(l_fn, l_args1, l_argc);
	    
	    case 10:
	        return vm_gml_thread_exec_call_fn10(l_fn, l_args1, l_argc);
	    
	    case 11:
	        return vm_gml_thread_exec_call_fn11(l_fn, l_args1, l_argc);
	    
	    case 12:
	        return vm_gml_thread_exec_call_fn12(l_fn, l_args1, l_argc);
	    
	    case 13:
	        return vm_gml_thread_exec_call_fn13(l_fn, l_args1, l_argc);
	    
	    case 14:
	        return vm_gml_thread_exec_call_fn14(l_fn, l_args1, l_argc);
	    
	    case 15:
	        return vm_gml_thread_exec_call_fn15(l_fn, l_args1, l_argc);
	    
	    case 16:
	        return vm_gml_thread_exec_call_fn16(l_fn, l_args1, l_argc);
	    
	    case 17:
	        return vm_gml_thread_exec_call_fn17(l_fn, l_args1, l_argc);
	    
	    case 18:
	        return vm_gml_thread_exec_call_fn18(l_fn, l_args1, l_argc);
	    
	    case 19:
	        return vm_gml_thread_exec_call_fn19(l_fn, l_args1, l_argc);
	    
	    case 20:
	        return vm_gml_thread_exec_call_fn20(l_fn, l_args1, l_argc);
	    
	    case 21:
	        return vm_gml_thread_exec_call_fn21(l_fn, l_args1, l_argc);
	    
	    case 22:
	        return vm_gml_thread_exec_call_fn22(l_fn, l_args1, l_argc);
	    
	    case 23:
	        return vm_gml_thread_exec_call_fn23(l_fn, l_args1, l_argc);
	    
	    case 24:
	        return vm_gml_thread_exec_call_fn24(l_fn, l_args1, l_argc);
	    
	    default:
	        gml_thread_error("Calls only support up to " + string(199) + " arguments for now.");
	        return undefined;
	}
}
