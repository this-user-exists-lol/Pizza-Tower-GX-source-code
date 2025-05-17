function gml_node_equals()
{
	var l_a, l_b, l__g, l__g3, l_b_ctr, l__g8, l__g209, l_b_node, l__g39, l_b_not, l_b_val, l__g2, l__g30, l_b_inc1, l__g27, l_b_args5, l__g7, l__g82, l_b_inc7, l_b_i8, l__g28, l_b_args6, l_b_s1, l__g29, l_b_inc, l__g96, l_b_inc10, l_b_i17, l__g33, l_b_o, l__g34, l_b_b, l_b_a, l__g35, l_b_b1, l_b_a1, l__g36, l__g204, l_b_not2, l_b_then1, l__g210, l_b_cond3, l__g40, l__g41, l_b_val1, l__g42, l_b_val2, l_b_op, l__g43, l__g44, l_b_val3, l__g45, l_b_val4, l_b_op1, l__g46, l_b_fd1, l__g47, l_b_val5, l_b_fd2, l__g26, l_b_args4, l_b_prop, l__g25, l_b_args3, l__g24, l_b_args2, l_b_script, l__g6, l__g23, l_b_args1, l__g22, l_b_args, l__g57, l_b_val10, l_b_op5, l_b_k2, l__g1, l_b_src, l__g56, l_b_val9, l_b_k1, l__g58, l_b_i, l__g59, l_b_v4, l_b_i1, l__g60, l_b_v5, l_b_op6, l_b_i2, l__g62, l_b_id16, l__g63, l_b_v6, l_b_id17, l__g64, l_b_v7, l_b_o3, l_b_id18, l__g66, l_b_inc2, l_b_i3, l__g67, l_b_inc3, l_b_i4, l__g69, l_b_i21, l_b_i11, l__g70, l_b_v8, l_b_i22, l_b_i12, l__g73, l_b_v9, l_b_o4, l_b_i23, l_b_i13, l__g74, l_b_inc4, l_b_k3, l_b_i5, l__g75, l_b_inc5, l_b_k4, l_b_i6, l__g76, l_b_id19, l__g78, l_b_v10, l_b_id20, l__g80, l_b_v11, l_b_o5, l_b_id21, l__g81, l_b_inc6, l_b_i7, l__g55, l_b_k, l__g84, l_b_i24, l_b_i14, l__g87, l_b_v12, l_b_i25, l_b_i15, l__g88, l_b_v13, l_b_o6, l_b_i26, l_b_i16, l__g90, l_b_inc8, l_b_k5, l_b_i9, l__g91, l_b_inc9, l_b_k6, l_b_i10, l__g92, l_b_id22, l__g94, l_b_v14, l_b_id23, l__g95, l_b_v15, l_b_o7, l_b_id24, l__g54, l_b_v3, l_b_op4, l_b_fd6, l__g21, l__g98, l_b_inc11, l_b_i18, l__g99, l_b_id25, l__g100, l_b_v16, l_b_id26, l__g102, l_b_v17, l_b_o8, l_b_id27, l__g103, l_b_inc12, l_b_i19, l__g104, l_b_inc13, l_b_i20, l__g106, l_b_i27, l_b_i110, l__g107, l_b_v18, l_b_i28, l_b_i111, l__g108, l_b_v19, l_b_o9, l_b_i29, l_b_i112, l__g109, l_b_inc14, l_b_k7, l_b_i30, l__g198, l_b_inc15, l_b_k8, l_b_i31, l_a_value2, l__g200, l_b_value2, l__g201, l_a_not1, l__g203, l_b_not1, l_b_then, l__g37, l__g206, l__g53, l_b_v2, l_b_fd5, l__g52, l_b_fd4, l__g225, l_b_pl, l_b_x43, l__g211, l_b_cond4, l__g213, l_b_node3, l__g214, l_b_loop, l_b_post, l_b_cond5, l__g215, l_b_node4, l__g216, l__g218, l__g51, l_b_val8, l_b_op3, l__g20, l__g50, l_b_val7, l__g49, l__g219, l__g220, l_b_x40, l__g221, l_b_s4, l__g222, l_b_x42, l__g224, l__g226, l_b_pl1, l_b_s8, l__g48, l_b_val6, l_b_op2, l_b_fd3, l__g10, l__g4, l__g9, l_m1, l__g5, l_m2, l_k2, l_n, l_i, l_o1, l_m11, l__g205, l_o2, l_m21;
	
	l_a = argument[0];
	l_b = argument[1];
	
	if (l_a[0] != l_b[0])
	    return 0;
	
	l__g = l_a;
	
	switch (l__g[0])
	{
	    case 8:
	        return 1;
	    
	    case 10:
	        return 1;
	    
	    case 9:
	        return 1;
	    
	    case 105:
	        return 1;
	    
	    case 0:
	        return 1;
	    
	    case 94:
	        return 1;
	    
	    case 104:
	        return 1;
	    
	    case 16:
	        return 1;
	    
	    case 103:
	        return 1;
	    
	    case 106:
	        return 1;
	    
	    case 3:
	        l__g3 = l_b;
	        
	        if (l__g3[0] == 3)
	        {
	            l_b_ctr = l__g3[3];
	            return l__g[2] == l__g3[2] && l__g[3] == l_b_ctr;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 11:
	        l__g8 = l_b;
	        
	        if (l__g8[0] == 11)
	            return l__g[2] == l__g8[2];
	        else
	            return 0;
	    
	    case 95:
	        l__g209 = l_b;
	        
	        if (l__g209[0] == 95)
	        {
	            l_b_node = l__g209[3];
	            return gml_node_equals(l__g[2], l__g209[2]) && gml_node_equals(l__g[3], l_b_node);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 31:
	        l__g39 = l_b;
	        
	        if (l__g39[0] == 31)
	        {
	            l_b_not = l__g39[4];
	            l_b_val = l__g39[3];
	            return gml_node_equals(l__g[2], l__g39[2]) && gml_node_equals(l__g[3], l_b_val) && l__g[4] == l_b_not;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 2:
	        l__g2 = l_b;
	        
	        if (l__g2[0] == 2)
	            return l__g[2] == l__g2[2];
	        else
	            return 0;
	    
	    case 25:
	        l__g30 = l_b;
	        
	        if (l__g30[0] == 25)
	        {
	            l_b_inc1 = l__g30[3];
	            return gml_node_equals(l__g[2], l__g30[2]) && l__g[3] == l_b_inc1;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 22:
	        l__g27 = l_b;
	        
	        if (l__g27[0] == 22)
	        {
	            l_b_args5 = l__g27[3];
	            return l__g[2] == l__g27[2] && gml_node_equals_list(l__g[3], l_b_args5);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 7:
	        l__g7 = l_b;
	        
	        if (l__g7[0] == 7)
	            return l__g[2] == l__g7[2];
	        else
	            return 0;
	    
	    case 67:
	        l__g82 = l_b;
	        
	        if (l__g82[0] == 67)
	        {
	            l_b_inc7 = l__g82[4];
	            l_b_i8 = l__g82[3];
	            return gml_node_equals(l__g[2], l__g82[2]) && gml_node_equals(l__g[3], l_b_i8) && l__g[4] == l_b_inc7;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 23:
	        l__g28 = l_b;
	        
	        if (l__g28[0] == 23)
	        {
	            l_b_args6 = l__g28[4];
	            l_b_s1 = l__g28[3];
	            return gml_node_equals(l__g[2], l__g28[2]) && l__g[3] == l_b_s1 && gml_node_equals_list(l__g[4], l_b_args6);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 24:
	        l__g29 = l_b;
	        
	        if (l__g29[0] == 24)
	        {
	            l_b_inc = l__g29[3];
	            return gml_node_equals(l__g[2], l__g29[2]) && l__g[3] == l_b_inc;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 76:
	        l__g96 = l_b;
	        
	        if (l__g96[0] == 76)
	        {
	            l_b_inc10 = l__g96[4];
	            l_b_i17 = l__g96[3];
	            return gml_node_equals(l__g[2], l__g96[2]) && gml_node_equals(l__g[3], l_b_i17) && l__g[4] == l_b_inc10;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 26:
	        l__g33 = l_b;
	        
	        if (l__g33[0] == 26)
	        {
	            l_b_o = l__g33[3];
	            return gml_node_equals(l__g[2], l__g33[2]) && l__g[3] == l_b_o;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 27:
	        l__g34 = l_b;
	        
	        if (l__g34[0] == 27)
	        {
	            l_b_b = l__g34[4];
	            l_b_a = l__g34[3];
	            return l__g[2] == l__g34[2] && gml_node_equals(l__g[3], l_b_a) && gml_node_equals(l__g[4], l_b_b);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 28:
	        l__g35 = l_b;
	        
	        if (l__g35[0] == 28)
	        {
	            l_b_b1 = l__g35[4];
	            l_b_a1 = l__g35[3];
	            return l__g[2] == l__g35[2] && gml_node_equals(l__g[3], l_b_a1) && gml_node_equals(l__g[4], l_b_b1);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 29:
	        l__g36 = l_b;
	        
	        if (l__g36[0] == 29)
	            return gml_node_equals(l__g[2], l__g36[2]);
	        else
	            return 0;
	    
	    case 91:
	        l__g204 = l_b;
	        
	        if (l__g204[0] == 91)
	        {
	            l_b_not2 = l__g204[4];
	            l_b_then1 = l__g204[3];
	            return gml_node_equals(l__g[2], l__g204[2]) && gml_node_equals(l__g[3], l_b_then1) && gml_node_equals(l__g[4], l_b_not2);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 96:
	        l__g210 = l_b;
	        
	        if (l__g210[0] == 96)
	        {
	            l_b_cond3 = l__g210[3];
	            return gml_node_equals(l__g[2], l__g210[2]) && gml_node_equals(l__g[3], l_b_cond3);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 32:
	        l__g40 = l_b;
	        
	        if (l__g40[0] == 32)
	            return l__g[2] == l__g40[2];
	        else
	            return 0;
	    
	    case 33:
	        l__g41 = l_b;
	        
	        if (l__g41[0] == 33)
	        {
	            l_b_val1 = l__g41[3];
	            return l__g[2] == l__g41[2] && gml_node_equals(l__g[3], l_b_val1);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 34:
	        l__g42 = l_b;
	        
	        if (l__g42[0] == 34)
	        {
	            l_b_val2 = l__g42[4];
	            l_b_op = l__g42[3];
	            return l__g[2] == l__g42[2] && l__g[3] == l_b_op && gml_node_equals(l__g[4], l_b_val2);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 35:
	        l__g43 = l_b;
	        
	        if (l__g43[0] == 35)
	            return l__g[2] == l__g43[2];
	        else
	            return 0;
	    
	    case 36:
	        l__g44 = l_b;
	        
	        if (l__g44[0] == 36)
	        {
	            l_b_val3 = l__g44[3];
	            return l__g[2] == l__g44[2] && gml_node_equals(l__g[3], l_b_val3);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 37:
	        l__g45 = l_b;
	        
	        if (l__g45[0] == 37)
	        {
	            l_b_val4 = l__g45[4];
	            l_b_op1 = l__g45[3];
	            return l__g[2] == l__g45[2] && l__g[3] == l_b_op1 && gml_node_equals(l__g[4], l_b_val4);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 38:
	        l__g46 = l_b;
	        
	        if (l__g46[0] == 38)
	        {
	            l_b_fd1 = l__g46[3];
	            return gml_node_equals(l__g[2], l__g46[2]) && l__g[3] == l_b_fd1;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 39:
	        l__g47 = l_b;
	        
	        if (l__g47[0] == 39)
	        {
	            l_b_val5 = l__g47[4];
	            l_b_fd2 = l__g47[3];
	            return gml_node_equals(l__g[2], l__g47[2]) && l__g[3] == l_b_fd2 && gml_node_equals(l__g[4], l_b_val5);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 21:
	        l__g26 = l_b;
	        
	        if (l__g26[0] == 21)
	        {
	            l_b_args4 = l__g26[4];
	            l_b_prop = l__g26[3];
	            return gml_node_equals(l__g[2], l__g26[2]) && l__g[3] == l_b_prop && gml_node_equals_list(l__g[4], l_b_args4);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 20:
	        l__g25 = l_b;
	        
	        if (l__g25[0] == 20)
	        {
	            l_b_args3 = l__g25[3];
	            return gml_node_equals(l__g[2], l__g25[2]) && gml_node_equals_list(l__g[3], l_b_args3);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 19:
	        l__g24 = l_b;
	        
	        if (l__g24[0] == 19)
	        {
	            l_b_args2 = l__g24[4];
	            l_b_script = l__g24[3];
	            return gml_node_equals(l__g[2], l__g24[2]) && l__g[3] == l_b_script && gml_node_equals_list(l__g[4], l_b_args2);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 6:
	        l__g6 = l_b;
	        
	        if (l__g6[0] == 6)
	            return gml_node_equals(l__g[2], l__g6[2]);
	        else
	            return 0;
	    
	    case 18:
	        l__g23 = l_b;
	        
	        if (l__g23[0] == 18)
	        {
	            l_b_args1 = l__g23[3];
	            return l__g[2] == l__g23[2] && gml_node_equals_list(l__g[3], l_b_args1);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 17:
	        l__g22 = l_b;
	        
	        if (l__g22[0] == 17)
	        {
	            l_b_args = l__g22[3];
	            return gml_node_equals(l__g[2], l__g22[2]) && gml_node_equals_list(l__g[3], l_b_args);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 49:
	        l__g57 = l_b;
	        
	        if (l__g57[0] == 49)
	        {
	            l_b_val10 = l__g57[5];
	            l_b_op5 = l__g57[4];
	            l_b_k2 = l__g57[3];
	            return l__g[2] == l__g57[2] && gml_node_equals(l__g[3], l_b_k2) && l__g[4] == l_b_op5 && gml_node_equals(l__g[5], l_b_val10);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 1:
	        l__g1 = l_b;
	        
	        if (l__g1[0] == 1)
	        {
	            l_b_src = l__g1[3];
	            return l__g[2] == l__g1[2] && l__g[3] == l_b_src;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 48:
	        l__g56 = l_b;
	        
	        if (l__g56[0] == 48)
	        {
	            l_b_val9 = l__g56[4];
	            l_b_k1 = l__g56[3];
	            return l__g[2] == l__g56[2] && gml_node_equals(l__g[3], l_b_k1) && gml_node_equals(l__g[4], l_b_val9);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 50:
	        l__g58 = l_b;
	        
	        if (l__g58[0] == 50)
	        {
	            l_b_i = l__g58[3];
	            return gml_node_equals(l__g[2], l__g58[2]) && gml_node_equals(l__g[3], l_b_i);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 51:
	        l__g59 = l_b;
	        
	        if (l__g59[0] == 51)
	        {
	            l_b_v4 = l__g59[4];
	            l_b_i1 = l__g59[3];
	            return gml_node_equals(l__g[2], l__g59[2]) && gml_node_equals(l__g[3], l_b_i1) && gml_node_equals(l__g[4], l_b_v4);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 52:
	        l__g60 = l_b;
	        
	        if (l__g60[0] == 52)
	        {
	            l_b_v5 = l__g60[5];
	            l_b_op6 = l__g60[4];
	            l_b_i2 = l__g60[3];
	            return gml_node_equals(l__g[2], l__g60[2]) && gml_node_equals(l__g[3], l_b_i2) && l__g[4] == l_b_op6 && gml_node_equals(l__g[5], l_b_v5);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 53:
	        l__g62 = l_b;
	        
	        if (l__g62[0] == 53)
	        {
	            l_b_id16 = l__g62[3];
	            return gml_node_equals(l__g[2], l__g62[2]) && gml_node_equals(l__g[3], l_b_id16);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 54:
	        l__g63 = l_b;
	        
	        if (l__g63[0] == 54)
	        {
	            l_b_v6 = l__g63[4];
	            l_b_id17 = l__g63[3];
	            return gml_node_equals(l__g[2], l__g63[2]) && gml_node_equals(l__g[3], l_b_id17) && gml_node_equals(l__g[4], l_b_v6);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 55:
	        l__g64 = l_b;
	        
	        if (l__g64[0] == 55)
	        {
	            l_b_v7 = l__g64[5];
	            l_b_o3 = l__g64[4];
	            l_b_id18 = l__g64[3];
	            return gml_node_equals(l__g[2], l__g64[2]) && gml_node_equals(l__g[3], l_b_id18) && l__g[4] == l_b_o3 && gml_node_equals(l__g[5], l_b_v7);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 56:
	        l__g66 = l_b;
	        
	        if (l__g66[0] == 56)
	        {
	            l_b_inc2 = l__g66[4];
	            l_b_i3 = l__g66[3];
	            return gml_node_equals(l__g[2], l__g66[2]) && gml_node_equals(l__g[3], l_b_i3) && l__g[4] == l_b_inc2;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 57:
	        l__g67 = l_b;
	        
	        if (l__g67[0] == 57)
	        {
	            l_b_inc3 = l__g67[4];
	            l_b_i4 = l__g67[3];
	            return gml_node_equals(l__g[2], l__g67[2]) && gml_node_equals(l__g[3], l_b_i4) && l__g[4] == l_b_inc3;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 58:
	        l__g69 = l_b;
	        
	        if (l__g69[0] == 58)
	        {
	            l_b_i21 = l__g69[4];
	            l_b_i11 = l__g69[3];
	            return gml_node_equals(l__g[2], l__g69[2]) && gml_node_equals(l__g[3], l_b_i11) && gml_node_equals(l__g[4], l_b_i21);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 59:
	        l__g70 = l_b;
	        
	        if (l__g70[0] == 59)
	        {
	            l_b_v8 = l__g70[5];
	            l_b_i22 = l__g70[4];
	            l_b_i12 = l__g70[3];
	            return gml_node_equals(l__g[2], l__g70[2]) && gml_node_equals(l__g[3], l_b_i12) && gml_node_equals(l__g[4], l_b_i22) && gml_node_equals(l__g[5], l_b_v8);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 60:
	        l__g73 = l_b;
	        
	        if (l__g73[0] == 60)
	        {
	            l_b_v9 = l__g73[6];
	            l_b_o4 = l__g73[5];
	            l_b_i23 = l__g73[4];
	            l_b_i13 = l__g73[3];
	            return gml_node_equals(l__g[2], l__g73[2]) && gml_node_equals(l__g[3], l_b_i13) && gml_node_equals(l__g[4], l_b_i23) && l__g[5] == l_b_o4 && gml_node_equals(l__g[6], l_b_v9);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 61:
	        l__g74 = l_b;
	        
	        if (l__g74[0] == 61)
	        {
	            l_b_inc4 = l__g74[5];
	            l_b_k3 = l__g74[4];
	            l_b_i5 = l__g74[3];
	            return gml_node_equals(l__g[2], l__g74[2]) && gml_node_equals(l__g[3], l_b_i5) && gml_node_equals(l__g[4], l_b_k3) && l__g[5] == l_b_inc4;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 62:
	        l__g75 = l_b;
	        
	        if (l__g75[0] == 62)
	        {
	            l_b_inc5 = l__g75[5];
	            l_b_k4 = l__g75[4];
	            l_b_i6 = l__g75[3];
	            return gml_node_equals(l__g[2], l__g75[2]) && gml_node_equals(l__g[3], l_b_i6) && gml_node_equals(l__g[4], l_b_k4) && l__g[5] == l_b_inc5;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 63:
	        l__g76 = l_b;
	        
	        if (l__g76[0] == 63)
	        {
	            l_b_id19 = l__g76[3];
	            return gml_node_equals(l__g[2], l__g76[2]) && gml_node_equals(l__g[3], l_b_id19);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 64:
	        l__g78 = l_b;
	        
	        if (l__g78[0] == 64)
	        {
	            l_b_v10 = l__g78[4];
	            l_b_id20 = l__g78[3];
	            return gml_node_equals(l__g[2], l__g78[2]) && gml_node_equals(l__g[3], l_b_id20) && gml_node_equals(l__g[4], l_b_v10);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 65:
	        l__g80 = l_b;
	        
	        if (l__g80[0] == 65)
	        {
	            l_b_v11 = l__g80[5];
	            l_b_o5 = l__g80[4];
	            l_b_id21 = l__g80[3];
	            return gml_node_equals(l__g[2], l__g80[2]) && gml_node_equals(l__g[3], l_b_id21) && l__g[4] == l_b_o5 && gml_node_equals(l__g[5], l_b_v11);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 66:
	        l__g81 = l_b;
	        
	        if (l__g81[0] == 66)
	        {
	            l_b_inc6 = l__g81[4];
	            l_b_i7 = l__g81[3];
	            return gml_node_equals(l__g[2], l__g81[2]) && gml_node_equals(l__g[3], l_b_i7) && l__g[4] == l_b_inc6;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 47:
	        l__g55 = l_b;
	        
	        if (l__g55[0] == 47)
	        {
	            l_b_k = l__g55[3];
	            return l__g[2] == l__g55[2] && gml_node_equals(l__g[3], l_b_k);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 68:
	        l__g84 = l_b;
	        
	        if (l__g84[0] == 68)
	        {
	            l_b_i24 = l__g84[4];
	            l_b_i14 = l__g84[3];
	            return gml_node_equals(l__g[2], l__g84[2]) && gml_node_equals(l__g[3], l_b_i14) && gml_node_equals(l__g[4], l_b_i24);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 69:
	        l__g87 = l_b;
	        
	        if (l__g87[0] == 69)
	        {
	            l_b_v12 = l__g87[5];
	            l_b_i25 = l__g87[4];
	            l_b_i15 = l__g87[3];
	            return gml_node_equals(l__g[2], l__g87[2]) && gml_node_equals(l__g[3], l_b_i15) && gml_node_equals(l__g[4], l_b_i25) && gml_node_equals(l__g[5], l_b_v12);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 70:
	        l__g88 = l_b;
	        
	        if (l__g88[0] == 70)
	        {
	            l_b_v13 = l__g88[6];
	            l_b_o6 = l__g88[5];
	            l_b_i26 = l__g88[4];
	            l_b_i16 = l__g88[3];
	            return gml_node_equals(l__g[2], l__g88[2]) && gml_node_equals(l__g[3], l_b_i16) && gml_node_equals(l__g[4], l_b_i26) && l__g[5] == l_b_o6 && gml_node_equals(l__g[6], l_b_v13);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 71:
	        l__g90 = l_b;
	        
	        if (l__g90[0] == 71)
	        {
	            l_b_inc8 = l__g90[5];
	            l_b_k5 = l__g90[4];
	            l_b_i9 = l__g90[3];
	            return gml_node_equals(l__g[2], l__g90[2]) && gml_node_equals(l__g[3], l_b_i9) && gml_node_equals(l__g[4], l_b_k5) && l__g[5] == l_b_inc8;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 72:
	        l__g91 = l_b;
	        
	        if (l__g91[0] == 72)
	        {
	            l_b_inc9 = l__g91[5];
	            l_b_k6 = l__g91[4];
	            l_b_i10 = l__g91[3];
	            return gml_node_equals(l__g[2], l__g91[2]) && gml_node_equals(l__g[3], l_b_i10) && gml_node_equals(l__g[4], l_b_k6) && l__g[5] == l_b_inc9;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 73:
	        l__g92 = l_b;
	        
	        if (l__g92[0] == 73)
	        {
	            l_b_id22 = l__g92[3];
	            return gml_node_equals(l__g[2], l__g92[2]) && gml_node_equals(l__g[3], l_b_id22);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 74:
	        l__g94 = l_b;
	        
	        if (l__g94[0] == 74)
	        {
	            l_b_v14 = l__g94[4];
	            l_b_id23 = l__g94[3];
	            return gml_node_equals(l__g[2], l__g94[2]) && gml_node_equals(l__g[3], l_b_id23) && gml_node_equals(l__g[4], l_b_v14);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 75:
	        l__g95 = l_b;
	        
	        if (l__g95[0] == 75)
	        {
	            l_b_v15 = l__g95[5];
	            l_b_o7 = l__g95[4];
	            l_b_id24 = l__g95[3];
	            return gml_node_equals(l__g[2], l__g95[2]) && gml_node_equals(l__g[3], l_b_id24) && l__g[4] == l_b_o7 && gml_node_equals(l__g[5], l_b_v15);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 46:
	        l__g54 = l_b;
	        
	        if (l__g54[0] == 46)
	        {
	            l_b_v3 = l__g54[5];
	            l_b_op4 = l__g54[4];
	            l_b_fd6 = l__g54[3];
	            return gml_node_equals(l__g[2], l__g54[2]) && l__g[3] == l_b_fd6 && l__g[4] == l_b_op4 && gml_node_equals(l__g[5], l_b_v3);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 15:
	        l__g21 = l_b;
	        
	        if (l__g21[0] == 15)
	            return gml_node_equals(l__g[2], l__g21[2]);
	        else
	            return 0;
	    
	    case 77:
	        l__g98 = l_b;
	        
	        if (l__g98[0] == 77)
	        {
	            l_b_inc11 = l__g98[4];
	            l_b_i18 = l__g98[3];
	            return gml_node_equals(l__g[2], l__g98[2]) && gml_node_equals(l__g[3], l_b_i18) && l__g[4] == l_b_inc11;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 78:
	        l__g99 = l_b;
	        
	        if (l__g99[0] == 78)
	        {
	            l_b_id25 = l__g99[3];
	            return gml_node_equals(l__g[2], l__g99[2]) && gml_node_equals(l__g[3], l_b_id25);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 79:
	        l__g100 = l_b;
	        
	        if (l__g100[0] == 79)
	        {
	            l_b_v16 = l__g100[4];
	            l_b_id26 = l__g100[3];
	            return gml_node_equals(l__g[2], l__g100[2]) && gml_node_equals(l__g[3], l_b_id26) && gml_node_equals(l__g[4], l_b_v16);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 80:
	        l__g102 = l_b;
	        
	        if (l__g102[0] == 80)
	        {
	            l_b_v17 = l__g102[5];
	            l_b_o8 = l__g102[4];
	            l_b_id27 = l__g102[3];
	            return gml_node_equals(l__g[2], l__g102[2]) && gml_node_equals(l__g[3], l_b_id27) && l__g[4] == l_b_o8 && gml_node_equals(l__g[5], l_b_v17);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 81:
	        l__g103 = l_b;
	        
	        if (l__g103[0] == 81)
	        {
	            l_b_inc12 = l__g103[4];
	            l_b_i19 = l__g103[3];
	            return gml_node_equals(l__g[2], l__g103[2]) && gml_node_equals(l__g[3], l_b_i19) && l__g[4] == l_b_inc12;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 82:
	        l__g104 = l_b;
	        
	        if (l__g104[0] == 82)
	        {
	            l_b_inc13 = l__g104[4];
	            l_b_i20 = l__g104[3];
	            return gml_node_equals(l__g[2], l__g104[2]) && gml_node_equals(l__g[3], l_b_i20) && l__g[4] == l_b_inc13;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 83:
	        l__g106 = l_b;
	        
	        if (l__g106[0] == 83)
	        {
	            l_b_i27 = l__g106[4];
	            l_b_i110 = l__g106[3];
	            return gml_node_equals(l__g[2], l__g106[2]) && gml_node_equals(l__g[3], l_b_i110) && gml_node_equals(l__g[4], l_b_i27);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 84:
	        l__g107 = l_b;
	        
	        if (l__g107[0] == 84)
	        {
	            l_b_v18 = l__g107[5];
	            l_b_i28 = l__g107[4];
	            l_b_i111 = l__g107[3];
	            return gml_node_equals(l__g[2], l__g107[2]) && gml_node_equals(l__g[3], l_b_i111) && gml_node_equals(l__g[4], l_b_i28) && gml_node_equals(l__g[5], l_b_v18);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 85:
	        l__g108 = l_b;
	        
	        if (l__g108[0] == 85)
	        {
	            l_b_v19 = l__g108[6];
	            l_b_o9 = l__g108[5];
	            l_b_i29 = l__g108[4];
	            l_b_i112 = l__g108[3];
	            return gml_node_equals(l__g[2], l__g108[2]) && gml_node_equals(l__g[3], l_b_i112) && gml_node_equals(l__g[4], l_b_i29) && l__g[5] == l_b_o9 && gml_node_equals(l__g[6], l_b_v19);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 86:
	        l__g109 = l_b;
	        
	        if (l__g109[0] == 86)
	        {
	            l_b_inc14 = l__g109[5];
	            l_b_k7 = l__g109[4];
	            l_b_i30 = l__g109[3];
	            return gml_node_equals(l__g[2], l__g109[2]) && gml_node_equals(l__g[3], l_b_i30) && gml_node_equals(l__g[4], l_b_k7) && l__g[5] == l_b_inc14;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 87:
	        l__g198 = l_b;
	        
	        if (l__g198[0] == 87)
	        {
	            l_b_inc15 = l__g198[5];
	            l_b_k8 = l__g198[4];
	            l_b_i31 = l__g198[3];
	            return gml_node_equals(l__g[2], l__g198[2]) && gml_node_equals(l__g[3], l_b_i31) && gml_node_equals(l__g[4], l_b_k8) && l__g[5] == l_b_inc15;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 88:
	        l_a_value2 = l__g[3];
	        l__g200 = l_b;
	        
	        if (l__g200[0] == 88)
	        {
	            l_b_value2 = l__g200[3];
	            
	            if (l__g[2] == l__g200[2])
	            {
	                if (l_a_value2 != undefined)
	                    return l_b_value2 != undefined && gml_node_equals(l_a_value2, l_b_value2);
	                else
	                    return l_b_value2 == undefined;
	            }
	            else
	            {
	                return 0;
	            }
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 89:
	        l__g201 = l_b;
	        
	        if (l__g201[0] == 89)
	            return gml_node_equals_list(l__g[2], l__g201[2]);
	        else
	            return 0;
	    
	    case 90:
	        l_a_not1 = l__g[4];
	        l__g203 = l_b;
	        
	        if (l__g203[0] == 90)
	        {
	            l_b_not1 = l__g203[4];
	            l_b_then = l__g203[3];
	            
	            if (gml_node_equals(l__g[2], l__g203[2]) && gml_node_equals(l__g[3], l_b_then))
	            {
	                if (l_a_not1 != undefined)
	                    return l_b_not1 != undefined && gml_node_equals(l_a_not1, l_b_not1);
	                else
	                    return l_b_not1 == undefined;
	            }
	            else
	            {
	                return 0;
	            }
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 30:
	        l__g37 = l_b;
	        
	        if (l__g37[0] == 30)
	            return gml_node_equals(l__g[2], l__g37[2]);
	        else
	            return 0;
	    
	    case 93:
	        l__g206 = l_b;
	        
	        if (l__g206[0] == 93)
	            return gml_node_equals(l__g[2], l__g206[2]);
	        else
	            return 0;
	    
	    case 45:
	        l__g53 = l_b;
	        
	        if (l__g53[0] == 45)
	        {
	            l_b_v2 = l__g53[4];
	            l_b_fd5 = l__g53[3];
	            return gml_node_equals(l__g[2], l__g53[2]) && l__g[3] == l_b_fd5 && gml_node_equals(l__g[4], l_b_v2);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 44:
	        l__g52 = l_b;
	        
	        if (l__g52[0] == 44)
	        {
	            l_b_fd4 = l__g52[3];
	            return gml_node_equals(l__g[2], l__g52[2]) && l__g[3] == l_b_fd4;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 112:
	        l__g225 = l_b;
	        
	        if (l__g225[0] == 112)
	        {
	            l_b_pl = l__g225[4];
	            l_b_x43 = l__g225[3];
	            return l__g[2] == l__g225[2] && gml_node_equals(l__g[3], l_b_x43) && l__g[4] == l_b_pl;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 97:
	        l__g211 = l_b;
	        
	        if (l__g211[0] == 97)
	        {
	            l_b_cond4 = l__g211[3];
	            return gml_node_equals(l__g[2], l__g211[2]) && gml_node_equals(l__g[3], l_b_cond4);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 98:
	        l__g213 = l_b;
	        
	        if (l__g213[0] == 98)
	        {
	            l_b_node3 = l__g213[3];
	            return gml_node_equals(l__g[2], l__g213[2]) && gml_node_equals(l__g[3], l_b_node3);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 99:
	        l__g214 = l_b;
	        
	        if (l__g214[0] == 99)
	        {
	            l_b_loop = l__g214[5];
	            l_b_post = l__g214[4];
	            l_b_cond5 = l__g214[3];
	            return gml_node_equals(l__g[2], l__g214[2]) && gml_node_equals(l__g[3], l_b_cond5) && gml_node_equals(l__g[4], l_b_post) && gml_node_equals(l__g[5], l_b_loop);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 100:
	        l__g215 = l_b;
	        
	        if (l__g215[0] == 100)
	        {
	            l_b_node4 = l__g215[3];
	            return gml_node_equals(l__g[2], l__g215[2]) && gml_node_equals(l__g[3], l_b_node4);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 101:
	        l__g216 = l_b;
	        
	        if (l__g216[0] == 101)
	            return gml_node_equals(l__g[2], l__g216[2]);
	        else
	            return 0;
	    
	    case 102:
	        l__g218 = l_b;
	        
	        if (l__g218[0] == 102)
	            return gml_node_equals(l__g[2], l__g218[2]);
	        else
	            return 0;
	    
	    case 43:
	        l__g51 = l_b;
	        
	        if (l__g51[0] == 43)
	        {
	            l_b_val8 = l__g51[4];
	            l_b_op3 = l__g51[3];
	            return l__g[2] == l__g51[2] && l__g[3] == l_b_op3 && gml_node_equals(l__g[4], l_b_val8);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 14:
	        l__g20 = l_b;
	        
	        if (l__g20[0] == 14)
	            return l__g[2] == l__g20[2];
	        else
	            return 0;
	    
	    case 42:
	        l__g50 = l_b;
	        
	        if (l__g50[0] == 42)
	        {
	            l_b_val7 = l__g50[3];
	            return l__g[2] == l__g50[2] && gml_node_equals(l__g[3], l_b_val7);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 41:
	        l__g49 = l_b;
	        
	        if (l__g49[0] == 41)
	            return l__g[2] == l__g49[2];
	        else
	            return 0;
	    
	    case 107:
	        l__g219 = l_b;
	        
	        if (l__g219[0] == 107)
	            return l__g[2] == l__g219[2];
	        else
	            return 0;
	    
	    case 108:
	        l__g220 = l_b;
	        
	        if (l__g220[0] == 108)
	        {
	            l_b_x40 = l__g220[3];
	            return l__g[2] == l__g220[2] && gml_node_equals(l__g[3], l_b_x40);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 109:
	        l__g221 = l_b;
	        
	        if (l__g221[0] == 109)
	        {
	            l_b_s4 = l__g221[3];
	            return gml_node_equals(l__g[2], l__g221[2]) && l__g[3] == l_b_s4;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 110:
	        l__g222 = l_b;
	        
	        if (l__g222[0] == 110)
	        {
	            l_b_x42 = l__g222[3];
	            return l__g[2] == l__g222[2] && gml_node_equals(l__g[3], l_b_x42);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 111:
	        l__g224 = l_b;
	        
	        if (l__g224[0] == 111)
	            return l__g[2] == l__g224[2];
	        else
	            return 0;
	    
	    case 113:
	        l__g226 = l_b;
	        
	        if (l__g226[0] == 113)
	        {
	            l_b_pl1 = l__g226[4];
	            l_b_s8 = l__g226[3];
	            return gml_node_equals(l__g[2], l__g226[2]) && l__g[3] == l_b_s8 && l__g[4] == l_b_pl1;
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 40:
	        l__g48 = l_b;
	        
	        if (l__g48[0] == 40)
	        {
	            l_b_val6 = l__g48[5];
	            l_b_op2 = l__g48[4];
	            l_b_fd3 = l__g48[3];
	            return gml_node_equals(l__g[2], l__g48[2]) && l__g[3] == l_b_fd3 && l__g[4] == l_b_op2 && gml_node_equals(l__g[5], l_b_val6);
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 13:
	        l__g10 = l_b;
	        
	        if (l__g10[0] == 13)
	            return l__g[2] == l__g10[2];
	        else
	            return 0;
	    
	    case 4:
	        l__g4 = l_b;
	        
	        if (l__g4[0] == 4)
	            return gml_node_equals_list(l__g[2], l__g4[2]);
	        else
	            return 0;
	    
	    case 12:
	        l__g9 = l_b;
	        
	        if (l__g9[0] == 12)
	            return l__g[2] == l__g9[2];
	        else
	            return 0;
	    
	    case 5:
	        l_m1 = l__g[3];
	        l__g5 = l_b;
	        
	        if (l__g5[0] == 5)
	        {
	            l_m2 = l__g5[3];
	            l_k2 = l__g5[2];
	            l_n = array_length_1d(l_m1);
	            
	            if (array_length_1d(l_m2) == l_n)
	            {
	                l_i = 0;
	                
	                while (l_i < l_n)
	                {
	                    if (gml_std_haxe_boot_wget(l__g[2], l_i) == l_k2[l_i] && gml_node_equals(l_m1[l_i], l_m2[l_i]))
	                        l_i++;
	                    else
	                        break;
	                }
	                
	                return l_i >= l_n;
	            }
	            else
	            {
	                return 0;
	            }
	        }
	        else
	        {
	            return 0;
	        }
	    
	    case 92:
	        l_o1 = l__g[4];
	        l_m11 = l__g[3];
	        l__g205 = l_b;
	        
	        if (l__g205[0] == 92)
	        {
	            l_o2 = l__g205[4];
	            l_m21 = l__g205[3];
	            
	            if (gml_node_equals(l__g[2], l__g205[2]) && ((l_o1 != undefined && l_o2 != undefined && gml_node_equals(l_o1, l_o2)) || (l_o1 == undefined && l_o2 == undefined)))
	            {
	                l_n = array_length_1d(l_m11);
	                
	                if (array_length_1d(l_m21) != l_n)
	                    return 0;
	                
	                l_i = 0;
	                
	                while (l_i < l_n)
	                {
	                    if (gml_node_equals(gml_std_haxe_boot_wget(l_m11[l_i], 1), gml_std_haxe_boot_wget(l_m21[l_i], 1)) && gml_node_equals_list(gml_std_haxe_boot_wget(l_m11[l_i], 0), gml_std_haxe_boot_wget(l_m21[l_i], 0)))
	                        l_i++;
	                    else
	                        break;
	                }
	                
	                return l_i >= l_n;
	            }
	            else
	            {
	                return 0;
	            }
	            
	            break;
	        }
	        
	        return 0;
	}
}
