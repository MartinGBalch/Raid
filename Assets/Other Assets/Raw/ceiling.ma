//Maya ASCII 2016 scene
//Name: ceiling.ma
//Last modified: Mon, May 08, 2017 02:50:20 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "54119589-4B15-0FF5-1721-20BCE845DC6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 84.066680110020826 -117.02885811226788 156.78369583301799 ;
	setAttr ".r" -type "double3" 146.66164727032844 568.19999999990944 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CD562AD2-4B6F-35A9-B842-6C83BD290C94";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100000;
	setAttr ".fd" 0.05;
	setAttr ".coi" 212.94151219249451;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FC86DE40-4B6A-0302-DDF9-69B4FA0BDC93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C771019C-4811-E8B8-BEF8-F08587B88AE0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "D56BBFA6-4CE4-C89D-5FAB-01A81BF4A7FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8420C255-433B-96F9-FD19-1DBC48A64A3B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D6A8B78A-4582-3686-4E15-7AAAE47A911C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BB80AC5E-4CC6-4A63-C8C6-58AB2E720B5A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "FD039EDF-4625-9AF7-D4E0-1B85B69FF8D7";
	setAttr ".r" -type "double3" -359.99999999999926 0 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8596D84B-4952-3023-2CDE-64B6C216FBF1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D919959E-4E99-4555-ADCD-1DBEF75843B7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "03990D9F-4590-7AD1-9181-54A43C6B87F3";
createNode displayLayer -n "defaultLayer";
	rename -uid "3993C486-41B8-D4F1-F801-A6BC56C6F4F4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7EEFEE5B-4FF9-FAE5-C722-3F83191D4B57";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7104990A-4B73-2F0A-9053-2281E02FBFD5";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "8B239F6C-41DA-C468-7AE7-A9889FA4ADEE";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 35;
	setAttr ".h" 2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "30EDD1D9-49C4-E6E5-AD69-7BA8FB581A81";
	setAttr ".dc" -type "componentList" 1 "f[0:39]";
createNode polyCut -n "polyCut1";
	rename -uid "3B0522E4-48B9-D0E9-BFAB-7C9E68F37416";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61930714 -206.49027531999999 48.938614049999998 ;
	setAttr ".ro" -type "double3" -157.36554813000001 -14.79795219 -90 ;
createNode polyCut -n "polyCut2";
	rename -uid "ACE6FD25-4DD8-9B72-37D6-3D9103E31FAA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:30]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618767680000001 -206.49030141 48.938698210000005 ;
	setAttr ".ro" -type "double3" 16.279325669999999 9.4363079400000007 90 ;
createNode polyCut -n "polyCut3";
	rename -uid "4153289B-44BC-CFF4-4201-15B7CAE926E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:38]" "f[40:41]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619343440000002 -206.49021784000001 48.938843540000001 ;
	setAttr ".ro" -type "double3" 154.82127414000001 -12.391390230000001 -90 ;
createNode polyCut -n "polyCut4";
	rename -uid "7F607D59-4F1A-ACA7-EC2E-1FABFB3F46A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:6]" "f[8:53]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61880683 -206.49024942 48.93890347 ;
	setAttr ".ro" -type "double3" -50.261749729999998 24.362704470000004 90 ;
createNode polyCut -n "polyCut5";
	rename -uid "AA13F084-41B4-8EC1-DFB4-3CA4E53F05F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[4:15]" "f[21:31]" "f[33:38]" "f[42:49]" "f[51:53]" "f[55:59]" "f[61]" "f[64]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619157470000001 -206.49032767 48.938447080000003 ;
	setAttr ".ro" -type "double3" 177.51702766 -79.997695149999998 0 ;
createNode polyCut -n "polyCut6";
	rename -uid "3CF9FB88-4CFF-B6C3-52F1-A0819FF98E61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[1:5]" "f[16]" "f[18]" "f[20:29]" "f[31:36]" "f[41]" "f[44:50]" "f[52]" "f[54]" "f[56:59]" "f[61]" "f[63:65]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619042619999998 -206.49021943 48.938945100000005 ;
	setAttr ".ro" -type "double3" -176.51845011 78.861112349999999 0 ;
createNode polyCut -n "polyCut7";
	rename -uid "3352FEB2-48E7-6827-9FF1-4198A465EFE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[1:3]" "f[8:16]" "f[18]" "f[20:38]" "f[42:52]" "f[55:59]" "f[61]" "f[63:64]" "f[67:70]" "f[72:87]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618905309999999 -206.49032713 48.938540109999998 ;
	setAttr ".ro" -type "double3" 28.29081145 18.168051859999998 90 ;
createNode polyCut -n "polyCut8";
	rename -uid "FE540109-44AF-2A7F-9FAE-D68D07C32B8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[0:3]" "f[5]" "f[8:52]" "f[54:64]" "f[67:70]" "f[72:96]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619240340000001 -206.49025739999999 48.938713710000002 ;
	setAttr ".ro" -type "double3" -177.36603478000004 -13.440868419999999 -90 ;
createNode polyCut -n "polyCut9";
	rename -uid "193DDF95-46E1-20B1-8E33-AD9FF9EBE548";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[12:17]" "f[50]" "f[55]" "f[92:93]" "f[95]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618546810000002 -206.49030708000004 48.938753769999998 ;
	setAttr ".ro" -type "double3" -15.721514600000003 21.66604903 90 ;
createNode polyCut -n "polyCut10";
	rename -uid "C57C8BFD-4749-0076-3411-549D15BC337C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[1:12]" "f[18]" "f[20:38]" "f[42:53]" "f[55:59]" "f[61]" "f[63:92]" "f[94]" "f[96:97]" "f[99:105]" "f[107:113]" "f[115:117]" "f[121]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61933561 -206.49029786 48.938508720000002 ;
	setAttr ".ro" -type "double3" -123.10787624999999 -5.8028661000000001 -90 ;
createNode polyCut -n "polyCut11";
	rename -uid "6E8948E4-4E5F-B63B-9C00-7A85A48E126E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[1:9]" "f[11:16]" "f[18]" "f[20:38]" "f[41:59]" "f[61]" "f[63:87]" "f[89:97]" "f[99:105]" "f[107:117]" "f[120:128]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619032969999999 -206.49022457999999 48.938926870000003 ;
	setAttr ".ro" -type "double3" 4.2947708699999998 87.159190280000004 180 ;
createNode polyCut -n "polyCut12";
	rename -uid "5218C233-4BAF-AE22-299D-6B9DA6D98CDE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[0:3]" "f[9]" "f[32:37]" "f[41]" "f[54]" "f[62]" "f[67:68]" "f[72:73]" "f[75:76]" "f[80:81]" "f[97]" "f[108:109]" "f[125]" "f[131:132]" "f[136]" "f[143]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618806159999998 -206.49026415 48.938841570000008 ;
	setAttr ".ro" -type "double3" -21.41010983 13.53921549 90 ;
