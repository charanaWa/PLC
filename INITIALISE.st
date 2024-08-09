FUNCTION_BLOCK Initialise

// No idea how or why SBR is connected in the first rung.

IF B3[6].0 THEN
    B3[6].0 := FALSE; // OTU B3:6/0
END_IF;

IF B3[1].11 THEN
    B3[1].11 := FALSE; // OTU B3:1/11
END_IF;

N7[210] := 10; // MOV 10 N7:210

IF BST THEN
    N7[204] := 100; // MOV 100 N7:204
    N7[150] := 0;   // MOV 0 N7:150
    B9[0].2 := FALSE; // OTU B9:0/2
END_IF;

IF BST THEN
    N11[80] := 0;   // MOV 0 N11:80
    N7[17] := 1;    // MOV 1 N7:17
    B9[0].4 := FALSE; // OTU B9:0/4
    N7[161] := 0;   // CLR N7:161
    N7[83] := 0;    // CLR N7:83
    N7[70] := 0;    // CLR N7:70
END_IF;

IF BST THEN
    F8[100] := 0;  // CLR F8:100
    F8[101] := 0;  // CLR F8:101
    F8[102] := 0;  // CLR F8:102
    F8[103] := 0;  // CLR F8:103
    F8[104] := 0;  // CLR F8:104
    F8[105] := 0;  // CLR F8:105
    N7[190] := 0;  // CLR N7:190
    N7[191] := 0;  // CLR N7:191
    N7[192] := 0;  // CLR N7:192
    N7[193] := 0;  // CLR N7:193
    N7[194] := 0;  // CLR N7:194
    N7[195] := 0;  // CLR N7:195
END_IF;

IF N11[179] = 0 THEN
    N11[179] := 200; // MOV 200 N11:179
END_IF;

B9[8].6 := FALSE; // OTU B9:8/6
    
END_FUNCTION_BLOCK