createNode polyCut -n "polyCut13";
	rename -uid "1147820D-4073-43E0-62CF-E481F1382A45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "f[0]" "f[10:12]" "f[18:32]" "f[39:41]" "f[43:52]" "f[54]" "f[56:61]" "f[63:64]" "f[69:70]" "f[74]" "f[78:92]" "f[94]" "f[96]" "f[98:113]" "f[116:117]" "f[130]" "f[133:137]" "f[139:140]" "f[142:143]" "f[146]" "f[149:151]" "f[156:157]" "f[159]" "f[161]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61944282 -206.49026946999999 48.938589899999997 ;
	setAttr ".ro" -type "double3" -167.94629814000001 -16.643516080000001 -90 ;
createNode polyCut -n "polyCut14";
	rename -uid "5E83B05C-4959-211B-9F40-A8995757D966";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[12]" "f[50]" "f[55]" "f[115:118]" "f[121]" "f[140]" "f[144:145]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61874778 -206.49029891999999 48.938715860000002 ;
	setAttr ".ro" -type "double3" -18.247575739999998 21.252255860000002 90 ;
createNode polyCut -n "polyCut15";
	rename -uid "D5EF0DD2-45BC-9B3E-BEC5-DC85E64775AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "f[1:18]" "f[20:38]" "f[40:61]" "f[63:97]" "f[99:118]" "f[120:152]" "f[154:186]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619161479999999 -206.49031046000002 48.938518250000001 ;
	setAttr ".ro" -type "double3" 176.85208183 -76.354249019999997 0 ;
createNode polyCut -n "polyCut16";
	rename -uid "F8D9D324-4008-AB99-1905-ACA99237E140";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "f[1:3]" "f[16:18]" "f[31]" "f[40:41]" "f[50]" "f[54]" "f[59:61]" "f[98]" "f[106:107]" "f[117:119]" "f[146]" "f[162]" "f[178]" "f[182:183]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619012430000002 -206.49021393000004 48.938979179999997 ;
	setAttr ".ro" -type "double3" -174.53058873000001 73.769739709999996 0 ;
createNode polyCut -n "polyCut17";
	rename -uid "BC60AA58-4C2C-B6A2-2583-348971B2A91B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:127]" "f[129:199]" "f[201:219]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618773990000001 -206.49030992000002 48.93866 ;
	setAttr ".ro" -type "double3" 10.88749653 13.808503 90 ;
createNode polyCut -n "polyCut18";
	rename -uid "AD41E6B5-4792-60E8-E07B-B384B3368C13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "f[1:9]" "f[32:38]" "f[41:42]" "f[53]" "f[62]" "f[65:68]" "f[71:73]" "f[75:77]" "f[81]" "f[97]" "f[108:109]" "f[123:127]" "f[129]" "f[131:132]" "f[136]" "f[138]" "f[146:161]" "f[187:188]" "f[191:194]" "f[197:199]" "f[201]" "f[203:205]" "f[209]" "f[216]" "f[220:221]" "f[230:231]" "f[234]" "f[239:240]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619311289999999 -206.49024072 48.938758540000002 ;
	setAttr ".ro" -type "double3" -175.91273812 -10.302738720000001 -90 ;
createNode polyCut -n "polyCut19";
	rename -uid "3C5AAD6A-43F0-0BB4-A1BC-BAA761F6EDCD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[0:5]" "f[8:127]" "f[129:199]" "f[201:260]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618856269999998 -206.49024569000002 48.938901390000005 ;
	setAttr ".ro" -type "double3" -45.536578259999999 17.99449633 90 ;
createNode polyCut -n "polyCut20";
	rename -uid "E8D4D41B-491F-1E4E-C002-CEB464990C30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[0:1]" "f[9:38]" "f[40:41]" "f[43:52]" "f[54:61]" "f[63:64]" "f[66:123]" "f[125]" "f[127]" "f[129:199]" "f[201:245]" "f[248:250]" "f[252:285]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61918202 -206.49031347000002 48.938498129999999 ;
	setAttr ".ro" -type "double3" -125.79668001 -20.52351049 -90 ;
createNode polyCut -n "polyCut21";
	rename -uid "B5C212C6-44FD-F9C6-DB70-1592EC6680DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[1:18]" "f[20:38]" "f[40:61]" "f[63:118]" "f[120:145]" "f[147:152]" "f[154:246]" "f[248:259]" "f[261:308]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618869759999999 -206.49032359 48.938567880000001 ;
	setAttr ".ro" -type "double3" 23.226060530000002 16.978105150000001 90 ;
createNode polyCut -n "polyCut22";
	rename -uid "B6C9764D-48E9-B153-A236-00946E036C23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "f[1:9]" "f[11:18]" "f[20:38]" "f[40:61]" "f[63:87]" "f[90:97]" "f[99:118]" "f[120:145]" "f[147:152]" "f[154:173]" "f[175:219]" "f[221:246]" "f[248:259]" "f[261]" "f[263:322]" "f[325:326]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618871030000001 -206.49032518000001 48.938560680000002 ;
	setAttr ".ro" -type "double3" 41.979238119999998 10.948263580000001 90 ;
createNode polyCut -n "polyCut23";
	rename -uid "F983D101-44CC-CBAE-397B-349BA5796776";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[0:9]" "f[11:38]" "f[40:61]" "f[63:87]" "f[89:219]" "f[221:246]" "f[248:261]" "f[263:323]" "f[325:353]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618861809999999 -206.49030815000003 48.938635869999999 ;
	setAttr ".ro" -type "double3" 35.478154940000003 8.6401660299999996 90 ;
createNode polyCut -n "polyCut24";
	rename -uid "D25887CA-48D1-4ED6-426A-B8BC6125B41A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[0:7]" "f[9]" "f[12:87]" "f[90:93]" "f[95:173]" "f[175:219]" "f[221:245]" "f[247:261]" "f[263:280]" "f[282:322]" "f[325:380]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619074510000001 -206.49032075 48.938506140000001 ;
	setAttr ".ro" -type "double3" 170.68676755000001 -74.669031779999997 0 ;
createNode polyCut -n "polyCut25";
	rename -uid "C556F0A5-4484-990B-EB06-A082E9822C7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "f[4:16]" "f[20:38]" "f[42:53]" "f[55:59]" "f[61]" "f[63:97]" "f[99:105]" "f[107:117]" "f[120:145]" "f[147:152]" "f[154:177]" "f[179:182]" "f[184:202]" "f[205]" "f[216]" "f[220:240]" "f[243:246]" "f[248:252]" "f[254:256]" "f[258:259]" "f[262:281]" "f[283:284]" "f[286:304]" "f[307:358]" "f[360:372]" "f[374]" "f[377:380]" "f[382:409]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619190799999998 -206.49032270000001 48.938456040000005 ;
	setAttr ".ro" -type "double3" 176.24084195 -73.738531820000006 0 ;
createNode polyCut -n "polyCut26";
	rename -uid "4AD7BD6B-46EE-6A46-9857-F0B19DD500A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:199]" "f[201:431]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61875225 -206.4903266 48.938597460000004 ;
	setAttr ".ro" -type "double3" 13.8148476 16.23981083 90 ;
createNode polyCut -n "polyCut27";
	rename -uid "51566EDD-4850-77FD-E7D7-C5871095E0C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "f[0:2]" "f[4:5]" "f[8:13]" "f[18:118]" "f[120:127]" "f[129:199]" "f[201:205]" "f[207:308]" "f[310:326]" "f[329:350]" "f[352:353]" "f[355:425]" "f[427:440]" "f[442:449]" "f[451:455]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618767439999999 -206.49030157999999 48.938697550000001 ;
	setAttr ".ro" -type "double3" -1.6527373700000001 15.90152653 90 ;
createNode polyCut -n "polyCut28";
	rename -uid "AC48A76F-41B3-A338-35DD-0A9FFE746217";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 70 "f[0:5]" "f[7:10]" "f[20:38]" "f[40:47]" "f[51:54]" "f[59:62]" "f[65:68]" "f[70:81]" "f[85:89]" "f[97:113]" "f[123:127]" "f[129:139]" "f[142:143]" "f[146:161]" "f[168]" "f[174]" "f[187:188]" "f[190:195]" "f[197:199]" "f[201]" "f[203:205]" "f[208:209]" "f[211:214]" "f[216]" "f[220:221]" "f[223:224]" "f[226]" "f[228]" "f[230:236]" "f[238:240]" "f[242:261]" "f[263:268]" "f[270:271]" "f[273:280]" "f[282:285]" "f[287:296]" "f[298:299]" "f[301:308]" "f[310]" "f[313]" "f[322:324]" "f[329:332]" "f[335]" "f[338:344]" "f[346:353]" "f[355:358]" "f[360:370]" "f[374]" "f[377:384]" "f[387:390]" "f[392]" "f[395]" "f[398:404]" "f[409]" "f[411:422]" "f[424:425]" "f[427:432]" "f[434]" "f[436]" "f[440]" "f[445]" "f[448:449]" "f[454:455]" "f[457]" "f[461]" "f[463:464]" "f[466:468]" "f[473]" "f[479:481]" "f[484]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618761299999999 -206.49024516000003 48.938937830000008 ;
	setAttr ".ro" -type "double3" -29.910727240000003 12.546187340000001 90 ;
createNode polyCut -n "polyCut29";
	rename -uid "07753330-4BDF-45A5-83EB-2CBA3AF83ECC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 69 "f[0:10]" "f[20:38]" "f[41:47]" "f[51:54]" "f[59:62]" "f[65:68]" "f[70:81]" "f[85:89]" "f[97:113]" "f[123:139]" "f[142:143]" "f[146:161]" "f[168]" "f[174]" "f[187:188]" "f[190:195]" "f[197:201]" "f[203:205]" "f[209]" "f[211:212]" "f[214]" "f[216]" "f[220:221]" "f[223:224]" "f[226]" "f[228]" "f[230:234]" "f[236]" "f[238:240]" "f[242:261]" "f[263:268]" "f[270:271]" "f[273:280]" "f[282:285]" "f[287:296]" "f[298:299]" "f[301:308]" "f[313]" "f[323:324]" "f[327]" "f[329:332]" "f[335]" "f[338:342]" "f[346:352]" "f[354:358]" "f[360:370]" "f[374]" "f[377:384]" "f[387:390]" "f[392]" "f[395]" "f[398]" "f[400:404]" "f[409]" "f[411]" "f[413:422]" "f[424:432]" "f[434]" "f[440]" "f[445]" "f[448:449]" "f[454:455]" "f[457]" "f[461]" "f[463:464]" "f[468]" "f[473]" "f[479:481]" "f[484:508]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618908260000001 -206.49022990000003 48.938949299999997 ;
	setAttr ".ro" -type "double3" -34.636952979999997 8.1806918199999998 90 ;
createNode polyCut -n "polyCut30";
	rename -uid "D00DB033-4D42-AA07-FDEE-668CD66EBB28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 48 "f[11:18]" "f[50]" "f[55:57]" "f[91:93]" "f[95:96]" "f[114:122]" "f[140:141]" "f[144:145]" "f[177:186]" "f[189]" "f[206]" "f[210]" "f[215]" "f[218:219]" "f[225]" "f[241]" "f[262]" "f[281]" "f[286]" "f[309]" "f[311]" "f[315:318]" "f[321]" "f[325:326]" "f[328]" "f[334]" "f[336:337]" "f[345]" "f[359]" "f[373]" "f[375:376]" "f[391]" "f[393:394]" "f[397]" "f[405:406]" "f[410]" "f[433]" "f[435]" "f[437:439]" "f[441]" "f[443]" "f[447]" "f[450:453]" "f[456]" "f[458]" "f[460]" "f[469:470]" "f[476]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619173270000001 -206.49032252000001 48.9384631 ;
	setAttr ".ro" -type "double3" -147.65869954999999 -25.883436589999999 -90 ;
createNode polyCut -n "polyCut31";
	rename -uid "8B8CD9F5-46A0-D89F-0838-65A8728E8C8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 81 "f[0:1]" "f[19:29]" "f[31:37]" "f[39:41]" "f[43:49]" "f[51:52]" "f[54]" "f[57:64]" "f[67:70]" "f[73:87]" "f[91]" "f[97:113]" "f[127]" "f[129:140]" "f[142:143]" "f[146:162]" "f[164:173]" "f[175:176]" "f[188]" "f[190]" "f[192]" "f[194:195]" "f[197:199]" "f[201]" "f[203:204]" "f[207:209]" "f[211:214]" "f[216:217]" "f[222:230]" "f[232:240]" "f[242]" "f[245]" "f[247]" "f[249:250]" "f[253:254]" "f[257:261]" "f[263:271]" "f[273:280]" "f[282:285]" "f[287:308]" "f[312]" "f[314]" "f[325]" "f[329]" "f[331:335]" "f[338:344]" "f[346:350]" "f[352:353]" "f[355:358]" "f[360:361]" "f[363:366]" "f[368:372]" "f[375]" "f[378:380]" "f[382:390]" "f[392]" "f[395:396]" "f[398:404]" "f[407:409]" "f[413:414]" "f[416]" "f[418]" "f[420:422]" "f[424]" "f[428:429]" "f[433:437]" "f[439]" "f[442:444]" "f[446]" "f[456]" "f[458:462]" "f[465:467]" "f[471:472]" "f[474:475]" "f[477:478]" "f[482:485]" "f[487:493]" "f[495:496]" "f[498:500]" "f[503:505]" "f[507:508]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618692960000001 -206.49028632000002 48.938788750000008 ;
	setAttr ".ro" -type "double3" -4.5295834700000004 11.828253739999999 90 ;
createNode polyCut -n "polyCut32";
	rename -uid "A4643F69-4DEF-FEE5-2D36-7285FA866869";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 53 "f[0:4]" "f[18:20]" "f[31:32]" "f[39:41]" "f[50]" "f[54]" "f[59:62]" "f[98]" "f[106]" "f[118]" "f[146]" "f[153]" "f[162]" "f[165]" "f[178]" "f[183]" "f[203:205]" "f[207:219]" "f[225]" "f[241:242]" "f[247]" "f[253]" "f[257:258]" "f[260:261]" "f[282]" "f[285]" "f[305:308]" "f[359]" "f[366]" "f[371]" "f[373]" "f[375:376]" "f[381]" "f[398]" "f[401]" "f[439]" "f[451]" "f[456]" "f[458]" "f[460]" "f[469:470]" "f[476]" "f[485]" "f[494:495]" "f[501:502]" "f[506]" "f[509]" "f[519]" "f[537]" "f[542:543]" "f[545]" "f[549:550]" "f[552]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618840280000001 -206.49029874000001 48.938683300000001 ;
	setAttr ".ro" -type "double3" 51.175881820000001 -3.7214021600000002 90 ;
createNode polyCut -n "polyCut33";
	rename -uid "4B1919BA-4BF9-941B-17A0-C782D78E30DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "f[0:2]" "f[18:19]" "f[39:40]" "f[62]" "f[98]" "f[106]" "f[178]" "f[209]" "f[217]" "f[241]" "f[247]" "f[456]" "f[469]" "f[501:502]" "f[537]" "f[543]" "f[545]" "f[563]" "f[567:570]" "f[572:576]" "f[578]" "f[580:581]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618807610000001 -206.49030779 48.938656880000011 ;
	setAttr ".ro" -type "double3" 56.436116480000003 -9.7730062000000011 90 ;
createNode polyCut -n "polyCut34";
	rename -uid "9DD59F6D-41BB-AFD3-5DA6-1C9045EC303E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 48 "f[3]" "f[17:18]" "f[31]" "f[40:41]" "f[50]" "f[54]" "f[59:61]" "f[98]" "f[106]" "f[118:119]" "f[162]" "f[178]" "f[183]" "f[203:219]" "f[225]" "f[241:242]" "f[253]" "f[257]" "f[261]" "f[282]" "f[285]" "f[305:307]" "f[359]" "f[366]" "f[373]" "f[375:376]" "f[381]" "f[398]" "f[439]" "f[441]" "f[451]" "f[456]" "f[469:470]" "f[476]" "f[485]" "f[494]" "f[506]" "f[519]" "f[529]" "f[531:532]" "f[535:536]" "f[542:543]" "f[549]" "f[564:566]" "f[571]" "f[577]" "f[579:580]" "f[584]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618848289999999 -206.49033191999999 48.938540420000002 ;
	setAttr ".ro" -type "double3" -3.6309794599999994 -64.730090169999997 180 ;
createNode polyCut -n "polyCut35";
	rename -uid "3EDB5A2B-4635-9111-5232-CAB1E15A40C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "f[3:17]" "f[20:38]" "f[40:61]" "f[63:145]" "f[147:152]" "f[154:199]" "f[201:246]" "f[248:259]" "f[261:484]" "f[486:500]" "f[503:536]" "f[538:544]" "f[546:562]" "f[564:566]" "f[571]" "f[577]" "f[579]" "f[584]" "f[593:620]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619159100000001 -206.49031578000003 48.938496649999998 ;
	setAttr ".ro" -type "double3" 172.11071545999999 -67.501275070000005 0 ;
createNode polyCut -n "polyCut36";
	rename -uid "ABEAAE2A-402B-DF4C-00D1-5986A3EEF5C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 93 "f[3:6]" "f[20:29]" "f[31:38]" "f[41]" "f[43]" "f[45]" "f[51:52]" "f[54]" "f[65:67]" "f[70:73]" "f[75:81]" "f[99:105]" "f[108:113]" "f[123]" "f[125]" "f[127:133]" "f[136:138]" "f[142:143]" "f[146:152]" "f[154:158]" "f[161]" "f[187]" "f[191:194]" "f[198:200]" "f[203:205]" "f[209]" "f[211]" "f[216]" "f[226]" "f[228]" "f[230]" "f[242]" "f[244:245]" "f[248:250]" "f[252:259]" "f[261]" "f[263:268]" "f[270:271]" "f[273:278]" "f[282:283]" "f[285]" "f[287]" "f[289:296]" "f[298]" "f[301:303]" "f[305:308]" "f[329:332]" "f[335]" "f[341:342]" "f[346:347]" "f[350]" "f[354:358]" "f[362:365]" "f[367:370]" "f[374]" "f[377:384]" "f[387]" "f[389]" "f[392]" "f[395]" "f[398]" "f[401:404]" "f[409]" "f[415]" "f[417:418]" "f[420:421]" "f[425:426]" "f[428:431]" "f[485]" "f[487:495]" "f[498:500]" "f[503:510]" "f[513:515]" "f[518:519]" "f[522]" "f[524:525]" "f[538:544]" "f[546:562]" "f[564:566]" "f[571]" "f[575:577]" "f[579]" "f[583:584]" "f[595]" "f[598:600]" "f[605:609]" "f[614:616]" "f[619:620]" "f[622:625]" "f[627]" "f[629:636]" "f[639:641]" "f[646:651]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619165639999999 -206.49021943 48.93890081 ;
	setAttr ".ro" -type "double3" 149.37288346 -4.9604100899999999 -90 ;
createNode polyCut -n "polyCut37";
	rename -uid "A0333142-4DFF-FDA9-E19B-30B49539D69C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 68 "f[1]" "f[9]" "f[34:37]" "f[67]" "f[73]" "f[75:76]" "f[125]" "f[127]" "f[129]" "f[131]" "f[138]" "f[192]" "f[194]" "f[197:199]" "f[203:204]" "f[220:221]" "f[231]" "f[239]" "f[242]" "f[245]" "f[249:250]" "f[252]" "f[254]" "f[257:259]" "f[261]" "f[282]" "f[285]" "f[305:307]" "f[335]" "f[346:347]" "f[350]" "f[357:358]" "f[368]" "f[398]" "f[401]" "f[418]" "f[420:421]" "f[428:429]" "f[486:493]" "f[495:500]" "f[503:505]" "f[507:508]" "f[520]" "f[540:541]" "f[546:547]" "f[554:556]" "f[558:562]" "f[564]" "f[570]" "f[575]" "f[579]" "f[583]" "f[590]" "f[598]" "f[605]" "f[607:609]" "f[620]" "f[622:623]" "f[627]" "f[629]" "f[636]" "f[641]" "f[647:648]" "f[654]" "f[657]" "f[660:662]" "f[666:668]" "f[672]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618809729999999 -206.49025794000002 48.938866490000002 ;
	setAttr ".ro" -type "double3" -22.499365130000001 12.34111 90 ;
createNode polyCut -n "polyCut38";
	rename -uid "0041C645-4D81-6BE3-A5C7-17928981580F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 72 "f[10:11]" "f[21:31]" "f[43:49]" "f[51:52]" "f[57:59]" "f[61]" "f[63:64]" "f[69:70]" "f[74]" "f[78:79]" "f[82:91]" "f[94]" "f[99:105]" "f[107]" "f[109:113]" "f[130]" "f[133:135]" "f[137]" "f[139:140]" "f[142:143]" "f[163:164]" "f[166:176]" "f[189:190]" "f[195:196]" "f[201:202]" "f[222:230]" "f[232:238]" "f[263:266]" "f[268:269]" "f[272:280]" "f[284]" "f[288:292]" "f[294:300]" "f[302:304]" "f[310]" "f[312:314]" "f[319:320]" "f[322:323]" "f[325]" "f[329]" "f[332:334]" "f[338:340]" "f[343:344]" "f[348:349]" "f[352:353]" "f[355]" "f[360:361]" "f[363:364]" "f[366]" "f[379]" "f[382:383]" "f[385:390]" "f[392]" "f[396]" "f[399:400]" "f[407:412]" "f[419]" "f[422:423]" "f[427]" "f[432:437]" "f[439:440]" "f[442:446]" "f[454:455]" "f[457:459]" "f[461:468]" "f[471:475]" "f[477:484]" "f[624:626]" "f[628]" "f[635]" "f[637:640]" "f[642:645]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619232220000001 -206.49027107000003 48.938658990000008 ;
	setAttr ".ro" -type "double3" -175.06873540000001 -16.36339984 -90 ;
createNode polyCut -n "polyCut39";
	rename -uid "24DB0B64-43F1-DCB3-D149-4E9C4686E0FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 44 "f[14]" "f[55:56]" "f[92:93]" "f[95]" "f[120:121]" "f[139:140]" "f[144:145]" "f[173]" "f[175:176]" "f[179:180]" "f[184:186]" "f[232]" "f[269]" "f[280]" "f[297]" "f[300]" "f[311]" "f[314:315]" "f[318]" "f[321]" "f[326]" "f[353]" "f[391]" "f[393:394]" "f[397]" "f[405:406]" "f[435]" "f[437]" "f[442:443]" "f[446]" "f[453]" "f[465:467]" "f[472]" "f[475]" "f[483:484]" "f[526]" "f[626]" "f[642]" "f[645]" "f[711]" "f[713:714]" "f[721:722]" "f[725]" "f[729]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.618987870000002 -206.49031808000001 48.938548560000001 ;
	setAttr ".ro" -type "double3" 57.714140239999992 12.89399704 90 ;
createNode polyCut -n "polyCut40";
	rename -uid "18AABFF5-412D-483A-7274-D185AAFC3729";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 71 "f[7]" "f[9]" "f[11:13]" "f[30]" "f[42]" "f[53]" "f[69:70]" "f[74]" "f[90:91]" "f[94]" "f[96]" "f[114:115]" "f[125:127]" "f[141]" "f[163]" "f[169:170]" "f[177]" "f[189:190]" "f[195:197]" "f[201:202]" "f[221]" "f[226]" "f[230:231]" "f[234]" "f[239:240]" "f[243]" "f[246]" "f[251]" "f[272]" "f[281]" "f[286]" "f[310]" "f[312]" "f[319:320]" "f[322]" "f[325:326]" "f[330]" "f[350:351]" "f[410:412]" "f[419]" "f[422:423]" "f[427]" "f[432]" "f[434]" "f[440]" "f[445]" "f[454]" "f[457]" "f[461]" "f[468]" "f[479]" "f[481]" "f[486]" "f[489]" "f[496:497]" "f[511:512]" "f[517]" "f[520:521]" "f[523]" "f[621]" "f[628]" "f[638]" "f[643]" "f[677]" "f[682]" "f[684]" "f[717:718]" "f[720]" "f[724]" "f[726]" "f[728]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619048759999998 -206.49031702000002 48.938531130000001 ;
	setAttr ".ro" -type "double3" 63.315240040000006 17.967941 90 ;
createNode polyCut -n "polyCut41";
	rename -uid "3D56A113-46FC-D493-74DE-B1B0C516F6E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 64 "f[8:9]" "f[11:12]" "f[30]" "f[42]" "f[53]" "f[69]" "f[90]" "f[94]" "f[96]" "f[125:127]" "f[163]" "f[170]" "f[174]" "f[189:190]" "f[196:197]" "f[202]" "f[221]" "f[231]" "f[239]" "f[243]" "f[246]" "f[251]" "f[272]" "f[281]" "f[286]" "f[310]" "f[312:313]" "f[319:320]" "f[322]" "f[330]" "f[350]" "f[410:412]" "f[419]" "f[422:423]" "f[427]" "f[432]" "f[434]" "f[440]" "f[445]" "f[454:455]" "f[457]" "f[461]" "f[468]" "f[479:481]" "f[486]" "f[489]" "f[496:497]" "f[512]" "f[517]" "f[520:521]" "f[523]" "f[621]" "f[628]" "f[638]" "f[677]" "f[682]" "f[684]" "f[691]" "f[717:718]" "f[720]" "f[724]" "f[726]" "f[751:759]" "f[761:780]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619090830000001 -206.49031826000004 48.938510749999999 ;
	setAttr ".ro" -type "double3" 4.7442180599999997 -77.849479180000003 180 ;
createNode polyCut -n "polyCut42";
	rename -uid "1BB61053-40FD-A1B7-418D-0F937E3061EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 106 "f[4:6]" "f[14:16]" "f[20:29]" "f[31:38]" "f[41]" "f[43:52]" "f[55:59]" "f[61]" "f[63:68]" "f[70:73]" "f[75:87]" "f[91:93]" "f[95]" "f[99:113]" "f[115:118]" "f[120:123]" "f[128:145]" "f[147:152]" "f[154:158]" "f[161:162]" "f[164:168]" "f[171:173]" "f[175:176]" "f[179:187]" "f[191:194]" "f[198:200]" "f[203]" "f[205:208]" "f[210:219]" "f[222:230]" "f[232:233]" "f[235:238]" "f[244:245]" "f[248:250]" "f[252]" "f[254:259]" "f[263:271]" "f[273:280]" "f[282:304]" "f[307:309]" "f[311]" "f[314:318]" "f[321]" "f[326]" "f[328:350]" "f[352:372]" "f[374:375]" "f[377:380]" "f[382:409]" "f[415]" "f[417:418]" "f[420:421]" "f[425:426]" "f[428:431]" "f[433]" "f[435:439]" "f[441:444]" "f[446:447]" "f[450:453]" "f[458:462]" "f[465:467]" "f[470:472]" "f[474:478]" "f[482:484]" "f[487:495]" "f[498:500]" "f[503:510]" "f[513:515]" "f[518:519]" "f[522]" "f[524:528]" "f[530]" "f[532:534]" "f[536]" "f[538:542]" "f[544]" "f[546:548]" "f[550:562]" "f[594]" "f[598:599]" "f[604]" "f[609]" "f[611:613]" "f[616]" "f[622:627]" "f[629:637]" "f[639:649]" "f[651:652]" "f[654:658]" "f[660:668]" "f[672]" "f[674:675]" "f[678:683]" "f[685:686]" "f[688:690]" "f[692:699]" "f[702]" "f[705]" "f[707:709]" "f[711:716]" "f[719]" "f[721:723]" "f[725]" "f[727]" "f[729:750]" "f[782:783]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619027899999999 -206.49032288000004 48.938513940000007 ;
	setAttr ".ro" -type "double3" 174.20932033 -88.297865799999997 0 ;
createNode polyCut -n "polyCut43";
	rename -uid "0F53958E-4808-5751-6396-6DA42BE0249A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 99 "f[11:16]" "f[47:50]" "f[55:59]" "f[63:64]" "f[69]" "f[82:84]" "f[87]" "f[90:96]" "f[114:118]" "f[120:122]" "f[139:141]" "f[144:145]" "f[162:173]" "f[175:177]" "f[179:186]" "f[189]" "f[196]" "f[202]" "f[206:208]" "f[210]" "f[215]" "f[217:219]" "f[222:225]" "f[227]" "f[229]" "f[237]" "f[262]" "f[269]" "f[272]" "f[280:281]" "f[286]" "f[297]" "f[300]" "f[309]" "f[311:312]" "f[314:321]" "f[325:326]" "f[328]" "f[333:334]" "f[336:337]" "f[343:345]" "f[353]" "f[359:360]" "f[371:372]" "f[375]" "f[385:386]" "f[391]" "f[393:394]" "f[396:397]" "f[399]" "f[405:408]" "f[410]" "f[412]" "f[423]" "f[433:439]" "f[441:444]" "f[446:447]" "f[450:453]" "f[458:460]" "f[462]" "f[465:467]" "f[470:472]" "f[474:478]" "f[482:483]" "f[526:528]" "f[530]" "f[532:534]" "f[536]" "f[604]" "f[610:613]" "f[621]" "f[628]" "f[637:638]" "f[642:644]" "f[708:709]" "f[711:716]" "f[719]" "f[721:723]" "f[725]" "f[727]" "f[729:745]" "f[747]" "f[749:750]" "f[753:755]" "f[757]" "f[761:763]" "f[775:777]" "f[781]" "f[784:786]" "f[789]" "f[798:799]" "f[803:804]" "f[809]" "f[812:813]" "f[816]" "f[818:819]" "f[824:826]" "f[834:836]" "f[845:847]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61916772 -206.49031649 48.938490549999997 ;
	setAttr ".ro" -type "double3" -134.06880894 -23.24667255 -90 ;
createNode polyCut -n "polyCut44";
	rename -uid "07558685-4312-A379-F263-1DA856ADBCB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 68 "f[12:14]" "f[17:18]" "f[50]" "f[55:56]" "f[92:93]" "f[95]" "f[114:122]" "f[140:141]" "f[144:145]" "f[177:186]" "f[206]" "f[215]" "f[218:219]" "f[241]" "f[281]" "f[286]" "f[309]" "f[311]" "f[316:318]" "f[321]" "f[326]" "f[328]" "f[336:337]" "f[345]" "f[373]" "f[376]" "f[391]" "f[394]" "f[397]" "f[405:406]" "f[438:439]" "f[447]" "f[450:453]" "f[460]" "f[469]" "f[527:529]" "f[531:532]" "f[535]" "f[593]" "f[604]" "f[610:611]" "f[613]" "f[617:618]" "f[621]" "f[628]" "f[733:736]" "f[738]" "f[741:742]" "f[750]" "f[755]" "f[757]" "f[761]" "f[775]" "f[781]" "f[798:799]" "f[803]" "f[809]" "f[813]" "f[816]" "f[818]" "f[824]" "f[846:848]" "f[851:853]" "f[856]" "f[859]" "f[863]" "f[865]" "f[868:872]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619236870000002 -206.49030318000001 48.938521810000005 ;
	setAttr ".ro" -type "double3" -154.36449905000001 -21.352367880000003 -90 ;
createNode polyCut -n "polyCut45";
	rename -uid "BB7D8074-42BB-D3DE-8ED6-26889CA9A8AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 32 "f[115:116]" "f[118]" "f[145]" "f[177:186]" "f[215]" "f[218]" "f[241]" "f[286]" "f[317]" "f[336:337]" "f[373]" "f[376]" "f[394]" "f[397]" "f[405:406]" "f[439]" "f[451:452]" "f[604]" "f[610:611]" "f[734]" "f[736]" "f[738]" "f[757]" "f[761]" "f[818]" "f[847]" "f[852:853]" "f[856]" "f[875]" "f[879:880]" "f[883]" "f[893:895]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619316619999999 -206.49029928000002 48.938509570000001 ;
	setAttr ".ro" -type "double3" -160.87191207000001 -21.322273030000002 -90 ;
createNode polyCut -n "polyCut46";
	rename -uid "3805B009-4FDA-942C-BD27-608BDC884B9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 89 "f[0:1]" "f[9:12]" "f[18:41]" "f[43:52]" "f[54]" "f[56:64]" "f[67:76]" "f[78:92]" "f[94]" "f[96:113]" "f[125]" "f[127]" "f[129:140]" "f[142:143]" "f[146:176]" "f[188:192]" "f[194:199]" "f[201:204]" "f[207:214]" "f[216:217]" "f[220:242]" "f[244:245]" "f[247:250]" "f[252:308]" "f[310]" "f[312:315]" "f[319:326]" "f[329:335]" "f[338:350]" "f[352:353]" "f[355:361]" "f[363:366]" "f[368:372]" "f[374:375]" "f[377:380]" "f[382:390]" "f[392:393]" "f[395:396]" "f[398:404]" "f[407:414]" "f[416:425]" "f[427:440]" "f[442:449]" "f[453:508]" "f[520]" "f[537:565]" "f[567:570]" "f[572:576]" "f[578:592]" "f[594:609]" "f[612:615]" "f[619:633]" "f[635:649]" "f[651]" "f[653:654]" "f[657]" "f[659:662]" "f[664]" "f[666:673]" "f[676:731]" "f[735]" "f[737]" "f[739:740]" "f[742:749]" "f[751]" "f[753:754]" "f[756]" "f[758:759]" "f[762:771]" "f[775:790]" "f[792:796]" "f[799:802]" "f[804:808]" "f[810:815]" "f[817]" "f[819:837]" "f[839:842]" "f[844:845]" "f[848:850]" "f[854:855]" "f[857:858]" "f[860:862]" "f[864:867]" "f[871:874]" "f[877]" "f[886:891]" "f[894]" "f[896]" "f[911]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619199389999999 -206.49029394999999 48.938574230000008 ;
	setAttr ".ro" -type "double3" -139.86464631000001 -17.57358018 -90 ;
createNode polyCut -n "polyCut47";
	rename -uid "DE81CD29-438C-3B9B-E33C-6AB8939D4387";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 109 "f[11:12]" "f[18:19]" "f[39:40]" "f[49:50]" "f[55:59]" "f[63:64]" "f[69]" "f[82:84]" "f[91:92]" "f[96]" "f[98]" "f[140]" "f[162]" "f[164:168]" "f[171:172]" "f[175]" "f[189]" "f[196]" "f[207]" "f[210]" "f[219]" "f[225]" "f[227]" "f[229]" "f[237]" "f[241]" "f[262]" "f[269]" "f[272]" "f[281]" "f[286]" "f[311:312]" "f[314:315]" "f[318]" "f[321]" "f[325:326]" "f[333:334]" "f[343]" "f[345]" "f[359]" "f[371:372]" "f[375]" "f[385:386]" "f[393]" "f[407:408]" "f[410]" "f[412]" "f[433]" "f[435]" "f[437:439]" "f[442:443]" "f[446:447]" "f[453]" "f[456]" "f[458:460]" "f[462]" "f[469:471]" "f[474]" "f[476:478]" "f[482:483]" "f[567:569]" "f[573]" "f[578]" "f[601]" "f[603:604]" "f[612:613]" "f[621]" "f[628]" "f[638]" "f[643]" "f[708:709]" "f[711:712]" "f[714:716]" "f[719]" "f[721]" "f[723]" "f[727]" "f[730]" "f[735]" "f[737]" "f[739:740]" "f[742:744]" "f[753:754]" "f[775:777]" "f[781]" "f[784:785]" "f[789]" "f[798:799]" "f[813]" "f[824:826]" "f[834:836]" "f[845]" "f[848:850]" "f[854:855]" "f[857:862]" "f[864:868]" "f[871:874]" "f[876:877]" "f[883]" "f[885:891]" "f[894:896]" "f[900]" "f[911]" "f[920]" "f[924]" "f[926]" "f[943]" "f[948]" "f[961:963]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.619188829999999 -206.49029519999999 48.938572790000002 ;
	setAttr ".ro" -type "double3" -155.92240086999999 -19.968487960000001 -90 ;
createNode polyCut -n "polyCut48";
	rename -uid "28741CD8-4C40-D4BB-DB88-BABD7B8EB675";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 97 "f[1:9]" "f[33:38]" "f[42]" "f[53]" "f[65:68]" "f[71:73]" "f[75:77]" "f[81]" "f[97]" "f[123:129]" "f[131:132]" "f[138]" "f[146:154]" "f[156:158]" "f[160:161]" "f[187:188]" "f[191:194]" "f[197:200]" "f[203:205]" "f[216]" "f[221]" "f[231]" "f[239]" "f[242:246]" "f[248:261]" "f[282]" "f[285]" "f[305:308]" "f[327]" "f[330]" "f[335]" "f[342]" "f[346:347]" "f[350:351]" "f[354]" "f[356:358]" "f[362]" "f[367:368]" "f[370]" "f[374]" "f[377]" "f[381]" "f[395]" "f[398]" "f[401]" "f[413]" "f[415:418]" "f[420:421]" "f[425:426]" "f[428:431]" "f[485:525]" "f[538:541]" "f[544]" "f[546:548]" "f[552:562]" "f[564:566]" "f[570:572]" "f[574:577]" "f[579]" "f[583:584]" "f[587]" "f[592]" "f[598:599]" "f[605:609]" "f[614:616]" "f[620]" "f[622:623]" "f[627]" "f[629]" "f[631:632]" "f[634]" "f[636]" "f[641]" "f[646:652]" "f[654:672]" "f[674:707]" "f[752]" "f[756]" "f[758]" "f[760]" "f[771:774]" "f[778:779]" "f[782:783]" "f[787:788]" "f[791:792]" "f[797]" "f[800]" "f[807:808]" "f[811]" "f[814]" "f[821]" "f[837:844]" "f[919]" "f[927]" "f[929:930]" "f[952:954]" "f[957]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 -0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 0 0 0 1;
	setAttr ".pc" -type "double3" -17.61895311 -206.49022653 48.938947380000002 ;
	setAttr ".ro" -type "double3" -48.908547390000003 10.526011909999999 90 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E772B082-4D1F-FE1C-B308-A3BDB19676F3";
	setAttr ".dc" -type "componentList" 80 "f[0:5]" "f[7:8]" "f[10:30]" "f[32:37]" "f[39]" "f[42:58]" "f[60]" "f[62:66]" "f[68:69]" "f[71:94]" "f[96:97]" "f[99:115]" "f[117:124]" "f[126:139]" "f[141:173]" "f[177:197]" "f[199:280]" "f[282:308]" "f[310:313]" "f[315:325]" "f[327:329]" "f[331:352]" "f[354:385]" "f[387:419]" "f[421]" "f[423:434]" "f[436:438]" "f[440:444]" "f[446:466]" "f[468]" "f[470:474]" "f[476:482]" "f[484:486]" "f[488]" "f[491:492]" "f[494]" "f[496:507]" "f[509:512]" "f[514:521]" "f[524:545]" "f[547:581]" "f[583:597]" "f[599:600]" "f[602:653]" "f[655:663]" "f[665]" "f[668]" "f[670:674]" "f[676:679]" "f[681]" "f[685:688]" "f[690:695]" "f[697:700]" "f[702:710]" "f[712:715]" "f[717:720]" "f[722:749]" "f[752:759]" "f[761:764]" "f[766:781]" "f[783:790]" "f[792:794]" "f[796]" "f[798]" "f[800:801]" "f[803:804]" "f[806:845]" "f[847:857]" "f[859:887]" "f[889:893]" "f[895:899]" "f[901:970]" "f[972:975]" "f[977:980]" "f[982:998]" "f[1000:1004]" "f[1006:1010]" "f[1012:1014]" "f[1016]" "f[1018]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "72BA8816-4198-ED8E-EFC6-9CA882822442";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1416\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1416\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7DD0CBD2-4240-94CB-CF9C-83A2F8E270DC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 73;
	setAttr ".unw" 73;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "deleteComponent2.og" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "pCylinderShape1.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "pCylinderShape1.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "pCylinderShape1.wm" "polyCut4.mp";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "pCylinderShape1.wm" "polyCut5.mp";
connectAttr "polyCut5.out" "polyCut6.ip";
connectAttr "pCylinderShape1.wm" "polyCut6.mp";
connectAttr "polyCut6.out" "polyCut7.ip";
connectAttr "pCylinderShape1.wm" "polyCut7.mp";
connectAttr "polyCut7.out" "polyCut8.ip";
connectAttr "pCylinderShape1.wm" "polyCut8.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "pCylinderShape1.wm" "polyCut9.mp";
connectAttr "polyCut9.out" "polyCut10.ip";
connectAttr "pCylinderShape1.wm" "polyCut10.mp";
connectAttr "polyCut10.out" "polyCut11.ip";
connectAttr "pCylinderShape1.wm" "polyCut11.mp";
connectAttr "polyCut11.out" "polyCut12.ip";
connectAttr "pCylinderShape1.wm" "polyCut12.mp";
connectAttr "polyCut12.out" "polyCut13.ip";
connectAttr "pCylinderShape1.wm" "polyCut13.mp";
connectAttr "polyCut13.out" "polyCut14.ip";
connectAttr "pCylinderShape1.wm" "polyCut14.mp";
connectAttr "polyCut14.out" "polyCut15.ip";
connectAttr "pCylinderShape1.wm" "polyCut15.mp";
connectAttr "polyCut15.out" "polyCut16.ip";
connectAttr "pCylinderShape1.wm" "polyCut16.mp";
connectAttr "polyCut16.out" "polyCut17.ip";
connectAttr "pCylinderShape1.wm" "polyCut17.mp";
connectAttr "polyCut17.out" "polyCut18.ip";
connectAttr "pCylinderShape1.wm" "polyCut18.mp";
connectAttr "polyCut18.out" "polyCut19.ip";
connectAttr "pCylinderShape1.wm" "polyCut19.mp";
connectAttr "polyCut19.out" "polyCut20.ip";
connectAttr "pCylinderShape1.wm" "polyCut20.mp";
connectAttr "polyCut20.out" "polyCut21.ip";
connectAttr "pCylinderShape1.wm" "polyCut21.mp";
connectAttr "polyCut21.out" "polyCut22.ip";
connectAttr "pCylinderShape1.wm" "polyCut22.mp";
connectAttr "polyCut22.out" "polyCut23.ip";
connectAttr "pCylinderShape1.wm" "polyCut23.mp";
connectAttr "polyCut23.out" "polyCut24.ip";
connectAttr "pCylinderShape1.wm" "polyCut24.mp";
connectAttr "polyCut24.out" "polyCut25.ip";
connectAttr "pCylinderShape1.wm" "polyCut25.mp";
connectAttr "polyCut25.out" "polyCut26.ip";
connectAttr "pCylinderShape1.wm" "polyCut26.mp";
connectAttr "polyCut26.out" "polyCut27.ip";
connectAttr "pCylinderShape1.wm" "polyCut27.mp";
connectAttr "polyCut27.out" "polyCut28.ip";
connectAttr "pCylinderShape1.wm" "polyCut28.mp";
connectAttr "polyCut28.out" "polyCut29.ip";
connectAttr "pCylinderShape1.wm" "polyCut29.mp";
connectAttr "polyCut29.out" "polyCut30.ip";
connectAttr "pCylinderShape1.wm" "polyCut30.mp";
connectAttr "polyCut30.out" "polyCut31.ip";
connectAttr "pCylinderShape1.wm" "polyCut31.mp";
connectAttr "polyCut31.out" "polyCut32.ip";
connectAttr "pCylinderShape1.wm" "polyCut32.mp";
connectAttr "polyCut32.out" "polyCut33.ip";
connectAttr "pCylinderShape1.wm" "polyCut33.mp";
connectAttr "polyCut33.out" "polyCut34.ip";
connectAttr "pCylinderShape1.wm" "polyCut34.mp";
connectAttr "polyCut34.out" "polyCut35.ip";
connectAttr "pCylinderShape1.wm" "polyCut35.mp";
connectAttr "polyCut35.out" "polyCut36.ip";
connectAttr "pCylinderShape1.wm" "polyCut36.mp";
connectAttr "polyCut36.out" "polyCut37.ip";
connectAttr "pCylinderShape1.wm" "polyCut37.mp";
connectAttr "polyCut37.out" "polyCut38.ip";
connectAttr "pCylinderShape1.wm" "polyCut38.mp";
connectAttr "polyCut38.out" "polyCut39.ip";
connectAttr "pCylinderShape1.wm" "polyCut39.mp";
connectAttr "polyCut39.out" "polyCut40.ip";
connectAttr "pCylinderShape1.wm" "polyCut40.mp";
connectAttr "polyCut40.out" "polyCut41.ip";
connectAttr "pCylinderShape1.wm" "polyCut41.mp";
connectAttr "polyCut41.out" "polyCut42.ip";
connectAttr "pCylinderShape1.wm" "polyCut42.mp";
connectAttr "polyCut42.out" "polyCut43.ip";
connectAttr "pCylinderShape1.wm" "polyCut43.mp";
connectAttr "polyCut43.out" "polyCut44.ip";
connectAttr "pCylinderShape1.wm" "polyCut44.mp";
connectAttr "polyCut44.out" "polyCut45.ip";
connectAttr "pCylinderShape1.wm" "polyCut45.mp";
connectAttr "polyCut45.out" "polyCut46.ip";
connectAttr "pCylinderShape1.wm" "polyCut46.mp";
connectAttr "polyCut46.out" "polyCut47.ip";
connectAttr "pCylinderShape1.wm" "polyCut47.mp";
connectAttr "polyCut47.out" "polyCut48.ip";
connectAttr "pCylinderShape1.wm" "polyCut48.mp";
connectAttr "polyCut48.out" "deleteComponent2.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of ceiling.ma
