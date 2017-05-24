//Maya ASCII 2016 scene
//Name: ani_player_run_baked_01.ma
//Last modified: Wed, May 24, 2017 10:47:03 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKControlSetNode"
		 -nodeType "HIKEffectorFromCharacter" -nodeType "HIKFK2State" -nodeType "HIKState2FK"
		 -nodeType "HIKState2SK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2014.2";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "25538141-445D-742D-126A-DBA2E2D8430E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.789302802172136 1.5841459967482217 3.1035659310920782 ;
	setAttr ".r" -type "double3" 349.46164701525629 4005.7999999977392 0 ;
	setAttr ".rp" -type "double3" 0 1.4210854715202004e-016 0 ;
	setAttr ".rpt" -type "double3" 2.2905926675267568e-018 -1.4043517735316797e-018 
		1.9797013961240502e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "769324A9-4415-CE2B-5AC1-978683A2DF6F";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 4.9848139694138887;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.796216959309945 80.461951618474032 5.1090754274631536 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EFD56785-4F51-B120-1615-F082D4B32C27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.19617571677505521 2.4612153861652595 -0.18268133517882107 ;
	setAttr ".r" -type "double3" -89.738352730962873 -220.59999999999596 0 ;
	setAttr ".rp" -type "double3" 4.5474735088646413e-015 4.5474735088646413e-015 0 ;
	setAttr ".rpt" -type "double3" 0 -4.5474735088646421e-015 4.5474735088646421e-015 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "26259229-499B-6C1D-1A89-CF8821679C58";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 2.6065424443079848;
	setAttr ".ow" 1.9289945642415527;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
createNode transform -s -n "front";
	rename -uid "F40A2EBB-4948-C166-6D58-B5B7BFE84DCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.15649049180923011 0.75432496773317625 1.5007642085204611 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "707F89F2-4070-D7C3-D556-83A11FE51A6E";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 3.7755636783899593;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1978EB2F-43BA-7936-74DE-F888177B9ED1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.749790552413609 0.012858498934601937 0.033053415111012001 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EB8D56EF-4CAD-6CA4-E827-02812803D565";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.73724003641960123;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "QuickRigCharacter_Reference";
	rename -uid "196C9AD1-4CAB-A66E-290A-788873F278E5";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
createNode locator -n "QuickRigCharacter_ReferenceShape" -p "QuickRigCharacter_Reference";
	rename -uid "CFE76334-463F-3F8D-B26C-AD93DFC661D7";
	setAttr -k off ".v";
createNode joint -n "QuickRigCharacter_Hips" -p "QuickRigCharacter_Reference";
	rename -uid "06D7DAC4-44BB-299B-EACC-E29B5CDED41E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90 -15.45073204194955 90 ;
	setAttr ".bps" -type "matrix" 2.2204460837427981e-016 0.9638599069902597 0.26640966717594311 0
		 -2.2204460837427981e-016 -0.26640966717594317 0.9638599069902597 0 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 -7.62939453125e-006 92.971717834472656 1.050102710723877 1;
	setAttr ".ds" 2;
	setAttr ".typ" 1;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftUpLeg" -p "QuickRigCharacter_Hips";
	rename -uid "4C40F003-42A7-3F1B-660A-359013415CCB";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -9.3428793767990803e-015 -1.4312496066585827e-014 
		164.54926795805045 ;
	setAttr ".bps" -type "matrix" 0.0012874901294708258 -0.99647694826126121 -0.083856761455535916 0
		 0.0035971999164139071 0.083860901961907153 -0.99647092083754085 0 0.99999266851035318 0.00098129700104534817 0.0036924971097877951 0
		 8.8874893188476563 91.022888183593764 2.110964059829711 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftLeg" -p "QuickRigCharacter_LeftUpLeg";
	rename -uid "3D9227DB-4E25-A621-47AD-4EAAEB382D66";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -8.8731143634818446e-015 -1.5902773407317587e-014 
		3.1805546814635176e-015 ;
	setAttr ".bps" -type "matrix" 0.0015574729282921704 -0.98720693625921985 -0.15943636141859469 0
		 0.035602629163519417 0.15939022149751203 -0.9865734560397087 0 0.99936479376343057 -0.0041397923580893314 0.035395409755603117 0
		 8.9313869476318377 57.046962738037109 -0.74822115898132457 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftFoot" -p "QuickRigCharacter_LeftLeg";
	rename -uid "88BC313C-48D3-2171-4AB6-0A9936A7EAE9";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 8.5932708197788673e-015 -3.3397537325450578e-005 -49.036342228758983 ;
	setAttr ".bps" -type "matrix" -0.070688657462596921 -0.65558022260665894 0.75180959701538075 0
		 7.5695459170809637e-005 -0.75369857979097787 -0.65722030400896703 0 0.9974984050755128 -0.046401109878211458 0.053327562313487724 0
		 9.0036697387695312 11.246616363525391 -8.1451015472412092 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftToeBase" -p "QuickRigCharacter_LeftFoot";
	rename -uid "D8BE46CB-49B4-C7AD-FD84-82AE249EAA9C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".bps" -type "matrix" -0.070688657462596921 -0.65558022260665894 0.75180959701538075 0
		 7.569545917080965e-005 -0.7536985797909781 -0.65722030400896714 0 0.99749840507551302 -0.046401109878211465 0.053327562313487738 0
		 8.0993976593017596 2.8601646423339862 1.472355842590332 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightUpLeg" -p "QuickRigCharacter_Hips";
	rename -uid "96FE47E3-4246-2324-8A47-729D665245B5";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 9.1439546970657756e-015 1.4312585517823191e-014 -15.451292536757864 ;
	setAttr ".bps" -type "matrix" 0.0012882947921752928 0.99647665023803711 0.083862662315368597 0
		 0.0036033689953415618 -0.083866808191202957 0.99647055774069404 0 0.99999278721848572 -0.0009815595655703409 -0.0036987176833389677 0
		 -8.8875036239624023 91.022888183593764 2.1109640598297137 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightLeg" -p "QuickRigCharacter_RightUpLeg";
	rename -uid "821F1066-4FC8-D2AE-1651-8C8773CD99F2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 8.8731195647991704e-015 1.5902773407317584e-014 0.00056049480830263276 ;
	setAttr ".bps" -type "matrix" 0.0015575885772705011 0.98720747232437134 0.15943261981010434 0
		 0.035635650439529133 -0.15938634918204464 0.9865728193157306 0 0.99936354565480146 0.0041448109823082309 -0.035428042411188104 0
		 -8.9314231872558594 57.046977996826179 -0.74841547012329057 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightFoot" -p "QuickRigCharacter_RightLeg";
	rename -uid "7F12FFEB-43A2-0C5D-7571-6BB461A4D431";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -1.3396707082578363e-014 -0.0036403144212833918 -49.03634212836787 ;
	setAttr ".bps" -type "matrix" -0.070688121020793943 0.6555793881416323 -0.75181037187576272 0
		 7.5459212334597764e-005 0.75369918920495615 0.6572193437543411 0 0.99749845331058851 0.046400875553020568 -0.05332705597205252 0
		 -9.0036840438842773 11.246604919433587 -8.1451072692871094 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightToeBase" -p "QuickRigCharacter_RightFoot";
	rename -uid "571A2CFB-4506-97FD-FF42-36A994B9EAD0";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 1.4622811973002396e-006 0 ;
	setAttr ".bps" -type "matrix" -0.070688146478571856 0.65557938695740647 -0.75181037051476951 0
		 7.545921233459775e-005 0.75369918920495604 0.65721934375434099 0 0.99749845150651284 0.046400892284469565 -0.053327075159472249 0
		 -8.0994129180908203 2.8601627349853516 1.4723529815673846 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_Spine" -p "QuickRigCharacter_Hips";
	rename -uid "B647EA69-4543-AAFE-0DB3-6B9379A55FD2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 1.0385397445905336e-014 1.469194457792578e-014 -9.7443870063147706 ;
	setAttr ".bps" -type "matrix" 2.5642284510458073e-016 0.99504476504733252 0.099429963330684823 0
		 -1.8125941776367776e-016 -0.099429962152144863 0.99504475325309982 0 1.0000001192092967 -2.2204463139481249e-016 2.2204463139481249e-016 0
		 -7.6293945312500017e-006 101.51084899902345 3.4103069305419917 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_Spine1" -p "QuickRigCharacter_Spine";
	rename -uid "4C052DD9-46D2-7761-DE77-FC92F1C6B152";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 1.0385397625222921e-014 1.4691943035847921e-014 -6.3611093629270351e-015 ;
	setAttr ".bps" -type "matrix" 2.5642284510458073e-016 0.99504476504733252 0.099429963330684823 0
		 -1.8125941776367764e-016 -0.099429962152144793 0.99504475325309916 0 1.0000001192092967 -2.2204463139481249e-016 2.2204463139481249e-016 0
		 -7.62939453125e-006 110.04963684082031 4.2635469436645508 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_Spine2" -p "QuickRigCharacter_Spine1";
	rename -uid "C201D20C-42D9-32C6-9547-C399076A40BF";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 5.6127278761886954e-015 1.7094061500301023e-014 -17.078346105085515 ;
	setAttr ".bps" -type "matrix" 2.9834766768206454e-016 0.98036760082717911 -0.19717827484372991 0
		 -9.7960567797659334e-017 0.1971782736850371 0.98036759506617543 0 1.0000000000000004 -2.2204460492503141e-016 2.2204460492503141e-016 0
		 -7.62939453125e-006 118.58842468261717 5.1167869567871103 1;
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftShoulder" -p "QuickRigCharacter_Spine2";
	rename -uid "C9453254-4A74-3A8E-F9E5-7485EFF80E4D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" -78.627998930549296 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 1.1542900907982937e-016 2.1079238033507913e-016 0
		 -4.3810388527734836e-018 1 1.1102230246251559e-016 0 -1.5486506054875908e-016 -8.3266726846886741e-017 1 0
		 6.5026316642761239 131.26547241210937 1.4935796260833794 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftArm" -p "QuickRigCharacter_LeftShoulder";
	rename -uid "8024CC0D-4CBB-BCDA-1F9C-6183BE6DD847";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90 1.1927080055488187e-014 3.3104297235376218e-031 ;
	setAttr ".bps" -type "matrix" 0.48230493068695079 -0.87600338459014859 -0.00018274784088133608 0
		 -0.00044554165080797553 -0.00045391918594677843 0.99999982121398501 0 -0.87600331701223288 -0.48230476638686215 -0.00060922345983212126 0
		 16.256589889526367 131.26547241210937 1.4935796260833738 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftForeArm" -p "QuickRigCharacter_LeftArm";
	rename -uid "C7CD9D58-4560-2A17-E705-44BD7B17DDA8";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 1.4312496066585827e-014 2.9793867511838572e-030 -1.1927080055488182e-014 ;
	setAttr ".bps" -type "matrix" 0.47747424244880654 -0.86741733551025324 0.14002080261707306 0
		 -0.068061151301322786 0.12236779870165714 0.99014856341735069 0 -0.87600584390126868 -0.48230028996627222 -0.000609950373688523 0
		 26.762762069702163 112.18328857421876 1.4896034002304075 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_LeftHand" -p "QuickRigCharacter_LeftForeArm";
	rename -uid "491149A8-4A54-C76A-A02D-A4A3755A915D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 0.47747425378548075 -0.86741735610534898 0.14002080594158794 0
		 -0.068061148338950855 0.12236779337558014 0.99014852032098422 0 -0.87600588965698356 -0.48230031515787875 -0.00060995040554757463 0
		 36.344856262207024 94.775642395019517 4.2995986938476545 1;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightShoulder" -p "QuickRigCharacter_Spine2";
	rename -uid "7835A6FB-4215-0FC8-BFCF-5FB6ABBABF53";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 101.37200106945073 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1 -4.359257958630045e-018 1.7826223070399634e-016 0
		 -5.1130112378484294e-017 -1 -8.3266726846886691e-017 0 1.5486506054875915e-016 2.2204460492503131e-016 -1.0000000000000002 0
		 -6.5026464462280265 131.26547241210937 1.4935796260833767 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightArm" -p "QuickRigCharacter_RightShoulder";
	rename -uid "3199490C-4340-5827-B212-14AE5A0A8792";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 90 -1.033680271475643e-014 1.1476156374930398e-030 ;
	setAttr ".bps" -type "matrix" 0.48230201005935686 0.87600523233413696 0.00018075108528138335 0
		 -0.00044324484799893331 0.0004503728177518178 -0.99999988067405998 0 -0.87600510079141469 0.4823018126995971 0.00060550044639077788 0
		 -16.25660514831543 131.26547241210937 1.4935796260833742 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightForeArm" -p "QuickRigCharacter_RightArm";
	rename -uid "59A32F16-4879-872D-B5B0-B1A924D304C6";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 6.3611093629270406e-015 -1.1476156374930427e-030 1.033680271475643e-014 ;
	setAttr ".bps" -type "matrix" 0.47747628560195621 0.86741627760345863 -0.14001865653175821 0
		 -0.068056462162016509 -0.12236792609565371 -0.99014860698103979 0 -0.87600487784790626 0.48230168995366995 0.00060550029229076887 0
		 -26.762685775756822 112.18326568603518 1.4896347522735602 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_RightHand" -p "QuickRigCharacter_RightForeArm";
	rename -uid "BA83EE61-4CD9-97CD-F412-2CA0E860AB1B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 0.47747530243738556 0.86741712749159039 -0.14001869398911101 0
		 -0.068056476034244195 -0.12236795103840975 -0.99014880880708955 0 -0.87600564580636586 0.48230067600199439 0.00060567838646602835 0
		 -36.344856262207031 94.775650024414048 4.2995805740356454 1;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_Neck" -p "QuickRigCharacter_Spine2";
	rename -uid "D5F06723-4EA6-C689-EDB6-1E9245D4B893";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 8.8801811543669916e-015 1.5647750417092432e-014 11.397873203204185 ;
	setAttr ".bps" -type "matrix" 2.7310477109318197e-016 0.99999994038680495 0.00045155392228637958 0
		 -1.5498840443182591e-016 -0.00045155392228651836 0.99999994038680495 0 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 -7.62939453125e-006 142.0830078125 0.39139604568481356 1;
	setAttr ".ds" 2;
	setAttr ".typ" 7;
	setAttr ".radi" 1.5;
createNode joint -n "QuickRigCharacter_Head" -p "QuickRigCharacter_Neck";
	rename -uid "E043818E-4A11-37AB-4266-E78868F25031";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".bps" -type "matrix" 2.7310477109318197e-016 0.99999994038680495 0.00045155392228637958 0
		 -1.5498840443182591e-016 -0.00045155392228651836 0.99999994038680495 0 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 -7.62939453125e-006 151.21461486816409 0.3955195844173432 1;
	setAttr ".ds" 2;
	setAttr ".typ" 8;
	setAttr ".radi" 1.5;
createNode transform -n "QuickRigCharacter_Ctrl_Reference";
	rename -uid "58BD3158-48B1-4A55-6920-7F96BC801D9F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr -l on ".ra";
createNode locator -n "QuickRigCharacter_Ctrl_ReferenceShape" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "93EA3052-4844-F860-04E1-20B6AD4FC18A";
	setAttr -k off ".v";
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_HipsEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "C1898A87-4C53-D114-50B8-25B8EDFCF487";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 13.440668903864347;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 2;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftAnkleEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "1ABBCADF-4156-679B-A190-5EBD536FF515";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 139.0363406192921 -89.999965828758263 0 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 1;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" -90.000039359908939 -49.036340619280352 -89.999947876337487 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightAnkleEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "87000499-4DF3-1139-B10D-1E82F27720FF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -40.963658680683579 -89.996356491406502 -179.99999999989998 ;
	setAttr -l on ".ra";
	setAttr ".pin" 3;
	setAttr ".ei" 2;
	setAttr ".rt" 1;
	setAttr ".rr" 1;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" -89.995803249681501 -49.036341185916022 -90.005557685496981 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftWristEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "222D967F-4CE3-816C-E43B-D2908216BEBA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 3;
	setAttr ".radi" 4.4802229679547825;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightWristEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "F31244C8-4BD5-C516-C4C3-64AE578019A0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr ".ei" 4;
	setAttr ".radi" 4.4802229679547825;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftKneeEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "96E81C2C-4794-2A90-7E8A-3C965D4DE3F5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 5;
	setAttr ".radi" 1.7920891871819129;
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 8.960445935909565 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightKneeEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "E8382C6D-4C7E-B5E0-8732-16A00B917323";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 6;
	setAttr ".radi" 1.7920891871819129;
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 8.960445935909565 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftElbowEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "96680848-4683-8536-9DEB-19B265890D91";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 7;
	setAttr ".radi" 1.7920891871819129;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -8.960445935909565 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightElbowEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "0139652F-41D9-43C4-B3C0-5B8813CC3A4A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 8;
	setAttr ".radi" 1.7920891871819129;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -8.960445935909565 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_ChestOriginEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "83B4FA62-483C-0782-5338-2585D8DCA42F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -95.706346183470444 -90 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 9;
	setAttr ".radi" 1.7920891871819129;
	setAttr -l on ".jo" -type "double3" 90 -5.7063461834704032 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_ChestEndEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "62DB3B96-4873-6045-CE2E-30892A685BBB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -78.628001426384586 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 10;
	setAttr ".radi" 13.440668903864347;
	setAttr -l on ".jo" -type "double3" 90 11.37199857361543 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftFootEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "029BFFC6-43B4-FFCF-6762-F4BC57712FE7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 11;
	setAttr ".radi" 5.3762675615457383;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightFootEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "464839A4-4F29-AAC0-0A64-CDBDFB4BEAFB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 12;
	setAttr ".radi" 5.3762675615457383;
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 90 0 0 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftShoulderEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "769F2420-4313-7404-1752-5E9B765AAF08";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 13;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightShoulderEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "C3996984-4FC4-0E44-5A75-D987EC126EAF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 14;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_HeadEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "34DB4E5C-4A33-4E08-D6C3-3DA22289DD71";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 15;
	setAttr ".radi" 8.960445935909565;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_LeftHipEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "17892F53-44BB-BA2B-83CB-40971F36850B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 16;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "QuickRigCharacter_Ctrl_RightHipEffector" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "6C06C00B-4AEC-2F7C-AE7F-97AB12D548AA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560502163012 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 17;
	setAttr ".radi" 7.1683567487276516;
	setAttr -l on ".jo" -type "double3" -90 -0.00056050216300177326 -90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Hips" -p "QuickRigCharacter_Ctrl_Reference";
	rename -uid "5A62AD1E-46EC-AD88-BB0E-1E98C03D998B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999972 -6.3611093629270304e-015 
		89.999999999999972 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftUpLeg" -p "QuickRigCharacter_Ctrl_Hips";
	rename -uid "9598D7A6-4804-50AA-FFA4-098CE7B4568D";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.088874967694282533 -0.019488296508789062 0.01060861349105835 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999972 -6.3611093629270304e-015 
		-89.999999999999972 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftLeg" -p "QuickRigCharacter_Ctrl_LeftUpLeg";
	rename -uid "7C7848AA-44B6-461E-C0E5-9C915C969A59";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -0.34095977783203124 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftFoot" -p "QuickRigCharacter_Ctrl_LeftLeg";
	rename -uid "CB30A48E-42EE-91DE-4C52-BBBC60F9FCF0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 -0.46393895149230957 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 139.0363406192921 -89.999965828758263 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90.000039359908939 -49.036340619280352 -89.999947876337487 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftToeBase" -p "QuickRigCharacter_Ctrl_LeftFoot";
	rename -uid "CCC47037-4A34-C08B-A01A-51B23E06B1B7";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" 7.6293945312500002e-008 -0.083864426612854009 
		0.09659866094589234 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightUpLeg" -p "QuickRigCharacter_Ctrl_Hips";
	rename -uid "BB3C4121-42ED-DC68-6212-8AA0615E6289";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.08887496173381805 -0.019488296508789062 0.01060861349105835 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000560502163012 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 -0.00056050216300177326 -90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightLeg" -p "QuickRigCharacter_Ctrl_RightUpLeg";
	rename -uid "A8BA0A5B-4F13-AE02-D52C-A8B60C723FFE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.7763568394002505e-017 -0.34095977783203124 
		3.3354759216308594e-006 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0 -90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightFoot" -p "QuickRigCharacter_Ctrl_RightLeg";
	rename -uid "7FA32C83-4C06-0EB1-686A-C7BD9DB253F2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.7763568394002505e-017 -0.46393895149230957 
		0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -40.963658680759117 -89.996356491406488 -179.99999999995001 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.995803249681501 -49.036341185916022 -90.005557685496981 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightToeBase" -p "QuickRigCharacter_Ctrl_RightFoot";
	rename -uid "78CA9C32-454F-A195-2421-A7B85D168C1F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr -l on ".t" -type "double3" -8.1348419189453119e-006 -0.083864426612854009 
		0.096598663330078133 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 0;
	setAttr ".lk" 0;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Spine" -p "QuickRigCharacter_Ctrl_Hips";
	rename -uid "EED9775B-4290-9FCF-25AD-8E99411D8B38";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.085391311645507811 0.023602046966552735 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -95.706346183470444 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 -5.7063461834703935 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Spine1" -p "QuickRigCharacter_Ctrl_Spine";
	rename -uid "3BD1610E-49ED-129D-2678-BB9E014AB931";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.085387878417968757 0.0085323953628540037 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -95.706346183470444 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 -5.7063461834704032 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Spine2" -p "QuickRigCharacter_Ctrl_Spine1";
	rename -uid "C06E8724-4FB4-A3F0-178A-95A3E7D07005";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.085387878417968757 0.0085323953628540037 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -78.628001426384586 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 11.37199857361543 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftShoulder" -p "QuickRigCharacter_Ctrl_Spine2";
	rename -uid "4B005F16-486B-2E42-80B4-A68A4E9ADEFC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.065026391148567203 0.12677047729492202 -0.036232073307037357 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftArm" -p "QuickRigCharacter_Ctrl_LeftShoulder";
	rename -uid "76951627-4EEA-DF20-FB4A-DBAB9EEAA757";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.097539582252502449 0 -2.2204460492503131e-018 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftForeArm" -p "QuickRigCharacter_Ctrl_LeftArm";
	rename -uid "1D789C89-40F0-F695-6CAD-BDB641E12553";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.21783212661743165 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_LeftHand" -p "QuickRigCharacter_Ctrl_LeftForeArm";
	rename -uid "C94FCA04-4DF0-E2A1-3223-13BD1FE009B9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.20068347930908204 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightShoulder" -p "QuickRigCharacter_Ctrl_Spine2";
	rename -uid "23372843-453B-25E6-991D-C8A0D5EAFF6E";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.065026389956474306 0.12677047729492202 -0.036232073307037357 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra";
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightArm" -p "QuickRigCharacter_Ctrl_RightShoulder";
	rename -uid "1D603514-4187-4339-4F8E-9FB78B9EE730";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.097539587020874022 -2.8421709430404008e-016 
		0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightForeArm" -p "QuickRigCharacter_Ctrl_RightArm";
	rename -uid "E810E424-43C4-8A9E-D283-C29AD2BA4DAA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.21783212661743165 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_RightHand" -p "QuickRigCharacter_Ctrl_RightForeArm";
	rename -uid "D5B5B743-4296-4BA8-EC3C-AA9BA2456803";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.20068347930908204 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Neck" -p "QuickRigCharacter_Ctrl_Spine2";
	rename -uid "76BA1FC9-48D8-E8FE-10BC-5EAD211E3FE1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -8.4703294725430036e-024 0.23494583129882826 
		-0.047253910899162296 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90.025872173249013 -90 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 -0.025872173249000967 90.000000000000014 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode hikFKJoint -n "QuickRigCharacter_Ctrl_Head" -p "QuickRigCharacter_Ctrl_Neck";
	rename -uid "4032158A-4730-3461-3464-5FBF7B7DE289";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.091316070556640622 4.1234195232391355e-005 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999972 -6.3611093629270304e-015 
		89.999999999999972 ;
	setAttr -l on ".jo";
	setAttr ".radi" 3.5841783743638258;
instanceable -a 0;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "C5D28978-4841-A130-95A9-3DBF2229F83E";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "66440FC3-43A4-1948-9BCA-99B25A8699F6";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "19F99573-42EA-B9F5-8FDF-9A834F8C6C85";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "C16DFE11-47D6-6237-C042-C8938E4ACC68";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2F3FF6A0-4A3D-5B0A-9B7E-588AF79B572D";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D7131A85-40EF-75DB-E9A6-C28EB00B0244";
	setAttr ".cdl" 2;
	setAttr -s 7 ".dli[1:6]"  1 2 3 4 5 6;
	setAttr -s 7 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "0CCDA8F6-44A7-1893-42B1-BFA40A5FB31C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CEFB5165-40DF-9194-DF2B-20B9E762BAB4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F9DE4B5A-452B-2711-95DD-B198CF34B9D6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D769F78A-400C-FE12-8092-559C445F43AC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 815\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 815\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 815\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 815\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 815\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 815\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1304\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1304\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1304\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1304\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.05 -size 0.12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "71F41281-4985-DB8A-D5DB-FD99590D2AF1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 41 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "body";
	rename -uid "80121593-4E95-A84E-1F19-AAA71B4E2256";
	setAttr ".do" 1;
createNode displayLayer -n "img";
	rename -uid "07A0EDB2-403A-E369-DF5B-2CA2DB1A3A92";
	setAttr ".do" 2;
createNode displayLayer -n "apose";
	rename -uid "01923FB5-425E-7411-3853-67BEDA25CCAD";
	setAttr ".do" 3;
createNode shadingEngine -n "hand_face:initialShadingGroup1";
	rename -uid "2514057B-41A9-2E8C-6340-BA858B63D2E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "hand_face:materialInfo1";
	rename -uid "44CBDC47-4C55-0153-2B7D-FC87D0B3EB44";
createNode lambert -n "hand_face:initialShadingGroup2";
	rename -uid "20B7CC29-4C5F-D22B-9B3E-3980F39495A3";
createNode shadingEngine -n "hand_face:initialShadingGroup3";
	rename -uid "1F014A68-4E4B-DDBE-1E4A-77BA9457DCC2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "hand_face:materialInfo2";
	rename -uid "998865BC-49F5-E12D-8BDD-5FA298F6690B";
createNode lambert -n "hand_face:initialShadingGroup4";
	rename -uid "FE34DEAE-43F3-9A22-9B84-8CABC720715A";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode displayLayer -n "layer1";
	rename -uid "047222D5-4D27-DC05-3DCD-E79FF3F4B652";
	setAttr ".do" 4;
createNode displayLayer -n "layer2";
	rename -uid "AF88D3F0-47D1-8C21-F671-B59286530872";
	setAttr ".do" 5;
createNode displayLayer -n "layer3";
	rename -uid "37A09852-4F35-34EB-A7CC-F694424853EE";
	setAttr ".do" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "282C04FA-4B71-0B56-4749-FD880683DADA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -891.66663123501826 -1923.3915142501128 ;
	setAttr ".tgi[0].vh" -type "double2" 1727.3808837410031 1663.8677150388526 ;
createNode shadingEngine -n "obj_head:initialShadingGroup";
	rename -uid "11DD9BF6-4ED9-62D6-5401-C8BE912A1047";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "obj_head:materialInfo1";
	rename -uid "6FF8AAD8-4F52-D4B4-A5E7-C9B79433B880";
createNode lambert -n "obj_head:initialShadingGroup1";
	rename -uid "4B7E754C-46E5-8DF1-4AA3-46A7D549726D";
	setAttr ".c" -type "float3" 0.2 0.13 0.44999999 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A54DABF5-4D38-E29D-D3E3-A99B9B97D953";
createNode blinn -n "blinn1";
	rename -uid "4189AC62-49FF-03F6-3E12-A39D1770EE7C";
createNode shadingEngine -n "blinn1SG";
	rename -uid "4EC50898-427E-B2D1-37E2-C98673AF94EF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8A031905-4029-1771-01F8-80BC4C4A31B0";
createNode HIKCharacterNode -n "QuickRigCharacter";
	rename -uid "7BA74C28-4317-646F-CBD4-6C8FCF408DAB";
	addAttr -r false -ci true -sn "quickRigInfo" -ln "quickRigInfo" -at "compound" 
		-nc 3;
	addAttr -r false -s false -ci true -m -im false -sn "meshes" -ln "meshes" -at "message" 
		-p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "guides" -ln "guides" -at "message" -p "quickRigInfo";
	addAttr -r false -s false -ci true -sn "skeleton" -ln "skeleton" -at "message" -p "quickRigInfo";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".ReferenceTx" -7.4505805969238281e-008;
	setAttr ".ReferenceTy" -0.0033457183744758368;
	setAttr ".ReferenceTz" 0.015766620635986328;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTx" -7.4505805969238281e-008;
	setAttr ".HipsTy" 0.92971718311309814;
	setAttr ".HipsTz" 0.01050102710723877;
	setAttr ".HipsRx" 90;
	setAttr ".HipsRy" -15.450732041949561;
	setAttr ".HipsRz" 90;
	setAttr ".HipsJointOrientx" 90;
	setAttr ".HipsJointOrienty" -15.45073204194955;
	setAttr ".HipsJointOrientz" 90;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.088874891400337219;
	setAttr ".LeftUpLegTy" 0.91022887825965881;
	setAttr ".LeftUpLegTz" 0.02110964059829713;
	setAttr ".LeftUpLegRx" -90;
	setAttr ".LeftUpLegRz" -90;
	setAttr ".LeftUpLegSx" 1.0000000000000002;
	setAttr ".LeftUpLegSy" 1.0000000000000002;
	setAttr ".LeftUpLegJointOrientx" -9.3428793767990803e-015;
	setAttr ".LeftUpLegJointOrienty" -1.4312496066585827e-014;
	setAttr ".LeftUpLegJointOrientz" 164.54926795805045;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.088874891400337219;
	setAttr ".LeftLegTy" 0.56926910752252968;
	setAttr ".LeftLegTz" 0.021109640598297119;
	setAttr ".LeftLegRx" -90;
	setAttr ".LeftLegRz" -90;
	setAttr ".LeftLegSx" 1.0000000000000002;
	setAttr ".LeftLegSy" 1.0000000000000002;
	setAttr ".LeftLegJointOrientx" -8.8731143634818446e-015;
	setAttr ".LeftLegJointOrienty" -1.5902773407317587e-014;
	setAttr ".LeftLegJointOrientz" 3.1805546814635176e-015;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.088874891400337219;
	setAttr ".LeftFootTy" 0.10533015081414568;
	setAttr ".LeftFootTz" 0.021109640598297119;
	setAttr ".LeftFootRx" -90;
	setAttr ".LeftFootRy" -49.03634222875899;
	setAttr ".LeftFootRz" -90;
	setAttr ".LeftFootSx" 0.99999999999983047;
	setAttr ".LeftFootSy" 1.0000000000000002;
	setAttr ".LeftFootSz" 0.99999999999983014;
	setAttr ".LeftFootJointOrientx" 8.5932708197788673e-015;
	setAttr ".LeftFootJointOrienty" -3.3397537325450578e-005;
	setAttr ".LeftFootJointOrientz" -49.036342228758983;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -0.088875040411949158;
	setAttr ".RightUpLegTy" 0.91022887825965881;
	setAttr ".RightUpLegTz" 0.021109640598297154;
	setAttr ".RightUpLegRx" 90;
	setAttr ".RightUpLegRy" 0.00056049480830303033;
	setAttr ".RightUpLegRz" 90;
	setAttr ".RightUpLegJointOrientx" 9.1439546970657756e-015;
	setAttr ".RightUpLegJointOrienty" 1.4312585517823191e-014;
	setAttr ".RightUpLegJointOrientz" -15.451292536757864;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -0.088875040411949158;
	setAttr ".RightLegTy" 0.56926910753884408;
	setAttr ".RightLegTz" 0.021112976030382372;
	setAttr ".RightLegRx" 90;
	setAttr ".RightLegRz" 90;
	setAttr ".RightLegJointOrientx" 8.8731195647991704e-015;
	setAttr ".RightLegJointOrienty" 1.5902773407317584e-014;
	setAttr ".RightLegJointOrientz" 0.00056049480830263276;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -0.088875040411949158;
	setAttr ".RightFootTy" 0.10533015083045996;
	setAttr ".RightFootTz" 0.021112976030382372;
	setAttr ".RightFootRx" 89.995806928747186;
	setAttr ".RightFootRy" 49.036341995163504;
	setAttr ".RightFootRz" 89.994447186695609;
	setAttr ".RightFootJointOrientx" -1.3396707082578363e-014;
	setAttr ".RightFootJointOrienty" -0.0036403144212833918;
	setAttr ".RightFootJointOrientz" -49.03634212836787;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTx" -7.4505805969238281e-008;
	setAttr ".SpineTy" 1.0151084811699007;
	setAttr ".SpineTz" 0.034103074593652638;
	setAttr ".SpineRx" 90;
	setAttr ".SpineRy" -5.7063450356347891;
	setAttr ".SpineRz" 90;
	setAttr ".SpineJointOrientx" 1.0385397445905336e-014;
	setAttr ".SpineJointOrienty" 1.469194457792578e-014;
	setAttr ".SpineJointOrientz" -9.7443870063147706;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 0.16256590187549591;
	setAttr ".LeftArmTy" 1.3126546740531921;
	setAttr ".LeftArmTz" 0.014935791492462156;
	setAttr ".LeftArmRx" 90;
	setAttr ".LeftArmSx" 0.99999999999999978;
	setAttr ".LeftArmJointOrientx" 90;
	setAttr ".LeftArmJointOrienty" 1.1927080055488187e-014;
	setAttr ".LeftArmJointOrientz" 3.3104297235376218e-031;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 0.3803980145937535;
	setAttr ".LeftForeArmTy" 1.3126546740531921;
	setAttr ".LeftForeArmTz" 0.014935791492462158;
	setAttr ".LeftForeArmRx" 90;
	setAttr ".LeftForeArmSx" 0.99999999999999978;
	setAttr ".LeftForeArmJointOrientx" 1.4312496066585827e-014;
	setAttr ".LeftForeArmJointOrienty" 2.9793867511838572e-030;
	setAttr ".LeftForeArmJointOrientz" -1.1927080055488182e-014;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 0.5810815187413968;
	setAttr ".LeftHandTy" 1.3126546740531921;
	setAttr ".LeftHandTz" 0.014935791492462158;
	setAttr ".LeftHandRx" 90;
	setAttr ".LeftHandSx" 0.99999999999999978;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -0.16256605088710785;
	setAttr ".RightArmTy" 1.3126546740531921;
	setAttr ".RightArmTz" 0.01493579149246216;
	setAttr ".RightArmRx" -90;
	setAttr ".RightArmSy" 1.0000000000000002;
	setAttr ".RightArmSz" 1.0000000000000002;
	setAttr ".RightArmJointOrientx" 90;
	setAttr ".RightArmJointOrienty" -1.033680271475643e-014;
	setAttr ".RightArmJointOrientz" 1.1476156374930398e-030;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -0.38039816360536544;
	setAttr ".RightForeArmTy" 1.3126546740531921;
	setAttr ".RightForeArmTz" 0.014935791492462163;
	setAttr ".RightForeArmRx" -90;
	setAttr ".RightForeArmSy" 1.0000000000000002;
	setAttr ".RightForeArmSz" 1.0000000000000002;
	setAttr ".RightForeArmJointOrientx" 6.3611093629270406e-015;
	setAttr ".RightForeArmJointOrienty" -1.1476156374930427e-030;
	setAttr ".RightForeArmJointOrientz" 1.033680271475643e-014;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -0.58108166775300873;
	setAttr ".RightHandTy" 1.3126546740531921;
	setAttr ".RightHandTz" 0.01493579149246216;
	setAttr ".RightHandRx" -90;
	setAttr ".RightHandSy" 1.0000000000000002;
	setAttr ".RightHandSz" 1.0000000000000002;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTx" -7.4505805969238294e-008;
	setAttr ".HeadTy" 1.51214616894722;
	setAttr ".HeadTz" 0.0039551880450037153;
	setAttr ".HeadRx" 90;
	setAttr ".HeadRy" -0.025872133753457309;
	setAttr ".HeadRz" 90;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.088874965966838609;
	setAttr ".LeftToeBaseTy" 0.021465724946349685;
	setAttr ".LeftToeBaseTz" 0.11770830616732422;
	setAttr ".LeftToeBaseRx" -90;
	setAttr ".LeftToeBaseRy" -49.03634222875899;
	setAttr ".LeftToeBaseRz" -90;
	setAttr ".LeftToeBaseSx" 0.99999999999983047;
	setAttr ".LeftToeBaseSy" 1.0000000000000002;
	setAttr ".LeftToeBaseSz" 0.99999999999983014;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -0.088883168122317002;
	setAttr ".RightToeBaseTy" 0.021465724962664065;
	setAttr ".RightToeBaseTz" 0.11771164125750971;
	setAttr ".RightToeBaseRx" 89.995806928747186;
	setAttr ".RightToeBaseRy" 49.036341995163504;
	setAttr ".RightToeBaseRz" 89.994447186695609;
	setAttr ".RightToeBaseJointOrienty" 1.4622811973002396e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.065026316046714785;
	setAttr ".LeftShoulderTy" 1.3126546740531924;
	setAttr ".LeftShoulderTz" 0.014935791492462136;
	setAttr ".LeftShoulderSx" 0.99999999999999978;
	setAttr ".LeftShoulderJointOrientx" -78.627998930549296;
	setAttr ".LeftShoulderJointOrienty" -89.999999999999986;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.06502646505832671;
	setAttr ".RightShoulderTy" 1.3126546740531924;
	setAttr ".RightShoulderTz" 0.01493579149246211;
	setAttr ".RightShoulderRx" 180;
	setAttr ".RightShoulderSy" 1.0000000000000002;
	setAttr ".RightShoulderSz" 1.0000000000000002;
	setAttr ".RightShoulderJointOrientx" 101.37200106945073;
	setAttr ".RightShoulderJointOrienty" -89.999999999999986;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTx" -7.4505805969238294e-008;
	setAttr ".NeckTy" 1.4208300709724426;
	setAttr ".NeckTz" 0.0039139539003371924;
	setAttr ".NeckRx" 90;
	setAttr ".NeckRy" -0.025872133753457309;
	setAttr ".NeckRz" 90;
	setAttr ".NeckJointOrientx" 8.8801811543669916e-015;
	setAttr ".NeckJointOrienty" 1.5647750417092432e-014;
	setAttr ".NeckJointOrientz" 11.397873203204185;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 0.805197;
	setAttr ".LeftFingerBaseTy" 1.470896;
	setAttr ".LeftFingerBaseTz" 0.013046800000000001;
	setAttr ".LeftFingerBaseRy" -6.2191910648259628e-005;
	setAttr ".RightFingerBaseTx" -0.805196;
	setAttr ".RightFingerBaseTy" 1.470899;
	setAttr ".RightFingerBaseTz" 0.013054600000000001;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Tx" -7.4505805969238294e-008;
	setAttr ".Spine1Ty" 1.1004963827057062;
	setAttr ".Spine1Tz" 0.042635470538859591;
	setAttr ".Spine1Rx" 90;
	setAttr ".Spine1Ry" -5.7063450356347891;
	setAttr ".Spine1Rz" 90;
	setAttr ".Spine1JointOrientx" 1.0385397625222921e-014;
	setAttr ".Spine1JointOrienty" 1.4691943035847921e-014;
	setAttr ".Spine1JointOrientz" -6.3611093629270351e-015;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Tx" -7.4505805969238294e-008;
	setAttr ".Spine2Ty" 1.1858842842415114;
	setAttr ".Spine2Tz" 0.051167866484066488;
	setAttr ".Spine2Rx" 90;
	setAttr ".Spine2Ry" 11.372001069450729;
	setAttr ".Spine2Rz" 90;
	setAttr ".Spine2JointOrientx" 5.6127278761886954e-015;
	setAttr ".Spine2JointOrienty" 1.7094061500301023e-014;
	setAttr ".Spine2JointOrientz" -17.078346105085515;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 1.19;
	setAttr ".Spine4Ty" 1.23;
	setAttr ".Spine5Ty" 1.27;
	setAttr ".Spine6Ty" 1.31;
	setAttr ".Spine7Ty" 1.35;
	setAttr ".Spine8Ty" 1.3900000000000001;
	setAttr ".Spine9Ty" 1.43;
	setAttr ".Neck1Ty" 1.47;
	setAttr ".Neck2Ty" 1.49;
	setAttr ".Neck3Ty" 1.51;
	setAttr ".Neck4Ty" 1.53;
	setAttr ".Neck5Ty" 1.55;
	setAttr ".Neck6Ty" 1.57;
	setAttr ".Neck7Ty" 1.59;
	setAttr ".Neck8Ty" 1.61;
	setAttr ".Neck9Ty" 1.6300000000000001;
	setAttr ".LeftUpLegRollTx" 0.0891;
	setAttr ".LeftUpLegRollTy" 0.709977;
	setAttr ".LeftLegRollTx" 0.0891;
	setAttr ".LeftLegRollTy" 0.267594;
	setAttr ".RightUpLegRollTx" -0.0891;
	setAttr ".RightUpLegRollTy" 0.709977;
	setAttr ".RightUpLegRollRx" -1.9846138924427527e-005;
	setAttr ".RightLegRollTx" -0.0891;
	setAttr ".RightLegRollTy" 0.267594;
	setAttr ".RightLegRollTz" 4.3902400000000002e-006;
	setAttr ".LeftArmRollTx" 0.329684;
	setAttr ".LeftArmRollTy" 1.465887;
	setAttr ".LeftForeArmRollTx" 0.613404;
	setAttr ".LeftForeArmRollTy" 1.465887;
	setAttr ".RightArmRollTx" -0.329685;
	setAttr ".RightArmRollTy" 1.46589;
	setAttr ".RightForeArmRollTx" -0.613405;
	setAttr ".RightForeArmRollTy" 1.46589;
	setAttr ".HipsTranslationTy" 1;
	setAttr ".LeftHandThumb1Tx" 0.760586;
	setAttr ".LeftHandThumb1Ty" 1.457902;
	setAttr ".LeftHandThumb1Tz" 0.04282430000000001;
	setAttr ".LeftHandThumb2Tx" 0.785712;
	setAttr ".LeftHandThumb2Ty" 1.4525409999999999;
	setAttr ".LeftHandThumb2Tz" 0.049898900000000003;
	setAttr ".LeftHandThumb2Rz" -5.1986726165753493e-006;
	setAttr ".LeftHandThumb3Tx" 0.81114400000000009;
	setAttr ".LeftHandThumb3Ty" 1.4525409999999999;
	setAttr ".LeftHandThumb3Tz" 0.049899;
	setAttr ".LeftHandThumb4Tx" 0.837811;
	setAttr ".LeftHandThumb4Ty" 1.4525409999999999;
	setAttr ".LeftHandThumb4Tz" 0.049898900000000003;
	setAttr ".LeftHandIndex1Tx" 0.80531800000000009;
	setAttr ".LeftHandIndex1Ty" 1.467884;
	setAttr ".LeftHandIndex1Tz" 0.034716700000000003;
	setAttr ".LeftHandIndex1Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex2Tx" 0.847546;
	setAttr ".LeftHandIndex2Ty" 1.467884;
	setAttr ".LeftHandIndex2Tz" 0.036188699999999997;
	setAttr ".LeftHandIndex2Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex3Tx" 0.874069;
	setAttr ".LeftHandIndex3Ty" 1.467884;
	setAttr ".LeftHandIndex3Tz" 0.037113199999999999;
	setAttr ".LeftHandIndex3Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandIndex4Tx" 0.8936400000000001;
	setAttr ".LeftHandIndex4Ty" 1.467884;
	setAttr ".LeftHandIndex4Tz" 0.0377954;
	setAttr ".LeftHandIndex4Ry" -0.03490658477808721;
	setAttr ".LeftHandIndex4Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandMiddle1Tx" 0.805197;
	setAttr ".LeftHandMiddle1Ty" 1.470896;
	setAttr ".LeftHandMiddle1Tz" 0.013046800000000001;
	setAttr ".LeftHandMiddle1Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle2Tx" 0.85383;
	setAttr ".LeftHandMiddle2Ty" 1.470896;
	setAttr ".LeftHandMiddle2Tz" 0.0130499;
	setAttr ".LeftHandMiddle2Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle3Tx" 0.8814820000000001;
	setAttr ".LeftHandMiddle3Ty" 1.470896;
	setAttr ".LeftHandMiddle3Tz" 0.013051600000000002;
	setAttr ".LeftHandMiddle3Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandMiddle4Tx" 0.901539;
	setAttr ".LeftHandMiddle4Ty" 1.470896;
	setAttr ".LeftHandMiddle4Tz" 0.0130528;
	setAttr ".LeftHandMiddle4Ry" -6.2191910648259628e-005;
	setAttr ".LeftHandRing1Tx" 0.806036;
	setAttr ".LeftHandRing1Ty" 1.469686;
	setAttr ".LeftHandRing1Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing1Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing2Tx" 0.85141400000000012;
	setAttr ".LeftHandRing2Ty" 1.469686;
	setAttr ".LeftHandRing2Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing2Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing3Tx" 0.874459;
	setAttr ".LeftHandRing3Ty" 1.469686;
	setAttr ".LeftHandRing3Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing3Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandRing4Tx" 0.893693;
	setAttr ".LeftHandRing4Ty" 1.469686;
	setAttr ".LeftHandRing4Tz" -0.0079316000000000005;
	setAttr ".LeftHandRing4Ry" -6.2195314040301017e-005;
	setAttr ".LeftHandPinky1Tx" 0.805921;
	setAttr ".LeftHandPinky1Ty" 1.462757;
	setAttr ".LeftHandPinky1Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky1Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky2Tx" 0.836362;
	setAttr ".LeftHandPinky2Ty" 1.462757;
	setAttr ".LeftHandPinky2Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky2Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky3Tx" 0.856107;
	setAttr ".LeftHandPinky3Ty" 1.462757;
	setAttr ".LeftHandPinky3Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky3Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandPinky4Tx" 0.872774;
	setAttr ".LeftHandPinky4Ty" 1.462757;
	setAttr ".LeftHandPinky4Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky4Rz" 1.3317315978322253e-005;
	setAttr ".LeftHandExtraFinger1Tx" 0.805921;
	setAttr ".LeftHandExtraFinger1Ty" 1.467884;
	setAttr ".LeftHandExtraFinger1Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 0.826362;
	setAttr ".LeftHandExtraFinger2Ty" 1.467884;
	setAttr ".LeftHandExtraFinger2Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 0.846107;
	setAttr ".LeftHandExtraFinger3Ty" 1.467884;
	setAttr ".LeftHandExtraFinger3Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 0.862774;
	setAttr ".LeftHandExtraFinger4Ty" 1.467884;
	setAttr ".LeftHandExtraFinger4Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -0.760582;
	setAttr ".RightHandThumb1Ty" 1.457905;
	setAttr ".RightHandThumb1Tz" 0.042828100000000008;
	setAttr ".RightHandThumb2Tx" -0.785708;
	setAttr ".RightHandThumb2Ty" 1.452544;
	setAttr ".RightHandThumb2Tz" 0.049904900000000002;
	setAttr ".RightHandThumb2Rz" -1.0508383080162579e-005;
	setAttr ".RightHandThumb3Tx" -0.811124;
	setAttr ".RightHandThumb3Ty" 1.452544;
	setAttr ".RightHandThumb3Tz" 0.050793100000000008;
	setAttr ".RightHandThumb3Rz" -6.8328593018026814e-006;
	setAttr ".RightHandThumb4Tx" -0.837775;
	setAttr ".RightHandThumb4Ty" 1.452544;
	setAttr ".RightHandThumb4Tz" 0.0517245;
	setAttr ".RightHandThumb4Rz" -6.8328593018026814e-006;
	setAttr ".RightHandIndex1Tx" -0.805315;
	setAttr ".RightHandIndex1Ty" 1.4678870000000002;
	setAttr ".RightHandIndex1Tz" 0.034724400000000002;
	setAttr ".RightHandIndex1Ry" -0.034907713534874346;
	setAttr ".RightHandIndex2Tx" -0.847543;
	setAttr ".RightHandIndex2Ty" 1.4678870000000002;
	setAttr ".RightHandIndex2Tz" 0.0332509;
	setAttr ".RightHandIndex2Ry" -0.034907713150901909;
	setAttr ".RightHandIndex3Tx" -0.874066;
	setAttr ".RightHandIndex3Ty" 1.4678870000000002;
	setAttr ".RightHandIndex3Tz" 0.032325399999999997;
	setAttr ".RightHandIndex3Ry" -0.034907713150901909;
	setAttr ".RightHandIndex4Tx" -0.8936360000000001;
	setAttr ".RightHandIndex4Ty" 1.4678870000000002;
	setAttr ".RightHandIndex4Tz" 0.031642499999999997;
	setAttr ".RightHandIndex4Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle1Tx" -0.805196;
	setAttr ".RightHandMiddle1Ty" 1.470899;
	setAttr ".RightHandMiddle1Tz" 0.013054600000000001;
	setAttr ".RightHandMiddle1Ry" -0.034907713534874346;
	setAttr ".RightHandMiddle2Tx" -0.853799;
	setAttr ".RightHandMiddle2Ty" 1.470899;
	setAttr ".RightHandMiddle2Tz" 0.011358600000000002;
	setAttr ".RightHandMiddle2Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle3Tx" -0.88143500000000008;
	setAttr ".RightHandMiddle3Ty" 1.470899;
	setAttr ".RightHandMiddle3Tz" 0.0103943;
	setAttr ".RightHandMiddle3Ry" -0.034907713150901909;
	setAttr ".RightHandMiddle4Tx" -0.90147900000000025;
	setAttr ".RightHandMiddle4Ty" 1.470899;
	setAttr ".RightHandMiddle4Tz" 0.0096948299999999998;
	setAttr ".RightHandMiddle4Ry" -0.034907713150901909;
	setAttr ".RightHandRing1Tx" -0.806037;
	setAttr ".RightHandRing1Ty" 1.469689;
	setAttr ".RightHandRing1Tz" -0.0079237700000000001;
	setAttr ".RightHandRing1Ry" -0.034907713534874346;
	setAttr ".RightHandRing2Tx" -0.851387;
	setAttr ".RightHandRing2Ty" 1.469689;
	setAttr ".RightHandRing2Tz" -0.0095062399999999991;
	setAttr ".RightHandRing2Ry" -0.034907713150901909;
	setAttr ".RightHandRing3Tx" -0.874418;
	setAttr ".RightHandRing3Ty" 1.469689;
	setAttr ".RightHandRing3Tz" -0.0103099;
	setAttr ".RightHandRing3Ry" -0.034907713150901909;
	setAttr ".RightHandRing4Tx" -0.8936400000000001;
	setAttr ".RightHandRing4Ty" 1.469689;
	setAttr ".RightHandRing4Tz" -0.010980699999999999;
	setAttr ".RightHandRing4Ry" -0.034907713150901909;
	setAttr ".RightHandPinky1Tx" -0.805924;
	setAttr ".RightHandPinky1Ty" 1.46276;
	setAttr ".RightHandPinky1Tz" -0.0248957;
	setAttr ".RightHandPinky1Ry" -0.034907713534874346;
	setAttr ".RightHandPinky1Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky2Tx" -0.836383;
	setAttr ".RightHandPinky2Ty" 1.462759;
	setAttr ".RightHandPinky2Tz" -0.025958600000000002;
	setAttr ".RightHandPinky2Ry" -0.034907713150901909;
	setAttr ".RightHandPinky2Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky3Tx" -0.85614;
	setAttr ".RightHandPinky3Ty" 1.462758;
	setAttr ".RightHandPinky3Tz" -0.026648;
	setAttr ".RightHandPinky3Ry" -0.034907713150901909;
	setAttr ".RightHandPinky3Rz" 2.1663288475141418e-005;
	setAttr ".RightHandPinky4Tx" -0.872816;
	setAttr ".RightHandPinky4Ty" 1.462758;
	setAttr ".RightHandPinky4Tz" -0.027229900000000001;
	setAttr ".RightHandPinky4Ry" -0.034907713150901909;
	setAttr ".RightHandPinky4Rz" 2.1663288475141418e-005;
	setAttr ".RightHandExtraFinger1Tx" -0.805924;
	setAttr ".RightHandExtraFinger1Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger1Tz" -0.044895699999999997;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -0.826383;
	setAttr ".RightHandExtraFinger2Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger2Tz" -0.045958600000000002;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -0.84614000000000011;
	setAttr ".RightHandExtraFinger3Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger3Tz" -0.046648000000000009;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -0.862816;
	setAttr ".RightHandExtraFinger4Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger4Tz" -0.047229900000000005;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 0.0618422;
	setAttr ".LeftFootThumb1Ty" 0.049992500000000002;
	setAttr ".LeftFootThumb1Tz" 0.019301200000000001;
	setAttr ".LeftFootThumb2Tx" 0.045514100000000009;
	setAttr ".LeftFootThumb2Ty" 0.026643799999999999;
	setAttr ".LeftFootThumb2Tz" 0.035919399999999997;
	setAttr ".LeftFootThumb3Tx" 0.034619499999999997;
	setAttr ".LeftFootThumb3Ty" 0.0188808;
	setAttr ".LeftFootThumb3Tz" 0.0640014;
	setAttr ".LeftFootThumb4Tx" 0.034619499999999997;
	setAttr ".LeftFootThumb4Ty" 0.0188808;
	setAttr ".LeftFootThumb4Tz" 0.096972;
	setAttr ".LeftFootIndex1Tx" 0.071105199999999993;
	setAttr ".LeftFootIndex1Ty" 0.0188808;
	setAttr ".LeftFootIndex1Tz" 0.129547;
	setAttr ".LeftFootIndex2Tx" 0.071105199999999993;
	setAttr ".LeftFootIndex2Ty" 0.0188808;
	setAttr ".LeftFootIndex2Tz" 0.148297;
	setAttr ".LeftFootIndex3Tx" 0.071105199999999993;
	setAttr ".LeftFootIndex3Ty" 0.0188808;
	setAttr ".LeftFootIndex3Tz" 0.16763100000000003;
	setAttr ".LeftFootIndex4Tx" 0.071105199999999993;
	setAttr ".LeftFootIndex4Ty" 0.0188808;
	setAttr ".LeftFootIndex4Tz" 0.188507;
	setAttr ".LeftFootMiddle1Tx" 0.089167200000000002;
	setAttr ".LeftFootMiddle1Ty" 0.0188808;
	setAttr ".LeftFootMiddle1Tz" 0.129547;
	setAttr ".LeftFootMiddle2Tx" 0.089167200000000002;
	setAttr ".LeftFootMiddle2Ty" 0.0188808;
	setAttr ".LeftFootMiddle2Tz" 0.148286;
	setAttr ".LeftFootMiddle3Tx" 0.089167200000000002;
	setAttr ".LeftFootMiddle3Ty" 0.0188808;
	setAttr ".LeftFootMiddle3Tz" 0.166497;
	setAttr ".LeftFootMiddle4Tx" 0.089167200000000002;
	setAttr ".LeftFootMiddle4Ty" 0.0188808;
	setAttr ".LeftFootMiddle4Tz" 0.18565600000000002;
	setAttr ".LeftFootRing1Tx" 0.107239;
	setAttr ".LeftFootRing1Ty" 0.0188808;
	setAttr ".LeftFootRing1Tz" 0.129547;
	setAttr ".LeftFootRing2Tx" 0.107239;
	setAttr ".LeftFootRing2Ty" 0.0188808;
	setAttr ".LeftFootRing2Tz" 0.147135;
	setAttr ".LeftFootRing3Tx" 0.107239;
	setAttr ".LeftFootRing3Ty" 0.0188808;
	setAttr ".LeftFootRing3Tz" 0.164722;
	setAttr ".LeftFootRing4Tx" 0.107239;
	setAttr ".LeftFootRing4Ty" 0.0188808;
	setAttr ".LeftFootRing4Tz" 0.182748;
	setAttr ".LeftFootPinky1Tx" 0.125298;
	setAttr ".LeftFootPinky1Ty" 0.0188808;
	setAttr ".LeftFootPinky1Tz" 0.129547;
	setAttr ".LeftFootPinky2Tx" 0.125298;
	setAttr ".LeftFootPinky2Ty" 0.0188808;
	setAttr ".LeftFootPinky2Tz" 0.145796;
	setAttr ".LeftFootPinky3Tx" 0.125298;
	setAttr ".LeftFootPinky3Ty" 0.0188808;
	setAttr ".LeftFootPinky3Tz" 0.161436;
	setAttr ".LeftFootPinky4Tx" 0.125298;
	setAttr ".LeftFootPinky4Ty" 0.0188808;
	setAttr ".LeftFootPinky4Tz" 0.178612;
	setAttr ".LeftFootExtraFinger1Tx" 0.050860900000000007;
	setAttr ".LeftFootExtraFinger1Ty" 0.0188808;
	setAttr ".LeftFootExtraFinger1Tz" 0.129547;
	setAttr ".LeftFootExtraFinger2Tx" 0.050860900000000007;
	setAttr ".LeftFootExtraFinger2Ty" 0.0188808;
	setAttr ".LeftFootExtraFinger2Tz" 0.14944;
	setAttr ".LeftFootExtraFinger3Tx" 0.050860900000000007;
	setAttr ".LeftFootExtraFinger3Ty" 0.0188808;
	setAttr ".LeftFootExtraFinger3Tz" 0.169918;
	setAttr ".LeftFootExtraFinger4Tx" 0.050860900000000007;
	setAttr ".LeftFootExtraFinger4Ty" 0.0188808;
	setAttr ".LeftFootExtraFinger4Tz" 0.190794;
	setAttr ".RightFootThumb1Tx" -0.0618;
	setAttr ".RightFootThumb1Ty" 0.049992500000000002;
	setAttr ".RightFootThumb1Tz" 0.019301200000000001;
	setAttr ".RightFootThumb2Tx" -0.0455;
	setAttr ".RightFootThumb2Ty" 0.026643799999999999;
	setAttr ".RightFootThumb2Tz" 0.035919399999999997;
	setAttr ".RightFootThumb3Tx" -0.0346;
	setAttr ".RightFootThumb3Ty" 0.0188808;
	setAttr ".RightFootThumb3Tz" 0.0640014;
	setAttr ".RightFootThumb4Tx" -0.0346;
	setAttr ".RightFootThumb4Ty" 0.0188808;
	setAttr ".RightFootThumb4Tz" 0.096972;
	setAttr ".RightFootIndex1Tx" -0.0711;
	setAttr ".RightFootIndex1Ty" 0.0188808;
	setAttr ".RightFootIndex1Tz" 0.129547;
	setAttr ".RightFootIndex2Tx" -0.0711;
	setAttr ".RightFootIndex2Ty" 0.0188808;
	setAttr ".RightFootIndex2Tz" 0.148297;
	setAttr ".RightFootIndex3Tx" -0.0711;
	setAttr ".RightFootIndex3Ty" 0.0188808;
	setAttr ".RightFootIndex3Tz" 0.16763100000000003;
	setAttr ".RightFootIndex4Tx" -0.0711;
	setAttr ".RightFootIndex4Ty" 0.0188808;
	setAttr ".RightFootIndex4Tz" 0.188507;
	setAttr ".RightFootMiddle1Tx" -0.0892;
	setAttr ".RightFootMiddle1Ty" 0.0188808;
	setAttr ".RightFootMiddle1Tz" 0.129547;
	setAttr ".RightFootMiddle2Tx" -0.0892;
	setAttr ".RightFootMiddle2Ty" 0.0188808;
	setAttr ".RightFootMiddle2Tz" 0.148286;
	setAttr ".RightFootMiddle3Tx" -0.0892;
	setAttr ".RightFootMiddle3Ty" 0.0188808;
	setAttr ".RightFootMiddle3Tz" 0.166497;
	setAttr ".RightFootMiddle4Tx" -0.0892;
	setAttr ".RightFootMiddle4Ty" 0.0188808;
	setAttr ".RightFootMiddle4Tz" 0.18565600000000002;
	setAttr ".RightFootRing1Tx" -0.1072;
	setAttr ".RightFootRing1Ty" 0.0188808;
	setAttr ".RightFootRing1Tz" 0.129547;
	setAttr ".RightFootRing2Tx" -0.1072;
	setAttr ".RightFootRing2Ty" 0.0188808;
	setAttr ".RightFootRing2Tz" 0.147135;
	setAttr ".RightFootRing3Tx" -0.1072;
	setAttr ".RightFootRing3Ty" 0.0188808;
	setAttr ".RightFootRing3Tz" 0.164722;
	setAttr ".RightFootRing4Tx" -0.1072;
	setAttr ".RightFootRing4Ty" 0.0188808;
	setAttr ".RightFootRing4Tz" 0.182748;
	setAttr ".RightFootPinky1Tx" -0.1253;
	setAttr ".RightFootPinky1Ty" 0.0188808;
	setAttr ".RightFootPinky1Tz" 0.129547;
	setAttr ".RightFootPinky2Tx" -0.1253;
	setAttr ".RightFootPinky2Ty" 0.0188808;
	setAttr ".RightFootPinky2Tz" 0.145796;
	setAttr ".RightFootPinky3Tx" -0.1253;
	setAttr ".RightFootPinky3Ty" 0.0188808;
	setAttr ".RightFootPinky3Tz" 0.161436;
	setAttr ".RightFootPinky4Tx" -0.1253;
	setAttr ".RightFootPinky4Ty" 0.0188808;
	setAttr ".RightFootPinky4Tz" 0.178612;
	setAttr ".RightFootExtraFinger1Tx" -0.0509;
	setAttr ".RightFootExtraFinger1Ty" 0.0188808;
	setAttr ".RightFootExtraFinger1Tz" 0.129547;
	setAttr ".RightFootExtraFinger2Tx" -0.0509;
	setAttr ".RightFootExtraFinger2Ty" 0.0188808;
	setAttr ".RightFootExtraFinger2Tz" 0.14944;
	setAttr ".RightFootExtraFinger3Tx" -0.0509;
	setAttr ".RightFootExtraFinger3Ty" 0.0188808;
	setAttr ".RightFootExtraFinger3Tz" 0.169918;
	setAttr ".RightFootExtraFinger4Tx" -0.0509;
	setAttr ".RightFootExtraFinger4Ty" 0.0188808;
	setAttr ".RightFootExtraFinger4Tz" 0.190794;
	setAttr ".LeftInHandThumbTx" 0.717099;
	setAttr ".LeftInHandThumbTy" 1.465887;
	setAttr ".LeftInHandIndexTx" 0.717099;
	setAttr ".LeftInHandIndexTy" 1.465887;
	setAttr ".LeftInHandMiddleTx" 0.717099;
	setAttr ".LeftInHandMiddleTy" 1.465887;
	setAttr ".LeftInHandRingTx" 0.717099;
	setAttr ".LeftInHandRingTy" 1.465887;
	setAttr ".LeftInHandPinkyTx" 0.717099;
	setAttr ".LeftInHandPinkyTy" 1.465887;
	setAttr ".LeftInHandExtraFingerTx" 0.717099;
	setAttr ".LeftInHandExtraFingerTy" 1.465887;
	setAttr ".RightInHandThumbTx" -0.717099;
	setAttr ".RightInHandThumbTy" 1.46589;
	setAttr ".RightInHandIndexTx" -0.717099;
	setAttr ".RightInHandIndexTy" 1.46589;
	setAttr ".RightInHandMiddleTx" -0.717099;
	setAttr ".RightInHandMiddleTy" 1.46589;
	setAttr ".RightInHandRingTx" -0.717099;
	setAttr ".RightInHandRingTy" 1.46589;
	setAttr ".RightInHandPinkyTx" -0.717099;
	setAttr ".RightInHandPinkyTy" 1.46589;
	setAttr ".RightInHandExtraFingerTx" -0.717099;
	setAttr ".RightInHandExtraFingerTy" 1.46589;
	setAttr ".LeftInFootThumbTx" 0.0891;
	setAttr ".LeftInFootThumbTy" 0.081504;
	setAttr ".LeftInFootIndexTx" 0.0891;
	setAttr ".LeftInFootIndexTy" 0.081504;
	setAttr ".LeftInFootMiddleTx" 0.0891;
	setAttr ".LeftInFootMiddleTy" 0.081504;
	setAttr ".LeftInFootRingTx" 0.0891;
	setAttr ".LeftInFootRingTy" 0.081504;
	setAttr ".LeftInFootPinkyTx" 0.0891;
	setAttr ".LeftInFootPinkyTy" 0.081504;
	setAttr ".LeftInFootExtraFingerTx" 0.0891;
	setAttr ".LeftInFootExtraFingerTy" 0.081504;
	setAttr ".RightInFootThumbTx" -0.0891;
	setAttr ".RightInFootThumbTy" 0.081504;
	setAttr ".RightInFootThumbTz" 4.3882099999999996e-006;
	setAttr ".RightInFootIndexTx" -0.0891;
	setAttr ".RightInFootIndexTy" 0.081504;
	setAttr ".RightInFootIndexTz" 4.3882099999999996e-006;
	setAttr ".RightInFootMiddleTx" -0.0891;
	setAttr ".RightInFootMiddleTy" 0.081504;
	setAttr ".RightInFootMiddleTz" 4.3882099999999996e-006;
	setAttr ".RightInFootRingTx" -0.0891;
	setAttr ".RightInFootRingTy" 0.081504;
	setAttr ".RightInFootRingTz" 4.3882099999999996e-006;
	setAttr ".RightInFootPinkyTx" -0.0891;
	setAttr ".RightInFootPinkyTy" 0.081504;
	setAttr ".RightInFootPinkyTz" 4.3882099999999996e-006;
	setAttr ".RightInFootExtraFingerTx" -0.0891;
	setAttr ".RightInFootExtraFingerTy" 0.081504;
	setAttr ".RightInFootExtraFingerTz" 4.3882099999999996e-006;
	setAttr ".LeftShoulderExtraTx" 0.123536;
	setAttr ".LeftShoulderExtraTy" 1.465887;
	setAttr ".RightShoulderExtraTx" -0.123536;
	setAttr ".RightShoulderExtraTy" 1.46589;
createNode HIKProperty2State -n "HIKproperties1";
	rename -uid "8DE44A62-429E-75C4-DC42-7B9614C949F0";
	setAttr ".OutputPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 0.10533015081414568;
	setAttr ".FootBackToAnkle" 0.048299332784513552;
	setAttr ".FootMiddleToAnkle" 0.096598665569027103;
	setAttr ".FootFrontToMiddle" 0.048299332784513552;
	setAttr ".FootInToAnkle" 0.048299332784513552;
	setAttr ".FootOutToAnkle" 0.048299332784513552;
	setAttr ".HandBottomToWrist" 0.5;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 0.063755119275557895;
	setAttr ".HandFrontToMiddle" 0.063755119275557895;
	setAttr ".HandInToWrist" 0.063755119275557895;
	setAttr ".HandOutToWrist" 0.063755119275557895;
	setAttr ".LeftHandThumbTip" 0.010061234093068916;
	setAttr ".LeftHandIndexTip" 0.010061234093068916;
	setAttr ".LeftHandMiddleTip" 0.010061234093068916;
	setAttr ".LeftHandRingTip" 0.010061234093068916;
	setAttr ".LeftHandPinkyTip" 0.010061234093068916;
	setAttr ".LeftHandExtraFingerTip" 0.010061234093068916;
	setAttr ".RightHandThumbTip" 0.010061234093068916;
	setAttr ".RightHandIndexTip" 0.010061234093068916;
	setAttr ".RightHandMiddleTip" 0.010061234093068916;
	setAttr ".RightHandRingTip" 0.010061234093068916;
	setAttr ".RightHandPinkyTip" 0.010061234093068916;
	setAttr ".RightHandExtraFingerTip" 0.010061234093068916;
	setAttr ".LeftFootThumbTip" 0.010061234093068916;
	setAttr ".LeftFootIndexTip" 0.010061234093068916;
	setAttr ".LeftFootMiddleTip" 0.010061234093068916;
	setAttr ".LeftFootRingTip" 0.010061234093068916;
	setAttr ".LeftFootPinkyTip" 0.010061234093068916;
	setAttr ".LeftFootExtraFingerTip" 0.010061234093068916;
	setAttr ".RightFootThumbTip" 0.010061234093068916;
	setAttr ".RightFootIndexTip" 0.010061234093068916;
	setAttr ".RightFootMiddleTip" 0.010061234093068916;
	setAttr ".RightFootRingTip" 0.010061234093068916;
	setAttr ".RightFootPinkyTip" 0.010061234093068916;
	setAttr ".RightFootExtraFingerTip" 0.010061234093068916;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "33721CFD-4954-85FE-0BAE-D9A033C7640F";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
	setAttr ".decs" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "C5BC21E9-4192-E5A2-CB8F-3B8AFD386134";
	setAttr ".ihi" 0;
	setAttr ".HipsTx" -0.031789247393608097;
	setAttr ".HipsTy" 0.84141868590377278;
	setAttr ".HipsTz" -0.0061164104938507069;
	setAttr ".HipsRx" 22.804297573100438;
	setAttr ".HipsRy" 3.2287372275358233;
	setAttr ".HipsRz" 2.0615466644968405;
	setAttr ".HipsSx" 1.0000000257819297;
	setAttr ".HipsSy" 1.0000000260152517;
	setAttr ".HipsSz" 1.0000000138523504;
	setAttr ".LeftUpLegTx" -0.015957782414470784;
	setAttr ".LeftUpLegTy" 0.015417107264695282;
	setAttr ".LeftUpLegTz" 0.088874996210531632;
	setAttr ".LeftUpLegRx" 31.821382540266395;
	setAttr ".LeftUpLegRy" -1.3212456493220557;
	setAttr ".LeftUpLegRz" 34.88758558893398;
	setAttr ".LeftUpLegSx" 1.0000000493353463;
	setAttr ".LeftUpLegSy" 0.99999990563881558;
	setAttr ".LeftUpLegSz" 1.0000000144644752;
	setAttr ".LeftLegTx" 0.34095989972018209;
	setAttr ".LeftLegTy" -2.1765252782302015e-008;
	setAttr ".LeftLegTz" 1.6697574523050208e-008;
	setAttr ".LeftLegRx" -4.3898277685135838;
	setAttr ".LeftLegRy" 0.0019567832119351427;
	setAttr ".LeftLegRz" 19.862847269634763;
	setAttr ".LeftLegSx" 1.0000000302618826;
	setAttr ".LeftLegSy" 1.0000001134990151;
	setAttr ".LeftLegSz" 1.0000000703932646;
	setAttr ".LeftFootTx" 0.46393891234943258;
	setAttr ".LeftFootTy" 7.2896883906992113e-008;
	setAttr ".LeftFootTz" -4.6564218660893886e-008;
	setAttr ".LeftFootRx" -11.653737929080465;
	setAttr ".LeftFootRy" 2.3526616906414755;
	setAttr ".LeftFootRz" 4.9395590298052241;
	setAttr ".LeftFootSx" 0.99999990017419271;
	setAttr ".LeftFootSy" 0.99999986220873316;
	setAttr ".LeftFootSz" 0.99999995408045916;
	setAttr ".RightUpLegTx" -0.015957749248514119;
	setAttr ".RightUpLegTy" 0.015417085585036787;
	setAttr ".RightUpLegTz" -0.088874964511335655;
	setAttr ".RightUpLegRx" 7.15585048125324;
	setAttr ".RightUpLegRy" -29.381027636298324;
	setAttr ".RightUpLegRz" -65.695996512694975;
	setAttr ".RightUpLegSx" 1.0000000801304023;
	setAttr ".RightUpLegSy" 1.0000001175033049;
	setAttr ".RightUpLegSz" 1.0000001025497283;
	setAttr ".RightLegTx" -0.34096009212016781;
	setAttr ".RightLegTy" 4.4581137188970386e-007;
	setAttr ".RightLegTz" -4.9327727587566987e-006;
	setAttr ".RightLegRx" -2.9863102767480485;
	setAttr ".RightLegRy" -0.023978454640406037;
	setAttr ".RightLegRz" 112.24345681229389;
	setAttr ".RightLegSx" 1.0000000609312059;
	setAttr ".RightLegSy" 1.0000000522160664;
	setAttr ".RightLegSz" 1.0000001519923589;
	setAttr ".RightFootTx" -0.46393907903349735;
	setAttr ".RightFootTy" -2.4429146940008194e-007;
	setAttr ".RightFootTz" 4.9113629110308919e-008;
	setAttr ".RightFootRx" -12.197386289290584;
	setAttr ".RightFootRy" 4.807472856079567;
	setAttr ".RightFootRz" 7.4240183927086791;
	setAttr ".RightFootSx" 0.99999997484204939;
	setAttr ".RightFootSy" 1.0000000044379587;
	setAttr ".RightFootSz" 0.9999999517684911;
	setAttr ".SpineTx" 0.088593077187326091;
	setAttr ".SpineTy" 6.5425036694932713e-008;
	setAttr ".SpineTz" -4.6611310988708968e-008;
	setAttr ".SpineRx" -34.189169922591091;
	setAttr ".SpineRy" -5.2352784496942864;
	setAttr ".SpineRz" 7.2832597012084452;
	setAttr ".SpineSx" 1.0000000509399152;
	setAttr ".SpineSy" 1.0000000039786014;
	setAttr ".SpineSz" 1.000000096515516;
	setAttr ".LeftArmTx" 0.097539589778048538;
	setAttr ".LeftArmTy" 5.9852460481124587e-008;
	setAttr ".LeftArmTz" -3.109030615178199e-009;
	setAttr ".LeftArmRx" -51.846203035859666;
	setAttr ".LeftArmRy" 5.9281042623998292;
	setAttr ".LeftArmRz" 2.5153432956104278;
	setAttr ".LeftArmSx" 0.99999992386172132;
	setAttr ".LeftArmSy" 0.99999995003154596;
	setAttr ".LeftArmSz" 0.99999995183049972;
	setAttr ".LeftForeArmTx" 0.21783220244996065;
	setAttr ".LeftForeArmTy" 2.0980531019176853e-008;
	setAttr ".LeftForeArmTz" 1.4370568379717951e-008;
	setAttr ".LeftForeArmRx" 0.0011771936515176608;
	setAttr ".LeftForeArmRy" 8.8218137384252481e-005;
	setAttr ".LeftForeArmRz" 109.9459141301263;
	setAttr ".LeftForeArmSx" 1.0000000310863559;
	setAttr ".LeftForeArmSy" 1.0000000057213507;
	setAttr ".LeftForeArmSz" 1.0000000184787228;
	setAttr ".LeftHandTx" 0.20068345810176866;
	setAttr ".LeftHandTy" -5.8744106468111565e-010;
	setAttr ".LeftHandTz" -2.2778420429858671e-008;
	setAttr ".LeftHandRx" -78.425859668624369;
	setAttr ".LeftHandRy" -0.00028889369620151649;
	setAttr ".LeftHandSx" 0.99999992636282586;
	setAttr ".LeftHandSy" 1.0000000328769876;
	setAttr ".LeftHandSz" 0.99999994603330788;
	setAttr ".RightArmTx" -0.097539600182073583;
	setAttr ".RightArmTy" 2.5828167906638555e-008;
	setAttr ".RightArmTz" -3.7926038909397161e-009;
	setAttr ".RightArmRx" 64.190455678228503;
	setAttr ".RightArmRy" -15.227001093272596;
	setAttr ".RightArmRz" 4.7670881202152797;
	setAttr ".RightArmSx" 1.0000000921506536;
	setAttr ".RightArmSy" 1.0000001684540947;
	setAttr ".RightArmSz" 1.0000001522984188;
	setAttr ".RightForeArmTx" -0.21783226129038205;
	setAttr ".RightForeArmTy" 5.1449144962134599e-008;
	setAttr ".RightForeArmTz" 1.8540083459583913e-008;
	setAttr ".RightForeArmRx" 0.0022808378301322836;
	setAttr ".RightForeArmRy" -0.00015380330661557607;
	setAttr ".RightForeArmRz" 29.723978826273044;
	setAttr ".RightForeArmSx" 0.99999995390018881;
	setAttr ".RightForeArmSy" 0.99999993510231078;
	setAttr ".RightForeArmSz" 0.99999995991959423;
	setAttr ".RightHandTx" -0.20068356108796834;
	setAttr ".RightHandTy" 9.8042697516120828e-009;
	setAttr ".RightHandTz" -4.5273318107774685e-008;
	setAttr ".RightHandRy" 7.8870792647120895e-005;
	setAttr ".RightHandRz" -0.00020671151858530284;
	setAttr ".RightHandSx" 1.0000001391901292;
	setAttr ".RightHandSy" 1.0000001948837289;
	setAttr ".RightHandSz" 1.0000002463189839;
	setAttr ".HeadTx" 0.091316159566261351;
	setAttr ".HeadTy" 8.7928424905570065e-008;
	setAttr ".HeadTz" 8.4337506223164388e-008;
	setAttr ".HeadRx" 73.048045365715041;
	setAttr ".HeadRy" 24.423385573720328;
	setAttr ".HeadRz" -3.1678477359147199;
	setAttr ".HeadSx" 1.0000000433549823;
	setAttr ".HeadSy" 0.9999999887599168;
	setAttr ".HeadSz" 0.99999993776318519;
	setAttr ".LeftToeBaseTx" 0.12792410132468329;
	setAttr ".LeftToeBaseTy" 1.1541383173607756e-008;
	setAttr ".LeftToeBaseTz" 1.0348215944588902e-007;
	setAttr ".LeftToeBaseRx" -10.81204927942788;
	setAttr ".LeftToeBaseRy" 4.2254058267771812;
	setAttr ".LeftToeBaseRz" -36.10380117147033;
	setAttr ".LeftToeBaseSx" 0.99999997310645083;
	setAttr ".LeftToeBaseSy" 0.99999997042808253;
	setAttr ".LeftToeBaseSz" 1.0000000501506394;
	setAttr ".RightToeBaseTx" -0.1279241034370649;
	setAttr ".RightToeBaseTy" -3.3030988300097873e-008;
	setAttr ".RightToeBaseTz" -2.7705180407622264e-008;
	setAttr ".RightToeBaseSx" 1.0000001082587069;
	setAttr ".RightToeBaseSy" 1.0000000734823742;
	setAttr ".RightToeBaseSz" 1.0000001364049851;
	setAttr ".LeftShoulderTx" 0.13142594904485408;
	setAttr ".LeftShoulderTy" -0.0105243861304427;
	setAttr ".LeftShoulderTz" 0.0650264370571427;
	setAttr ".LeftShoulderRx" -11.218762826328359;
	setAttr ".LeftShoulderRy" -8.5639235623164609;
	setAttr ".LeftShoulderRz" 29.625359729095958;
	setAttr ".LeftShoulderSx" 1.0000001581383722;
	setAttr ".LeftShoulderSy" 1.0000001726020813;
	setAttr ".LeftShoulderSz" 1.0000001405036194;
	setAttr ".RightShoulderTx" 0.13142593482727577;
	setAttr ".RightShoulderTy" -0.010524356987771455;
	setAttr ".RightShoulderTz" -0.065026437245314456;
	setAttr ".RightShoulderRx" -27.281984376694993;
	setAttr ".RightShoulderRy" -12.829049580487395;
	setAttr ".RightShoulderRz" 6.6916536105740123;
	setAttr ".RightShoulderSx" 1.0000000595450207;
	setAttr ".RightShoulderSy" 1.0000000435258778;
	setAttr ".RightShoulderSz" 1.0000000092059267;
	setAttr ".NeckTx" 0.23965124783101871;
	setAttr ".NeckTy" -7.4254428277242819e-008;
	setAttr ".NeckTz" -8.1935626141671495e-008;
	setAttr ".NeckRx" -33.738876391276449;
	setAttr ".NeckRy" -5.091012176505699;
	setAttr ".NeckRz" -6.4375439500765452;
	setAttr ".NeckSx" 1.0000000363522661;
	setAttr ".NeckSy" 0.99999998135502566;
	setAttr ".NeckSz" 0.99999996568527327;
	setAttr ".Spine1Tx" 0.085813169325495695;
	setAttr ".Spine1Ty" -1.1468040845841188e-008;
	setAttr ".Spine1Tz" -1.0511173389460283e-008;
	setAttr ".Spine1Rx" -19.624377090272677;
	setAttr ".Spine1Ry" -1.6237984865656827;
	setAttr ".Spine1Rz" 12.509950805475508;
	setAttr ".Spine1Sx" 1.0000001175852065;
	setAttr ".Spine1Sy" 1.0000000514201521;
	setAttr ".Spine1Sz" 1.0000001399760898;
	setAttr ".Spine2Tx" 0.085813096090604127;
	setAttr ".Spine2Ty" 2.1721903991078761e-008;
	setAttr ".Spine2Tz" 1.1151352552474236e-009;
	setAttr ".Spine2Rx" -8.4737996292482141;
	setAttr ".Spine2Ry" -0.4674449262304019;
	setAttr ".Spine2Rz" 12.926832173489949;
	setAttr ".Spine2Sx" 0.99999991335055705;
	setAttr ".Spine2Sy" 0.99999999702930154;
	setAttr ".Spine2Sz" 1.0000000272307359;
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG";
	rename -uid "B9DAC322-4F7D-779A-040C-5C80C8EA7FFA";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_HipsBPKG";
	rename -uid "3B705D61-40BE-FF76-5C8F-15A13FD27BDB";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_ChestBPKG";
	rename -uid "1A9B3A6E-4556-3317-A77D-589C5F9FC8D8";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftArmBPKG";
	rename -uid "897F6C08-4E5F-1333-7B14-BAB432C1F521";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightArmBPKG";
	rename -uid "3F661007-4DE8-5309-2B1C-FCA2876476A5";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftLegBPKG";
	rename -uid "77AE00A3-4542-63A2-3E98-258309BDAAFD";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightLegBPKG";
	rename -uid "ADEB6D78-42CD-7C2E-3D59-7D99C7A3842B";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_HeadBPKG";
	rename -uid "DA715B44-4732-DAB8-9B4A-D981BC7E2180";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG";
	rename -uid "CE9258BA-4981-7467-E0F9-DAB19BF2CEEE";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG";
	rename -uid "5A1DED4F-4196-B5E5-8F92-F58407026C02";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG";
	rename -uid "52ACBE43-44F8-38AE-F12F-6BB2FCC3F1D7";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG";
	rename -uid "1DA5FC54-4ED4-4685-AE33-F19FD9002CA3";
	setAttr ".cat" -type "string" "BodyPart";
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG1";
	rename -uid "F19B7CFB-4953-22B3-B28F-42AD6F5A5F62";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_HipsBPKG1";
	rename -uid "863207B2-4FC4-976C-EF65-9D8720C38DC7";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_ChestBPKG1";
	rename -uid "3B9C94C3-4D62-280C-B742-D6A8A8D95D23";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftArmBPKG1";
	rename -uid "38FEC467-4CB7-FF51-A6CA-77B2FCE73879";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightArmBPKG1";
	rename -uid "158F3CCD-4E97-A38A-36C2-87BF3B9ED6ED";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftLegBPKG1";
	rename -uid "42CF6A9F-4274-B010-99A0-43ACD5EFCD3A";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightLegBPKG1";
	rename -uid "EED63A22-47AE-C810-F0B3-CFABF4D1051C";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_HeadBPKG1";
	rename -uid "3A4C2F33-4C95-2234-F0CB-27A1870ABF54";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG1";
	rename -uid "B736EE45-4C25-94BB-2573-04BFDDF8A7D7";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG1";
	rename -uid "4F055EB8-4081-3B3E-B06D-FE8BBEE229DC";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG1";
	rename -uid "2922B875-4F20-2A31-5912-2B8DFDCDB947";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG1";
	rename -uid "59EC779B-4E73-299F-1762-B2A4861E8E9F";
	setAttr ".cat" -type "string" "BodyPart";
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG2";
	rename -uid "2995A40B-4E70-223F-F35E-2B8F67B1AECA";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG2";
	rename -uid "187A5CED-4CDF-C1CB-3D0C-7E8693D7A01C";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG2";
	rename -uid "ED168322-4567-0B3A-7D5F-35A41592FF9A";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG2";
	rename -uid "C6D46DB2-4818-6ECF-CD1D-48B1F8875A96";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG2";
	rename -uid "315F76A1-4BCE-BE8E-438E-86BAA0D5E3AC";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG3";
	rename -uid "A8B92709-4FB3-56A1-DAA2-7982F9B4154D";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG3";
	rename -uid "A0724BFA-448C-E916-C829-B08B7C5E2866";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG3";
	rename -uid "10AD08A0-4799-3FF4-6DAD-7289F956BBA5";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG3";
	rename -uid "F8F71655-47C7-ECC4-84B7-0288F3F51EDD";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG3";
	rename -uid "FA0D5F50-4EA9-0E09-4D1C-8191FD9B8729";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG4";
	rename -uid "2A76422D-4DDE-009B-2923-B4BD6FDCE2B9";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG4";
	rename -uid "6F55E5A6-4348-1E0B-DE75-B6844083BDD3";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG4";
	rename -uid "CC4C26C6-4997-8E10-2DE6-28A1CA952847";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG4";
	rename -uid "7640E9BC-4110-2416-5117-30A2B73DEF8A";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG4";
	rename -uid "804707E5-43D9-27B6-FB07-B08036A6E7E0";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_FullBodyKG5";
	rename -uid "06F67534-44A9-F6FD-CF7C-E38B738498DB";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dnsm";
	setAttr -s 40 ".act";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftHandBPKG5";
	rename -uid "58FD945E-4C4B-D070-3EFC-68B8F8989286";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightHandBPKG5";
	rename -uid "499C6CF1-4CC4-1657-43D2-EF979DDE2E8E";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_LeftFootBPKG5";
	rename -uid "E3758E97-49A7-9834-7AB4-299173722A83";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "QuickRigCharacter_RightFootBPKG5";
	rename -uid "714A4737-43DB-36EB-BDB9-EA8C97126379";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode HIKFK2State -n "HIKFK2State1";
	rename -uid "73DEADD2-4CFA-E7E9-9E02-C3AF91B4FB69";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode dagPose -n "bindPose1";
	rename -uid "7781CA3F-4F74-5D88-8B5C-7B8F1112898E";
	setAttr -s 23 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.4505805969238281e-006 -0.33457183744758368 1.5766620635986328 1;
	setAttr -s 23 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.4505805969238281e-006
		 -0.33457183744758368 1.5766620635986328 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1.0000000155340343 1.0000000155340343 1 0
		 0 0 0 -1.7881393432617272e-007 93.30628967192024 -0.52655935287475586 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5626743425458296 0.42824944161156631 0.5626743425458296 0.42824944161156653 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 0.9999999612443593 0.99999994339995812 0.99999996727658302 0.0035972108593696089
		 -0.0012874905350661206 0.083955426281889803 0 -1.595774997523236 1.541708732054051
		 8.8874969482421875 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99092378415739601 0.13442490093426321 0.99999998446596594
		 0.99999998446596594 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 0.99999995703131828 0.99999998703725768 0.99999998196317952 0.032121382554075824
		 0 0.076164862363967356 0 34.09604767578351 1.0835255430663437e-006 -6.9995514628828914e-007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000387556423 1.0000000566000451
		 1.000000032723418 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999999236564496 1.0000000414551886 0.9999999800142102 -0.02008537307079953
		 0.041331523683954603 -0.15909765428010236 0 46.393867884402475 1.1952669794368376e-005
		 2.5188322283042908e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.2094582427411765e-007 -2.6516849805030787e-007 -0.41498181216834118 0.90982970690640486 1.0000000429686835
		 1.0000000129627424 1.0000000180368207 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 0.99999999236564496 1.0000000414551888 0.99999998001421042 0
		 0 0 0 12.792410625422601 3.2918924919300707e-008 6.2690337028215026e-006 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000076343551 0.99999995854481305
		 1.0000000199857901 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1.0000001601518433 1.0000000991141682 1.0000001092303328 0.0036033794263755211
		 -0.0012882949422169327 0.083971113832873284 0 -1.595774997523236 1.5417087320540581
		 -8.8874959945678711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13442974777862848 0.99092312664110038 0.99999998446596594
		 0.99999998446596594 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999988987737576 0.99999991785020559 0.99999991101544838 0.032148322740861983
		 1.121845131854098e-006 0.076145393168576242 0 -34.09604201190632 5.369356854245666e-006
		 6.1707610061745299e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 4.8912399225881929e-006 0.9999999999880379 0.9999998398481823
		 0.99999990088584156 0.9999998907696791 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 0.99999998993478989 0.99999986965358523 0.99999999025387498 -0.020113218932512594
		 0.041365187963554859 -0.15909615338324934 0 -46.393867259427658 4.1114440207934422e-006
		 1.5555463228622557e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.3183032721512627e-005 -2.8903230149558412e-005 -0.41498181116187977 0.9098297068109048 1.0000001101226363
		 1.0000000821498012 1.0000000889845595 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 0.99999998993478989 0.99999986965358501 0.9999999902538752 0
		 0 0 0 -12.792406487953244 -5.5244973773405093e-006 -5.1887095509073333e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1.2760810741446998e-008 0 0.99999999999999989 1.0000000100652102
		 1.0000001303464319 1.000000009746125 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000002010280011 1.0000001891750316 1.0000001192092967 0
		 0 0 0 8.8593071154689937 -8.7172776730426449e-007 -1.9671628692305432e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.084933371856150547 0.99638663296189645 0.99999998446596594
		 0.99999998446596594 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1.0000002010280011 1.000000189175031 1.0000001192092967 0
		 0 0 0 8.5813103148791612 6.4638790764348641e-007 -2.2004416721350083e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999979897203928 0.99999981082500411
		 0.99999988079071755 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 0.99999995241099315 0.99999994653462254
		 1.0000000000000004 0 0 0 0 8.5813103148791612 6.4638790853166483e-007 -2.2004433662009028e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.14848556543511693 0.98891457510616843 0.99999979897203928
		 0.99999981082500478 0.99999988079071755 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.142585889888409 -1.0524367830419195
		 6.5026392936706481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44800159479982654 -0.54707821292463488 -0.44800159479982637 0.54707821292463499 1.0000000475890092
		 1.0000000534653803 0.99999999999999956 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1.000000004687557 1.0000000234889959 1.0000000351245717 0.00094114570048401823
		 -1.0675122883152002 -0.00037890517079228647 0 9.7539582252502459 0 -7.5495165674510645e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1.0000001556556373 1.0000001880564795 1.0000000901450876 0
		 -5.1912313201395051e-006 0.14066517957260621 0 21.783236794934837 4.6069146619753809e-006
		 -1.1038439808430667e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999531244299
		 0.9999999765110047 0.99999996487542953 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1.0000001793986479 1.0000001445313196 1.0000001423772951 0
		 0 0 0 20.068348780764396 9.0970356847464018e-006 2.8332726884627846e-005 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999984434438693 0.99999981194355592
		 0.99999990985492049 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.142585889888409 -1.0524367830419195
		 -6.502638816833497 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.54707821292463499 -0.44800159479982632 0.54707821292463488 0.44800159479982643 1.0000000475890092
		 1.0000000534653803 0.99999999999999956 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000002143274951 1.0000000803248987 1.0000001708883275 0.00093379853812433579
		 -1.0675157386291692 -0.00037476741346558883 0 -9.7539587020874023 0 6.6613381477509392e-016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0 0 0.70710678118654757 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999991307031599 0.99999992764272461
		 0.99999991638804386 0 0 0.14066104612953406 0 -21.783208116541672 7.5322365133967395e-006
		 -5.0639506241623167e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999978567255088
		 0.99999991967510771 0.99999982911170171 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1.0000001860849081 1.0000001314768094 1.0000001002014531 0
		 -1.2711366311379916e-006 0 0 -20.068356678991819 -1.4911862429300982e-006 7.0578543613919464e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000869296917 1.0000000723572806
		 1.0000000836119631 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1.0000000423372781 1.0000000423372781 1 0
		 0 0 0 23.965074804239492 1.2192351022122239e-006 -7.1499236923861648e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.09930128169087897 0.99505741314486407 1.0000000475890092
		 1.0000000534653803 0.99999999999999956 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000423372781 1.0000000423372781 1 0
		 0 0 0 9.1316076000850614 1.2550393857502229e-007 -2.4938852252829463e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999995766272365 0.99999995766272365
		 1 yes;
	setAttr -s 23 ".m";
	setAttr -s 23 ".p";
	setAttr -s 23 ".g[0:22]" yes no no no no no no no no no no no no no 
		no no no no no no no no no;
	setAttr ".bp" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Reference_translateX";
	rename -uid "F0697926-4376-D9D1-1628-8DA1F8AA2DA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -7.4505805969238281e-008 2 -7.4505805969238281e-008
		 3 -7.4505805969238281e-008 4 -7.4505805969238281e-008 5 -7.4505805969238281e-008
		 6 -7.4505805969238281e-008 7 -7.4505805969238281e-008 8 -7.4505805969238281e-008
		 9 -7.4505805969238281e-008 10 -7.4505805969238281e-008 11 -7.4505805969238281e-008
		 12 -7.4505805969238281e-008 13 -7.4505805969238281e-008 14 -7.4505805969238281e-008
		 15 -7.4505805969238281e-008 16 -7.4505805969238281e-008 17 -7.4505805969238281e-008
		 18 -7.4505805969238281e-008 19 -7.4505805969238281e-008 20 -7.4505805969238281e-008
		 21 -7.4505805969238281e-008 22 -7.4505805969238281e-008 23 -7.4505805969238281e-008
		 24 -7.4505805969238281e-008 25 -7.4505805969238281e-008 26 -7.4505805969238281e-008
		 27 -7.4505805969238281e-008 28 -7.4505805969238281e-008 29 -7.4505805969238281e-008
		 30 -7.4505805969238281e-008 31 -7.4505805969238281e-008 32 -7.4505805969238281e-008
		 33 -7.4505805969238281e-008 34 -7.4505805969238281e-008 35 -7.4505805969238281e-008
		 36 -7.4505805969238281e-008 37 -7.4505805969238281e-008 38 -7.4505805969238281e-008
		 39 -7.4505805969238281e-008 40 -7.4505805969238281e-008 41 -7.4505805969238281e-008;
createNode animCurveTL -n "player_QuickRigCharacter_Reference_translateY";
	rename -uid "361B673F-41C4-F73C-E296-F8A34083E183";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.0033457183744758368 2 -0.0033457183744758368
		 3 -0.0033457183744758368 4 -0.0033457183744758368 5 -0.0033457183744758368 6 -0.0033457183744758368
		 7 -0.0033457183744758368 8 -0.0033457183744758368 9 -0.0033457183744758368 10 -0.0033457183744758368
		 11 -0.0033457183744758368 12 -0.0033457183744758368 13 -0.0033457183744758368 14 -0.0033457183744758368
		 15 -0.0033457183744758368 16 -0.0033457183744758368 17 -0.0033457183744758368 18 -0.0033457183744758368
		 19 -0.0033457183744758368 20 -0.0033457183744758368 21 -0.0033457183744758368 22 -0.0033457183744758368
		 23 -0.0033457183744758368 24 -0.0033457183744758368 25 -0.0033457183744758368 26 -0.0033457183744758368
		 27 -0.0033457183744758368 28 -0.0033457183744758368 29 -0.0033457183744758368 30 -0.0033457183744758368
		 31 -0.0033457183744758368 32 -0.0033457183744758368 33 -0.0033457183744758368 34 -0.0033457183744758368
		 35 -0.0033457183744758368 36 -0.0033457183744758368 37 -0.0033457183744758368 38 -0.0033457183744758368
		 39 -0.0033457183744758368 40 -0.0033457183744758368 41 -0.0033457183744758368;
createNode animCurveTL -n "player_QuickRigCharacter_Reference_translateZ";
	rename -uid "3969654C-4E3E-F3C8-0239-CD9B14BC0995";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.015766620635986328 2 0.015766620635986328
		 3 0.015766620635986328 4 0.015766620635986328 5 0.015766620635986328 6 0.015766620635986328
		 7 0.015766620635986328 8 0.015766620635986328 9 0.015766620635986328 10 0.015766620635986328
		 11 0.015766620635986328 12 0.015766620635986328 13 0.015766620635986328 14 0.015766620635986328
		 15 0.015766620635986328 16 0.015766620635986328 17 0.015766620635986328 18 0.015766620635986328
		 19 0.015766620635986328 20 0.015766620635986328 21 0.015766620635986328 22 0.015766620635986328
		 23 0.015766620635986328 24 0.015766620635986328 25 0.015766620635986328 26 0.015766620635986328
		 27 0.015766620635986328 28 0.015766620635986328 29 0.015766620635986328 30 0.015766620635986328
		 31 0.015766620635986328 32 0.015766620635986328 33 0.015766620635986328 34 0.015766620635986328
		 35 0.015766620635986328 36 0.015766620635986328 37 0.015766620635986328 38 0.015766620635986328
		 39 0.015766620635986328 40 0.015766620635986328 41 0.015766620635986328;
createNode animCurveTA -n "player_QuickRigCharacter_Reference_rotateX";
	rename -uid "C124AFF6-4A2A-3728-7FAC-0D92A9B418C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "player_QuickRigCharacter_Reference_rotateY";
	rename -uid "BE957217-4398-8696-794E-E0A19FD99276";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "player_QuickRigCharacter_Reference_rotateZ";
	rename -uid "4F14B913-4E39-EF28-5670-8C813E5BC3F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "QuickRigCharacter_Reference_scaleX";
	rename -uid "F2512AD4-438E-BA37-BE0F-14B0E7653363";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "QuickRigCharacter_Reference_scaleY";
	rename -uid "8C9F2466-4B30-4F13-5F9C-74A4C6998B62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTU -n "QuickRigCharacter_Reference_scaleZ";
	rename -uid "44DDA44A-42B4-ABBB-6AA0-1B986ADD61F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1 10 1
		 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1
		 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1;
createNode animCurveTL -n "QuickRigCharacter_Hips_translateX";
	rename -uid "754C659D-42B1-7E55-45D6-698104099A61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.031789247393608097 2 -0.031260251402854919
		 3 -0.030744394659996035 4 -0.030234693884849548 5 -0.029723820090293885 6 -0.029204112887382509
		 7 -0.028667699694633484 8 -0.028106505274772646 9 -0.027512361407279969 10 -0.026877071261405944
		 11 -0.026192502379417421 12 -0.025376920104026795 13 -0.024394358992576599 14 -0.023307709097862245
		 15 -0.022181620001792909 16 -0.021080433726310729 17 -0.020065438151359558 18 -0.019192737936973573
		 19 -0.018512613177299499 20 -0.018071021437644958 21 -0.017913202643394469 22 -0.018041023612022401
		 23 -0.01839992940425873 24 -0.018954942822456359 25 -0.01967102110385895 26 -0.020510675311088564
		 27 -0.021432732939720155 28 -0.022392274737358095 29 -0.023341750502586366 30 -0.024232284426689149
		 31 -0.025015243887901308 32 -0.025724417567253112 33 -0.026425516009330751 34 -0.027118882536888125
		 35 -0.027804901003837586 36 -0.028483936190605165 37 -0.029156495928764344 38 -0.029822973608970644
		 39 -0.030483736395835879 40 -0.031139127612113952 41 -0.031789247393608097;
createNode animCurveTL -n "QuickRigCharacter_Hips_translateY";
	rename -uid "1325996F-47A0-8AF9-CDA5-94AE18D78570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.84141868590377278 2 0.84120948790572581
		 3 0.84028266905806959 4 0.8384379577543587 5 0.83536552428267896 6 0.83055564879439769
		 7 0.82314216612838209 8 0.81195487975142899 9 0.79862899779342111 10 0.79060218810103833
		 11 0.78862022398971021 12 0.79083938597701486 13 0.7967983245756477 14 0.80554641722701492
		 15 0.81613830565474932 16 0.82763595580123361 17 0.83910858153365553 18 0.84963188170455395
		 19 0.8582860565092415 20 0.86415336607955395 21 0.86631431578658524 22 0.86364990233443684
		 23 0.85641731261275711 24 0.84575485228560865 25 0.83279937743209309 26 0.81868911742232742
		 27 0.80456459044478834 28 0.79157043456099929 29 0.78085571288131184 30 0.77357467650435863
		 31 0.77088516234420246 32 0.77356170653365552 33 0.78429588316939769 34 0.80209190367721028
		 35 0.8170288848783821 36 0.82692573546431958 37 0.83334449767135088 38 0.83744209288619464
		 39 0.83990028380416337 40 0.84113578795455402 41 0.84141868590377278;
createNode animCurveTL -n "QuickRigCharacter_Hips_translateZ";
	rename -uid "D03B17E6-4BA7-D90B-F1FA-2A846DB3D092";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.0061164104938507069 2 -0.0063155651092529283
		 3 -0.0065142297744750968 4 -0.0067105376720428458 5 -0.006901720762252807 6 -0.0070841681957244862
		 7 -0.0072534823417663569 8 -0.0074043357372283927 9 -0.0075303471088409412 10 -0.0076239311695098866
		 11 -0.0076760029792785631 12 -0.0076798856258392329 13 -0.0076248598098754873 14 -0.0074993503093719474
		 15 -0.0073015463352203358 16 -0.0070417666435241694 17 -0.0067427647113800036 18 -0.0064379322528839104
		 19 -0.0061679744720458977 20 -0.0059765326976776115 21 -0.0059047627449035633 22 -0.0059666454792022695
		 23 -0.0061333966255187975 24 -0.0063728761672973621 25 -0.0066510534286499017 26 -0.0069352924823760974
		 27 -0.0071973192691802967 28 -0.0074153769016265863 29 -0.0075757193565368641 30 -0.0076727724075317371
		 31 -0.0077082526683807367 32 -0.0076881253719329823 33 -0.0076195037364959707 34 -0.0075097429752349846
		 35 -0.0073657584190368643 36 -0.0071940577030181873 37 -0.0070007002353668201 38 -0.006791313886642455
		 39 -0.0065711116790771471 40 -0.0063447582721710199 41 -0.0061164104938507069;
createNode animCurveTA -n "QuickRigCharacter_Hips_rotateX";
	rename -uid "EFD5D250-4B10-16C6-8CF3-3BB57069C5AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 22.804297573100438 2 20.984204554565114
		 3 19.256124390514739 4 17.579699624946571 5 15.914410787396479 6 14.219576563614581
		 7 12.454423302983487 8 10.578104688010061 9 8.5497607065976222 10 6.3285103821442439
		 11 3.873519876837709 12 0.86333456367071848 13 -2.838072739496337 14 -6.9928879263814503
		 15 -11.362888201489621 16 -15.709805985451242 17 -19.79576054400464 18 -23.383705562370508
		 19 -26.237595104660269 20 -28.12226827199974 21 -28.802803227016447 22 -28.247218443492898
		 23 -26.701981420372086 24 -24.349016425981635 25 -21.370268807886831 26 -17.94812245450991
		 27 -14.265607288348368 28 -10.506268719479035 29 -6.8540629538745375 30 -3.4931536534923211
		 31 -0.6075996179543286 32 1.9339320792451278 33 4.3945030332763411 34 6.7878207014125813
		 35 9.1275557037724724 36 11.427330048336637 37 13.700798752036869 38 15.96160261501673
		 39 18.223363577973359 40 20.499718106782137 41 22.804297573100438;
createNode animCurveTA -n "QuickRigCharacter_Hips_rotateY";
	rename -uid "4BE08F40-4AD0-A8BD-2886-64BE7ECACEE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 3.2287372275358233 2 2.9527814647887363
		 3 2.6612026957529573 4 2.3619815985556665 5 2.0636960988484683 6 1.7753033453477947
		 7 1.5061073174534632 8 1.2656345117620229 9 1.0635931620819263 10 0.90972028620055645
		 11 0.81366337827355606 12 0.79041795081036181 13 0.83704544505366452 14 0.93315773464451568
		 15 1.0558498525084077 16 1.1827139927156716 17 1.295539312071496 18 1.3831314476550067
		 19 1.4422150190328458 20 1.4754720796206513 21 1.486506320217523 22 1.4741787701834097
		 23 1.439200413947429 24 1.3819766100323609 25 1.303052934587571 26 1.2062988168306852
		 27 1.100684297668248 28 1.0001987595208415 29 0.92252848647663555 30 0.88709261841791931
		 31 0.91294107415155568 32 1.0044920720856463 33 1.148976135171345 34 1.3383127067722569
		 35 1.5643179612849529 36 1.81867203195621 37 2.0931159778791124 38 2.379372103343008
		 39 2.6693566693885473 40 2.9550488458068136 41 3.2287372275358233;
createNode animCurveTA -n "QuickRigCharacter_Hips_rotateZ";
	rename -uid "CD9289DA-41DB-5589-7972-B7AC26270188";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.0615466644968405 2 1.9367197537202017
		 3 1.75385974998823 4 1.5341265826071007 5 1.2974159583262019 6 1.0624080596607968
		 7 0.84647420734411905 8 0.66560222762085552 9 0.53416648173450032 10 0.46470246358812123
		 11 0.46750730416915082 12 0.54097681589228808 13 0.64218873013813782 14 0.72465284494248761
		 15 0.7562855484907518 16 0.72318911193588142 17 0.63023150554640139 18 0.49867653070138651
		 19 0.36120564945504652 20 0.25511414735697807 21 0.21410722656575557 22 0.23848682378221597
		 23 0.30266954887355341 24 0.38741926217638373 25 0.47064187086468323 26 0.53263976968289417
		 27 0.56047375821280421 28 0.55139952353351118 29 0.51472256320844412 30 0.47214720650675829
		 31 0.45612480672986477 32 0.50254054200213627 33 0.61299902375729054 34 0.77425685137719236
		 35 0.97233662333431892 36 1.1925078461582421 37 1.4193548879663185 38 1.6367595145770839
		 39 1.8279681725055499 40 1.9755677222217911 41 2.0615466644968405;
createNode animCurveTU -n "QuickRigCharacter_Hips_scaleX";
	rename -uid "8368F4F2-4D82-D2F7-C541-9EB6C5D24D49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000257819297 2 1.0000001463088743
		 3 1.0000000076286057 4 0.99999994262185521 5 0.99999988092496173 6 1.0000000138063889
		 7 0.99999992955421857 8 0.99999992584688091 9 1.000000086496925 10 1.0000001057813799
		 11 0.99999994647913582 12 1.0000000328029883 13 1.0000001274422428 14 1.0000000619434675
		 15 0.99999995359293736 16 1.00000015028505 17 1.0000000984294721 18 1.0000000568242953
		 19 1.0000001636634206 20 0.99999993308192892 21 1.0000000687140658 22 1.0000000422354589
		 23 1.0000000466600791 24 1.0000001239836636 25 0.9999999519396543 26 0.99999999969929343
		 27 1.0000000767080308 28 0.99999994809945691 29 1.0000001495002753 30 0.9999999781238047
		 31 1.0000001641781633 32 1.0000001723408525 33 1.0000001405666636 34 1.0000001036177046
		 35 0.99999989597840822 36 1.0000002544974329 37 0.99999999650938998 38 1.0000001030151702
		 39 0.99999995050013146 40 1.0000000918062335 41 1.0000000257819297;
createNode animCurveTU -n "QuickRigCharacter_Hips_scaleY";
	rename -uid "867A5773-43D2-DD49-F581-1781225B0CB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000260152517 2 1.0000001299074117
		 3 1.0000000579689776 4 0.99999990691554386 5 0.99999992137942539 6 1.000000017120094
		 7 0.99999994267012626 8 1.0000000040742238 9 0.99999998499524012 10 1.0000000775891964
		 11 0.99999994967528316 12 0.99999999726069655 13 1.0000001612006366 14 1.0000000139824765
		 15 1.0000000505993571 16 1.0000000398512352 17 1.0000000792025527 18 0.99999997584675393
		 19 1.0000001123707871 20 1.0000000199151879 21 1.0000000845379651 22 1.0000000583026289
		 23 1.0000000091827344 24 1.0000000465197794 25 0.99999994310512719 26 1.0000000514174716
		 27 1.0000000248283318 28 0.99999999928991279 29 1.0000001315194498 30 0.99999998021555003
		 31 1.0000001258769791 32 1.0000001179576992 33 1.0000001014661786 34 1.0000001142658279
		 35 0.99999996618162768 36 1.0000001134772056 37 0.99999995015659549 38 0.99999999526579264
		 39 1.0000000064559058 40 1.0000000640111679 41 1.0000000260152517;
createNode animCurveTU -n "QuickRigCharacter_Hips_scaleZ";
	rename -uid "0DFF61EE-4722-3A07-4949-4991901BB871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000138523504 2 1.0000000899236094
		 3 1.0000000614597158 4 0.99999994130415759 5 0.99999996781429512 6 1.0000000022949238
		 7 0.99999995550884024 8 0.999999985136096 9 1.0000000276472139 10 1.0000001297684045
		 11 0.99999997225483395 12 1.0000000489184113 13 1.0000002542726096 14 1.0000000523543631
		 15 1.000000011757485 16 1.0000002055057642 17 1.0000001642016125 18 1.0000000652763354
		 19 1.0000002364884151 20 0.99999996778275946 21 1.0000000589251141 22 1.000000090467559
		 23 1.00000008283222 24 1.0000001995556054 25 0.99999993887787031 26 1.0000000097466235
		 27 1.0000001028197265 28 1.0000000000932174 29 1.0000001427028389 30 0.99999997960374487
		 31 1.0000001208262981 32 1.0000001768398286 33 1.0000001483682346 34 1.0000001018714679
		 35 0.9999999379129586 36 1.0000002002944992 37 0.99999995338812764 38 1.0000000508476752
		 39 0.99999989896922592 40 1.0000000691476527 41 1.0000000138523504;
createNode animCurveTL -n "QuickRigCharacter_LeftUpLeg_translateX";
	rename -uid "4CD59862-4745-C3A2-C770-80937DC433A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.015957782414470784 2 -0.015957700949742845
		 3 -0.015957757463546898 4 -0.015957766806346571 5 -0.015957710237907322 6 -0.015957722311332675
		 7 -0.015957670092050194 8 -0.015957744545243457 9 -0.015957677410743686 10 -0.015957731758391276
		 11 -0.015957746972948286 12 -0.015957753564627666 13 -0.015957731347077696 14 -0.015957802989171058
		 15 -0.015957803339353375 16 -0.015957756695808314 17 -0.015957750602700854 18 -0.015957776663148453
		 19 -0.015957695596770804 20 -0.015957777089567173 21 -0.015957802707142862 22 -0.015957687894747039
		 23 -0.01595776348878019 24 -0.015957799494192956 25 -0.015957741327515436 26 -0.015957769676369225
		 27 -0.015957816855693779 28 -0.015957791493684967 29 -0.015957722506126971 30 -0.015957791823711886
		 31 -0.015957758205403537 32 -0.015957725676883569 33 -0.015957692324510477 34 -0.015957754666761303
		 35 -0.015957801124809094 36 -0.015957803958573463 37 -0.015957746135600814 38 -0.015957699135441317
		 39 -0.015957754362261625 40 -0.015957724877174541 41 -0.015957782414470784;
createNode animCurveTL -n "QuickRigCharacter_LeftUpLeg_translateY";
	rename -uid "235F5E35-4913-7699-D5E7-DB949EF924CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.015417107264695282 2 0.015417101397573064
		 3 0.015417106782662985 4 0.015417114595595792 5 0.015417088862038747 6 0.015417086485482302
		 7 0.015417073117587563 8 0.015417109551562476 9 0.015417067417492802 10 0.015417088506867601
		 11 0.015417102405492926 12 0.015417095637833498 13 0.015417100354022431 14 0.015417108943465437
		 15 0.015417126340023374 16 0.015417091719780878 17 0.015417094432067948 18 0.015417120626729819
		 19 0.015417074507460634 20 0.01541711246377819 21 0.015417107366437222 22 0.015417088366128375
		 23 0.015417104635919436 24 0.015417108200128062 25 0.015417092177751748 26 0.015417105518221135
		 27 0.01541711492297349 28 0.015417079430769825 29 0.015417078523128788 30 0.015417105188332485
		 31 0.015417088434735292 32 0.015417087373747336 33 0.015417081967970319 34 0.015417115143193634
		 35 0.015417104044027994 36 0.0154171005269993 37 0.015417114604141026 38 0.015417107075779413
		 39 0.015417088213686973 40 0.015417082984308231 41 0.015417107264695282;
createNode animCurveTL -n "QuickRigCharacter_LeftUpLeg_translateZ";
	rename -uid "8A56DF63-4723-BDEB-DF63-98BC22F053B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.088874996210531632 2 0.088875012873435161
		 3 0.088875084341351371 4 0.088875043637586762 5 0.088875138683092061 6 0.088875031312023262
		 7 0.088875055355565419 8 0.088875157158288517 9 0.088874997011062037 10 0.088875058517273259
		 11 0.088875078664507792 12 0.088874961495511218 13 0.088875002441212519 14 0.088875010272337449
		 15 0.088875138943854889 16 0.088875061718443116 17 0.088875052398017171 18 0.088875007475865894
		 19 0.088875054979656615 20 0.088875048380861355 21 0.088874972306536432 22 0.088874964448931032
		 23 0.088874993491244891 24 0.088874967287301987 25 0.08887515940834001 26 0.088875004842094832
		 27 0.088874983756684484 28 0.088874977725767829 29 0.088875031594497361 30 0.088875139355570523
		 31 0.088874961241523637 32 0.088874956743542219 33 0.088875019196518953 34 0.088875093052982718
		 35 0.088875067514325112 36 0.08887502111680988 37 0.088875264436733839 38 0.088875098561305002
		 39 0.088875050988121346 40 0.088875004266778662 41 0.088874996210531632;
createNode animCurveTA -n "QuickRigCharacter_LeftUpLeg_rotateX";
	rename -uid "FFFBE8D7-44DE-5994-21F3-C791D041B33C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 31.821382540266395 2 31.200905797647515
		 3 29.925261389586797 4 28.36289303352531 5 26.550547593750395 6 24.411489641944414
		 7 21.781932544467658 8 18.486572439759644 9 14.887327467354428 10 12.126761277554351
		 11 10.24901326851689 12 8.5116592775120772 13 6.7875053990261387 14 5.5288362092274896
		 15 5.0234366672139821 16 5.2646077126568604 17 5.8696621774247477 18 6.3306691498072132
		 19 6.3867809044109469 20 6.1723283476189659 21 6.1647441691952389 22 6.8049394406008838
		 23 7.4506861009546892 24 7.4202065562341106 25 6.4882291760288302 26 4.7177412165225023
		 27 2.3496882600597071 28 -0.20229907134702768 29 -2.3612039339306756 30 -3.417789708308709
		 31 -3.8891592095002663 32 -4.6729391985442987 33 -3.009597748822932 34 0.9378352646311322
		 35 4.6238840049732097 36 8.8090903094906636 37 14.757456690424638 38 21.612337138599464
		 39 27.415049251243506 40 30.889139351979352 41 31.821382540266395;
createNode animCurveTA -n "QuickRigCharacter_LeftUpLeg_rotateY";
	rename -uid "17509D98-4968-AF25-10CF-A2B7591CA4FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -1.3212456493220557 2 5.3513886774729684
		 3 8.8086655063769026 4 10.631567995564041 5 11.099205877487625 6 10.205540095124402
		 7 7.7453814241676708 8 3.3154005648978542 9 -2.6372490120841467 10 -7.2694092249810378
		 11 -9.7713660257041308 12 -11.531348701339695 13 -13.485325555201797 14 -15.613026074269321
		 15 -17.834702271577285 16 -20.068733179375368 17 -22.330139371125156 18 -24.675384047285309
		 19 -26.92784024234307 20 -28.57941559384162 21 -28.975502371403007 22 -27.574327435864081
		 23 -24.711449214878272 24 -21.128083484157866 25 -17.434217971247417 26 -13.905592646288879
		 27 -10.482423394623837 28 -6.9314004399453912 29 -3.0602467290261521 30 0.9484696990402649
		 31 3.9662616781875037 32 5.5856598088502363 33 8.5905281482617326 34 13.940725602856723
		 35 19.311791442835258 36 22.86892853206022 37 23.60565211539679 38 20.812566635310475
		 39 14.758418408711904 40 6.6365969448739222 41 -1.3212456493220555;
createNode animCurveTA -n "QuickRigCharacter_LeftUpLeg_rotateZ";
	rename -uid "851EA9A2-47DA-DEE1-03A3-E7A74262F4FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 34.88758558893398 2 24.942270376261927
		 3 19.845839860795177 4 17.011659801538514 5 15.839676254159841 6 15.971034902417003
		 7 17.030686618510689 8 18.617567308690184 9 20.33159010917641 10 21.197746095511917
		 11 19.867728498853907 12 15.229811563606813 13 6.9873282632489833 14 -4.6261403568396089
		 15 -18.874371711300295 16 -33.890251079783717 17 -46.93496032726906 18 -56.221622052545044
		 19 -61.950560004278117 20 -65.462709271357937 21 -68.308955069192137 22 -71.948362608515609
		 23 -75.604170736139253 24 -77.891808288810338 25 -78.125186974742206 26 -76.102282583916505
		 27 -71.843515625125065 28 -65.391594266271213 29 -56.427026261992239 30 -46.483119352503522
		 31 -45.387789548033915 32 -57.201800274846356 33 -62.942069361507677 34 -62.684110995190927
		 35 -57.166283493185574 36 -45.961653494885333 37 -29.684983985643942 38 -11.07517055670252
		 39 6.8785854159544941 40 22.681522979495298 41 34.88758558893398;
createNode animCurveTU -n "QuickRigCharacter_LeftUpLeg_scaleX";
	rename -uid "E356CD8B-45C1-E353-40E5-AAA18D82F9CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000493353463 2 0.9999999610043121
		 3 1.0000000238935249 4 1.0000001251106234 5 0.99999999387137295 6 0.99999992226559298
		 7 1.0000000384146241 8 1.0000000673624407 9 1.0000000167034173 10 1.0000000444114596
		 11 1.0000001773121487 12 1.0000001500419213 13 0.99999994730631103 14 1.0000000925650951
		 15 1.0000000267013529 16 1.0000001081310517 17 1.0000000673153202 18 0.99999993623440286
		 19 1.0000000965052038 20 1.0000000886516871 21 1.0000001533606793 22 1.0000000483674498
		 23 1.0000001499905062 24 0.99999995228963234 25 1.0000001080090506 26 1.0000000313098647
		 27 1.0000001459406824 28 1.0000000953786092 29 1.0000000437402088 30 1.0000000476309503
		 31 0.999999919399988 32 1.0000000022544457 33 0.99999992809439575 34 1.0000001310282445
		 35 0.99999993808230481 36 1.000000035204738 37 1.0000000346551663 38 0.9999999934043815
		 39 0.99999999309830578 40 1.0000000059273759 41 1.0000000493353463;
createNode animCurveTU -n "QuickRigCharacter_LeftUpLeg_scaleY";
	rename -uid "8EAA2518-4AB6-5445-4568-4E9DB16762CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999990563881558 2 1.0000001257775104
		 3 1.0000001655903674 4 1.0000001470056765 5 1.0000000520067638 6 0.99999995477511228
		 7 1.0000001494983066 8 1.0000001993936323 9 0.99999999340087864 10 1.0000000032821679
		 11 1.0000001755690477 12 1.000000165313943 13 0.99999991748664085 14 1.0000000328084184
		 15 1.0000000231150015 16 1.0000001064879003 17 0.99999997898127058 18 0.99999995999001789
		 19 1.0000000248149343 20 0.99999999287074881 21 1.0000000032122147 22 1.0000000172732808
		 23 0.99999997820963893 24 0.99999999143136475 25 1.0000000156939923 26 1.0000000036479604
		 27 1.0000000046669619 28 0.99999994400631753 29 1.0000000223704788 30 1.0000000281694172
		 31 0.99999999059532052 32 1.0000000129039002 33 0.99999998490012831 34 1.0000000067042976
		 35 0.99999997546162633 36 0.99999998826735281 37 1.0000000226910541 38 0.99999990868665833
		 39 0.99999998955875258 40 1.0000001221936345 41 0.99999990563881558;
createNode animCurveTU -n "QuickRigCharacter_LeftUpLeg_scaleZ";
	rename -uid "DE957B8D-45E6-11A0-5B6D-DE9B1A739A4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000144644752 2 1.0000000772642847
		 3 1.0000001504890415 4 1.0000001162853309 5 1.0000001065887216 6 1.0000000311265198
		 7 1.0000001720445919 8 1.0000002285654748 9 1.0000000276063392 10 1.0000000084062879
		 11 1.0000001233900793 12 1.0000001691366884 13 0.99999987612021934 14 1.000000054581573
		 15 0.99999998418062774 16 1.0000001305203496 17 1.0000000710742696 18 0.99999997456391732
		 19 1.0000001496696316 20 1.0000000784003897 21 1.0000001539590484 22 0.99999995666548835
		 23 1.0000001657473128 24 0.99999998197746587 25 1.0000000572775345 26 0.99999999989805355
		 27 1.0000001143748747 28 1.0000000835099716 29 1.0000000812939054 30 1.000000056527812
		 31 0.99999994508064771 32 1.0000001458640895 33 0.99999988971587417 34 1.000000118611752
		 35 0.99999998356789876 36 1.0000001430185588 37 1.0000000573885035 38 0.99999997111187966
		 39 0.99999993106290774 40 1.0000000749665112 41 1.0000000144644752;
createNode animCurveTL -n "QuickRigCharacter_LeftLeg_translateX";
	rename -uid "6AAA1505-4DFC-C558-93BA-6CAC54C5410C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.34095989972018209 2 0.3409601418676661
		 3 0.34095977389909399 4 0.34095965444779025 5 0.34095995654734451 6 0.34096041345853922
		 7 0.34096015609669539 8 0.34096004844124322 9 0.34095994909808952 10 0.34096007078057383
		 11 0.34095987032772312 12 0.34096006585366878 13 0.3409605481573208 14 0.34096011802455772
		 15 0.34095973923700484 16 0.34096020354216366 17 0.34096027280439273 18 0.34096018856120269
		 19 0.34095987663125132 20 0.34095980750189175 21 0.34095983818192721 22 0.34095989164700125
		 23 0.34095987572345798 24 0.34095986348288732 25 0.34096002047044349 26 0.340959828338668
		 27 0.34095983326139645 28 0.34095998884332418 29 0.3409597935126723 30 0.34095988710946101
		 31 0.34096003566248412 32 0.34095997326344418 33 0.34096000550692768 34 0.34096009159461887
		 35 0.34096026887385605 36 0.34096032806813126 37 0.34096044099742739 38 0.34095986547698881
		 39 0.34096015510304734 40 0.34096012434553435 41 0.34095989972018209;
createNode animCurveTL -n "QuickRigCharacter_LeftLeg_translateY";
	rename -uid "5169AB67-454E-4652-3B7D-C182631014F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -2.1765252782302015e-008 2 -2.3006948786274961e-006
		 3 3.5102078769000402e-007 4 3.7493204771976709e-007 5 5.7661019042143386e-007 6 2.5246433732917239e-007
		 7 1.2446816756650492e-006 8 6.4430397348047562e-006 9 -1.1768506232812116e-006 10 3.7755223942781411e-008
		 11 8.452534707714677e-009 12 -1.3115751436032497e-008 13 -2.843885988923489e-008
		 14 1.9162522946203355e-009 15 -3.644972741057018e-007 16 6.5670343609269819e-007
		 17 1.3417881277177913e-007 18 -1.9874964181099131e-008 19 3.3490011048797897e-008
		 20 -8.0384791232290816e-008 21 1.2733415530874481e-008 22 -8.4233670776256984e-008
		 23 -3.1317203053049525e-008 24 1.6591585449532432e-007 25 -3.7092048088993578e-007
		 26 -1.5772046140227759e-008 27 5.1173252870739817e-008 28 -8.1303176955316303e-008
		 29 -1.101643792367213e-007 30 -3.5364585144748159e-008 31 -1.4088983846249903e-008
		 32 -4.603122427226936e-008 33 2.4406689487932453e-006 34 1.0110718107227968e-005
		 35 -1.6887948827104539e-006 36 -2.1006856236738259e-007 37 2.3428956289706092e-007
		 38 -3.4969579346011417e-007 39 2.5229501511070395e-007 40 1.3827636762897554e-006
		 41 -2.1765252782302015e-008;
createNode animCurveTL -n "QuickRigCharacter_LeftLeg_translateZ";
	rename -uid "2BC42B82-4094-6706-490F-689D687C12D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.6697574523050208e-008 2 1.4006902827912172e-006
		 3 -2.7152720663892185e-007 4 -2.9466219521268043e-007 5 -3.3258130711644184e-007
		 6 -1.5473775327734529e-007 7 -5.5372872064474167e-007 8 -2.3848564407047414e-006
		 9 3.2075180897095382e-007 10 1.6258210369102243e-008 11 -1.4707105897571182e-008
		 12 -4.4934697882581535e-008 13 2.4417199142590109e-008 14 -3.9374022335891821e-008
		 15 -5.0316141617656743e-008 16 3.2385121574662888e-007 17 -8.4978875243280071e-008
		 18 5.2875454414902378e-009 19 -5.7855690478447744e-008 20 -2.9124309790518055e-008
		 21 -3.0920405507117721e-008 22 8.1936362761325657e-009 23 -6.9046964625840707e-008
		 24 2.1745147087415264e-008 25 1.7850607628489001e-007 26 -2.3252344263369198e-008
		 27 -5.2169158433201805e-008 28 -4.6340612609441225e-008 29 -3.1614239084376553e-008
		 30 -3.6353092225382965e-009 31 -9.6545489532140487e-009 32 -4.7059205590116446e-008
		 33 8.6091884206118682e-006 34 4.7309896577170109e-005 35 2.5123832938320767e-005
		 36 4.5124086956116471e-007 37 -1.3446850744891491e-007 38 2.068715174807778e-007
		 39 -1.9967822831645776e-007 40 -9.642454266245437e-007 41 1.6697574523050208e-008;
createNode animCurveTA -n "QuickRigCharacter_LeftLeg_rotateX";
	rename -uid "D47CCD11-4DB1-A3FC-EAC1-86A5E6908C15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -4.3898277685135838 2 -4.2392305496966909
		 3 -3.4956091461927294 4 -1.9559034664112549 5 0.2947579601456779 6 1.5814911220748715
		 7 4.2935129409631623 8 8.299631396400839 9 10.194950685136194 10 12.017933887174555
		 11 13.865131220709676 12 15.880476595825176 13 15.977105803101203 14 16.572400019133482
		 15 16.20835962769484 16 14.505191274350127 17 11.634902707633886 18 8.256135897544592
		 19 4.9986191479752735 20 2.9907744512752132 21 -0.13209654593153128 22 -3.0915056969864811
		 23 -4.1989992916058538 24 -5.8441211998084244 25 -6.9876150327641815 26 -7.5368692682708662
		 27 -7.4863385821856889 28 -6.9066497862690612 29 -5.9231829522400945 30 -5.5290178474827929
		 31 -3.6940742451739053 32 -3.3258146616268847 33 -5.1517653244875685 34 -7.0522691534728557
		 35 -8.6416218519495089 36 -9.0583420662020675 37 -8.6580737602379862 38 -7.7696375587675224
		 39 -6.6753075628196559 40 -6.3402309016762315 41 -4.3898277685135838;
createNode animCurveTA -n "QuickRigCharacter_LeftLeg_rotateY";
	rename -uid "1FC8149E-4DE8-28BA-C5AF-2D82154FD830";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.0019567832119351427 2 0.0021682062053249005
		 3 0.0028316173473007587 4 0.0034739461537032722 5 0.0033858914386933232 6 0.0025079029646912455
		 7 0.0016881627406130912 8 0.00095777640923313775 9 0.00059559660264722639 10 0.0003457886212590032
		 11 0.00027850394592800415 12 0.0002645754440662494 13 0.00029243639230000089 14 0.00030268003090628875
		 15 0.00032446994480981304 16 0.00040292940406787622 17 0.00041117858882268598 18 0.00051976703208239661
		 19 0.00058657669735697436 20 0.00066898589250530141 21 0.00071052986400200633 22 0.00070303771533577889
		 23 0.00063024132182446337 24 0.00052599333030247666 25 0.00040557197263844778 26 0.00028295282409163851
		 27 0.0001510689055692428 28 0 29 -0.00010956632059065082 30 -0.00017126756259446454
		 31 -0.00020828386376249246 32 -0.00012433686030218771 33 -0.00075370589926773734
		 34 -0.0028567977911805125 35 0 36 0.0015259589546346404 37 0.0019323945679321219
		 38 0.0021611324006373038 39 0.0022735409305482098 40 0.0023149339617070347 41 0.0019567832119351427;
createNode animCurveTA -n "QuickRigCharacter_LeftLeg_rotateZ";
	rename -uid "BE01EFC6-4194-31B7-83DD-F08D81073976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 19.862847269634763 2 44.43099129837605
		 3 60.295323606592625 4 72.713961534364557 5 82.783223480848278 6 90.935215683294487
		 7 97.463159653489058 8 102.66519339436886 9 106.85582973194194 10 110.66193444693543
		 11 114.98410942147154 12 120.18373465030568 13 125.93614791360052 14 131.53233479716704
		 15 135.9137570224562 16 137.89906366119945 17 136.73842213392771 18 132.66504507713819
		 19 126.7282409058767 20 120.21808896123942 21 114.36567711612764 22 109.01059491546376
		 23 102.56805243458832 24 94.329817055773631 25 83.9846970238616 26 71.527988520353802
		 27 57.100537221519488 28 40.794816866766659 29 22.090056537698796 30 3.8467709137892157
		 31 3.6452727045097659 32 29.441963829608881 33 49.054705674124527 34 63.15372689349627
		 35 73.062258022360155 36 77.588897572018112 37 75.501459897511211 38 66.938792716334333
		 39 53.136792168291031 40 35.930919654386116 41 19.862847269634763;
createNode animCurveTU -n "QuickRigCharacter_LeftLeg_scaleX";
	rename -uid "B5E21344-4110-784E-3507-C98C5DC075D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000302618826 2 1.0000001458481607
		 3 0.99999999375717197 4 1.0000000204476081 5 1.0000000506425815 6 1.0000000547122407
		 7 1.0000001575363828 8 0.99999994208253318 9 1.0000000522930097 10 0.99999997446629385
		 11 1.0000000343427697 12 1.0000001715348159 13 1.0000000848864898 14 1.0000000094101407
		 15 1.0000001235874774 16 1.0000001415995854 17 1.0000000989527567 18 1.0000001599583523
		 19 1.0000000940192106 20 1.0000001079887111 21 1.00000003069739 22 0.99999993170040158
		 23 0.99999998716872407 24 0.99999998483940755 25 1.000000046717382 26 1.0000001055433887
		 27 1.0000001513624261 28 0.9999999474234389 29 0.99999998526278577 30 0.99999997461734047
		 31 1.0000000885024918 32 1.0000000915402534 33 1.0000001073253895 34 1.0000001865814758
		 35 0.99999998513172639 36 1.0000001151960769 37 0.99999990402035588 38 1.0000000136129024
		 39 1.0000001405953505 40 1.0000000658774282 41 1.0000000302618826;
createNode animCurveTU -n "QuickRigCharacter_LeftLeg_scaleY";
	rename -uid "66866DC3-40AE-0D0F-2E1A-2BA251C050F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001134990151 2 1.0000002013227862
		 3 1.0000000340551563 4 1.0000000545099259 5 1.0000003087376814 6 1.000000093213254
		 7 1.0000001704936832 8 1.0000000559936049 9 0.9999999705886361 10 0.99999999865755551
		 11 1.0000001120373507 12 1.0000002985868017 13 1.0000001771314848 14 0.99999992640197966
		 15 1.0000001903485523 16 1.0000003122323584 17 1.0000002403270063 18 1.0000001995518044
		 19 1.0000000944363743 20 1.0000000328613319 21 1.0000001473880145 22 1.0000000054865894
		 23 1.0000000286218405 24 0.99999993770494622 25 1.0000000563182267 26 1.0000000679271583
		 27 1.0000001430929981 28 1.0000000043008626 29 1.0000000394695401 30 0.99999997077828184
		 31 0.99999996566358484 32 0.99999997213345182 33 1.0000000861170424 34 1.0000001640386553
		 35 1.0000000946424907 36 1.0000001970248358 37 0.99999997193906165 38 1.0000001614788561
		 39 1.0000002611646852 40 1.0000001936157146 41 1.0000001134990151;
createNode animCurveTU -n "QuickRigCharacter_LeftLeg_scaleZ";
	rename -uid "06A1BF91-48A8-5E4E-3B7A-D4BC2F45CF96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000703932646 2 1.0000000721471547
		 3 0.99999996025298554 4 0.99999999645439441 5 1.0000001537096592 6 1.0000000827222437
		 7 1.0000001590477667 8 1.0000000128362887 9 1.0000000580072526 10 1.0000000390674908
		 11 1.0000000911728046 12 1.000000120839087 13 1.0000000516716341 14 0.99999990591293542
		 15 1.0000000594145149 16 1.0000001093090789 17 1.0000000701090377 18 1.000000172259452
		 19 1.0000000867359289 20 1.0000000600161225 21 1.0000000545571777 22 1.0000000364248005
		 23 1.0000000247450007 24 0.99999991808246935 25 1.0000001421508022 26 1.000000072343489
		 27 1.0000000999991798 28 0.99999990983550713 29 1.0000000029501011 30 0.99999991658651777
		 31 1.0000001061172248 32 1.0000001185303731 33 1.0000000529727144 34 1.0000001953468616
		 35 1.0000001297741994 36 1.0000001317863496 37 0.99999996383044387 38 1.0000000742662309
		 39 1.0000001688664482 40 1.0000000930960034 41 1.0000000703932646;
createNode animCurveTL -n "QuickRigCharacter_LeftFoot_translateX";
	rename -uid "2B9C0037-4051-B177-A8CD-66922458CABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.46393891234943258 2 0.46393954900142503
		 3 0.46393902752388755 4 0.46393895908114396 5 0.46393910768043689 6 0.46393911120184755
		 7 0.46393923322299191 8 0.46393908317142635 9 0.46393901102335144 10 0.46393897878953605
		 11 0.46393895035593075 12 0.46393884460147045 13 0.46393903971175138 14 0.46393913254359975
		 15 0.46393914475967424 16 0.46393890078199285 17 0.46393897080941754 18 0.46393930536461503
		 19 0.46393887348784879 20 0.46393909960756147 21 0.46393918766012354 22 0.46393895305615224
		 23 0.46393962850061971 24 0.46393957107185613 25 0.4639399865967832 26 0.46393932262378429
		 27 0.46393931164566249 28 0.46393899435196573 29 0.46393926294182847 30 0.46393939989493804
		 31 0.46393939709378595 32 0.46393959922670036 33 0.46393932109491093 34 0.46393938959205072
		 35 0.46393939286695307 36 0.46393904327946062 37 0.46393913320631636 38 0.46393909252204019
		 39 0.46393896961519432 40 0.46393946306671024 41 0.46393891234943258;
createNode animCurveTL -n "QuickRigCharacter_LeftFoot_translateY";
	rename -uid "C29F1B60-4301-926E-1450-D4A32AA7FEED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 7.2896883906992113e-008 2 -8.2281979700837838e-008
		 3 7.2716273393780282e-008 4 5.6760283584367244e-008 5 -4.1173305191932745e-008 6 2.8192285057571097e-007
		 7 3.6000389577850458e-007 8 7.1465371433987463e-008 9 6.7852566481008126e-008 10 -1.0732688092929266e-007
		 11 -4.9939707444934812e-008 12 7.6464640912377034e-008 13 1.5083651760505746e-007
		 14 2.764094006835194e-007 15 1.0698261831976196e-009 16 2.0217952638290628e-007 17 1.5504347324224456e-007
		 18 3.7351957040243631e-007 19 -1.6322829154091779e-007 20 1.2911806535953473e-007
		 21 2.2920206994569982e-007 22 9.1120723180182503e-008 23 -5.2246145547663049e-008
		 24 3.7590058248326839e-008 25 1.2452381220384723e-007 26 -5.3167681102195272e-009
		 27 4.8402164907201951e-008 28 2.7912258815376846e-008 29 1.1262176755622023e-007
		 30 4.0652878112723556e-008 31 -5.9693134843996639e-008 32 -1.5750684688953243e-007
		 33 -3.1000639424405562e-008 34 1.1808683151315336e-007 35 1.8061804492930379e-007
		 36 2.5997013448630922e-007 37 6.1497786951747452e-008 38 -1.193208689187486e-008
		 39 -1.2953553465422374e-008 40 2.0347992801816871e-009 41 7.2896883906992113e-008;
createNode animCurveTL -n "QuickRigCharacter_LeftFoot_translateZ";
	rename -uid "70F42C7A-4200-1931-6729-E1A942535527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -4.6564218660893886e-008 2 -8.0715503982808917e-008
		 3 3.5000060272238899e-008 4 -1.780432643094798e-008 5 -6.4358458740088056e-008 6 -3.4067036498441893e-008
		 7 2.3342279007465551e-008 8 4.5979263774142963e-009 9 7.4369159741571881e-009 10 1.0520590185691958e-008
		 11 -1.6435026495287275e-009 12 -2.5925438524865285e-008 13 -7.8796310685191883e-008
		 14 -1.6774698643473585e-008 15 5.7857005355543838e-008 16 -4.2594509164217696e-008
		 17 -4.0769767188919557e-008 18 1.3403511793796951e-008 19 -4.3529138302744739e-008
		 20 1.7761004293959106e-008 21 -2.6238526871225077e-008 22 -5.6437781275064935e-008
		 23 4.786845444471055e-008 24 2.108629235664239e-008 25 6.32818620616149e-009 26 -3.6663698184113966e-008
		 27 -5.3619812754313048e-008 28 1.4665068559516215e-008 29 -5.0171531678078197e-008
		 30 5.3904385648451126e-008 31 -6.8109299884433479e-008 32 -1.0629259940664326e-007
		 33 -8.8644975484442057e-008 34 -5.5134702374726173e-008 35 2.1863996424675846e-007
		 36 -1.4069464812194177e-007 37 -2.3810600104368087e-008 38 -5.9529002205405136e-008
		 39 -1.519613025369182e-007 40 1.1461618822927732e-008 41 -4.6564218660893886e-008;
createNode animCurveTA -n "QuickRigCharacter_LeftFoot_rotateX";
	rename -uid "736018E8-4293-D610-229D-C2B42EBC6314";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -11.653737929080465 2 -12.915234475494628
		 3 -13.744511637292014 4 -14.203819348806663 5 -14.131200859382023 6 -11.972365266352524
		 7 -9.6346089523088825 8 -6.8755802031779343 9 -1.1530143596630853 10 2.878680461725831
		 11 4.5569686999897625 12 4.96985566153307 13 6.2209382888616531 14 5.2523067689807945
		 15 2.4654441766243638 16 -1.853770037461588 17 -6.6485979957931622 18 -10.855014818386163
		 19 -13.983402394432627 20 -16.301827115441238 21 -16.977143798330147 22 -16.954081818330629
		 23 -16.887106550144253 24 -15.764519714652726 25 -13.827044719735506 26 -11.168500955004333
		 27 -8.027720477086346 28 -4.7629889038907338 29 -1.7821109683214227 30 1.0956318504080431
		 31 1.6393826929212663 32 1.4790994299716915 33 -0.051819155638370785 34 -4.2238844833819931
		 35 -7.972004394086567 36 -10.546435596610188 37 -12.06559475871955 38 -12.777853712714045
		 39 -12.885458157221619 40 -12.040413253578812 41 -11.653737929080465;
createNode animCurveTA -n "QuickRigCharacter_LeftFoot_rotateY";
	rename -uid "8EA1DFF8-411A-ADEF-F9BC-6CA352376FE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.3526616906414755 2 3.4175452216829396
		 3 4.9646627199117042 4 6.8333308114909652 5 8.8004147302041016 6 11.246632118628517
		 7 12.274516535127022 8 11.480651024636717 9 10.117320935616984 10 8.582324769407732
		 11 7.3875380841256639 12 6.2180914904118012 13 6.376565134674812 14 6.9338628462028638
		 15 8.2326932714418994 16 9.6851251350160137 17 10.579112012583426 18 10.605417772378214
		 19 9.9657862094063372 20 8.2877998969345601 21 8.0910827809522097 22 7.6987770534829405
		 23 5.1320335986224679 24 3.0338409096295664 25 0.78283030679557286 26 -1.431942064827048
		 27 -3.4464551634126517 28 -5.1450185509980679 29 -6.4911138412792315 30 -6.871308656041144
		 31 -7.2569556288322197 32 -6.5338447302714711 33 -5.4916630745866026 34 -5.5047935873255653
		 35 -4.9834013353152145 36 -4.31233716308647 37 -3.4901986445779039 38 -2.3877663627282426
		 39 -0.95868868707482136 40 1.3321686334624609 41 2.3526616906414755;
createNode animCurveTA -n "QuickRigCharacter_LeftFoot_rotateZ";
	rename -uid "01C4D349-494B-9C6A-293C-A08264BA7977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.9395590298052241 2 3.2830219735621258
		 3 6.0749363342065568 4 10.325752204994258 5 14.932342431485992 6 19.50011517581834
		 7 23.250247073902106 8 25.823656249168096 9 27.557111045242561 10 27.571200020198347
		 11 25.315283474102714 12 20.690016131197073 13 14.815873058474125 14 8.6803775140818669
		 15 3.3809834517076491 16 -0.93319192088508673 17 -5.0294410227156998 18 -9.6123603152512196
		 19 -14.494234394380143 20 -18.859798541130679 21 -21.489061150007366 22 -21.997798201967999
		 23 -20.970612743417764 24 -18.711742215052169 25 -15.611348127629759 26 -11.862066226442931
		 27 -7.4579059890459023 28 -2.2084547353146604 29 4.3779626086979313 30 11.223407099083055
		 31 11.134549721713695 32 0.34714851654284329 33 -7.9116145536030107 34 -14.305962959898187
		 35 -19.911598175239316 36 -24.350552170803624 37 -26.178125267292877 38 -23.937250880879084
		 39 -17.196314817265272 40 -6.7321007467582925 41 4.9395590298052232;
createNode animCurveTU -n "QuickRigCharacter_LeftFoot_scaleX";
	rename -uid "92EC9ED1-4896-038F-6F64-958EE33D62E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999990017419271 2 1.0000000902803705
		 3 1.0000000816535088 4 0.99999996604400221 5 1.0000001376596239 6 1.0000000786746823
		 7 1.0000000473974042 8 1.0000000183037085 9 1.0000000267942117 10 1.0000002009929811
		 11 1.0000001390544304 12 1.0000000642370155 13 0.99999997193556422 14 1.0000000221137963
		 15 1.0000000159259734 16 1.0000000179458581 17 1.0000001496952127 18 0.99999999465051415
		 19 0.99999996927775514 20 0.99999999933711325 21 1.0000000997421719 22 1.0000000189610527
		 23 1.0000001776180141 24 1.000000148024645 25 0.99999998329792161 26 1.0000000255883876
		 27 1.0000000807441141 28 1.0000001220618346 29 1.0000000538264318 30 1.000000228520826
		 31 1.000000143245529 32 1.0000001742715223 33 1.0000000702781682 34 1.00000006917442
		 35 1.0000000649232628 36 1.0000000690906596 37 1.0000002115467488 38 0.9999999341182314
		 39 1.0000001110720971 40 0.99999996837440175 41 0.99999990017419271;
createNode animCurveTU -n "QuickRigCharacter_LeftFoot_scaleY";
	rename -uid "C9660E58-4DBC-5344-48FD-0FBE1873E4E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999986220873316 2 1.0000000819221277
		 3 1.0000002156836489 4 1.0000000345743507 5 1.0000002403782211 6 1.0000001938417009
		 7 1.0000001295933554 8 1.0000000952153107 9 1.0000000251785555 10 1.0000003168146241
		 11 1.0000002179626837 12 1.0000001569008929 13 0.99999997673283736 14 1.0000001202266158
		 15 1.0000000935539046 16 1.000000042330313 17 1.0000001902323568 18 1.0000000655390107
		 19 0.99999997421716602 20 1.0000000039550356 21 1.0000000310665733 22 1.0000000466272718
		 23 1.0000001044792228 24 1.0000000312583355 25 1.0000000011050796 26 1.0000000020946296
		 27 0.99999993010956512 28 1.0000000020826811 29 0.99999996201441499 30 1.0000000222772636
		 31 1.0000000114648078 32 0.99999999987620636 33 0.99999997491657899 34 0.99999998696431036
		 35 1.0000000249976653 36 1.0000000006454819 37 1.0000000264525211 38 0.99999996624456944
		 39 1.0000001206633566 40 1.0000000605335251 41 0.99999986220873316;
createNode animCurveTU -n "QuickRigCharacter_LeftFoot_scaleZ";
	rename -uid "FE461E16-46EB-91A9-1699-8C9784A5FA76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999995408045916 2 1.0000000723258022
		 3 1.0000000956531481 4 1.0000000112111327 5 1.0000001710086435 6 1.0000001209814968
		 7 1.0000000738407584 8 0.99999999570637277 9 1.0000000557211748 10 1.0000001504966296
		 11 1.00000013221558 12 1.000000011929977 13 0.99999985736074914 14 0.99999998869646245
		 15 1.0000000704658301 16 0.99999999548067553 17 1.0000001405773962 18 1.0000000270863936
		 19 0.99999998556340441 20 1.0000000075990978 21 1.0000000352771992 22 1.000000062874818
		 23 1.0000000306642258 24 1.0000001093375455 25 0.9999999505767555 26 0.99999998843286575
		 27 1.0000000673469938 28 1.0000001260180689 29 1.0000000163232885 30 1.0000001534780028
		 31 1.0000001353934926 32 1.0000001587467426 33 1.0000000599045302 34 1.0000000322518228
		 35 1.0000000709967103 36 1.0000000438159475 37 1.0000001463679857 38 0.99999998208551921
		 39 1.0000001770365921 40 0.99999998317110261 41 0.99999995408045916;
createNode animCurveTL -n "QuickRigCharacter_LeftToeBase_translateX";
	rename -uid "E32AB9DD-406C-C957-7796-199FDA685028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.12792410132468329 2 0.12792405465176576
		 3 0.12792394693272319 4 0.12792399457342343 5 0.12792408053326271 6 0.12792403310381928
		 7 0.12792394635299886 8 0.12792400703697993 9 0.12792398867068414 10 0.12792394853945524
		 11 0.12792392913854003 12 0.12792399248539041 13 0.12792400300348633 14 0.12792397236564959
		 15 0.1279240339668844 16 0.12792398797420737 17 0.12792406708446158 18 0.12792404157325643
		 19 0.12792402972198233 20 0.12792416020662067 21 0.12792400897673531 22 0.1279241515314625
		 23 0.12792400780299995 24 0.12792411839928813 25 0.12792401525769886 26 0.12792415851357214
		 27 0.12792415746175351 28 0.12792410160657242 29 0.12792396572816039 30 0.12792410681804825
		 31 0.12792398140493411 32 0.12792405387877678 33 0.12792411262098172 34 0.1279240377948386
		 35 0.12792404045803385 36 0.12792414791850748 37 0.12792414675377861 38 0.12792418639160283
		 39 0.12792400236230667 40 0.12792405628910902 41 0.12792410132468329;
createNode animCurveTL -n "QuickRigCharacter_LeftToeBase_translateY";
	rename -uid "34279026-4685-FEBD-8D9B-DC8B331C4EF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.1541383173607756e-008 2 3.8549202656668058e-008
		 3 8.7569823392641407e-009 4 6.4791900484806319e-008 5 7.9723385368879459e-008 6 7.3830788380746531e-008
		 7 -1.3565606167276201e-008 8 4.0115743900059897e-008 9 2.5510122014793523e-009 10 3.223503426852403e-008
		 11 -5.964975926531224e-009 12 -7.6182061548024645e-009 13 8.0222166474186456e-008
		 14 -3.5609919706303118e-008 15 3.0262145713777499e-008 16 1.014147571254398e-008
		 17 5.3231541770060177e-008 18 3.8191172713197834e-008 19 -4.1694869139519143e-008
		 20 -5.24091962716966e-009 21 -5.7982840857562228e-008 22 -4.2600621519284236e-008
		 23 2.6325168533958276e-009 24 -3.1524489401135724e-008 25 -6.6484583598480644e-008
		 26 -1.0443531550663466e-009 27 -3.5676227696512795e-008 28 3.0695615294007438e-008
		 29 -2.8206451254675357e-008 30 -4.1716841181482776e-009 31 2.6793065543984085e-009
		 32 -6.6517706898139294e-011 33 -1.8055105357461799e-008 34 4.5764718237251145e-008
		 35 2.1069953461960723e-008 36 -2.5780724985935421e-008 37 1.609873562680164e-008
		 38 3.9940702123431042e-008 39 2.3890062763598509e-008 40 9.0292077388198773e-008
		 41 1.1541383173607756e-008;
createNode animCurveTL -n "QuickRigCharacter_LeftToeBase_translateZ";
	rename -uid "80A69400-406A-3E2C-5C8D-739FE8CE38E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0348215944588902e-007 2 7.0140442609556428e-008
		 3 5.9689254570116642e-008 4 7.134967797028935e-008 5 5.7269758233502444e-008 6 5.1129994087517615e-008
		 7 7.5143036077918175e-008 8 8.0755023947887137e-008 9 5.3852119137332012e-008 10 4.0464744941459687e-008
		 11 6.0416861256129558e-008 12 5.6445225862233882e-008 13 6.8567804518693264e-008
		 14 7.3520815249139565e-008 15 6.1287871879756035e-008 16 7.9252694327180958e-008
		 17 5.5299704833089439e-008 18 7.6510582314170961e-008 19 7.5901065308414672e-008
		 20 7.1914360830760412e-008 21 5.3524628125245499e-008 22 4.9991650321601353e-008
		 23 6.033210219413831e-008 24 4.7926446709034563e-008 25 7.4585811673522079e-008 26 6.5523542551737533e-008
		 27 5.5313819351532345e-008 28 4.4334468647377887e-008 29 7.2103211943286282e-008
		 30 4.5618787680723476e-008 31 5.4794055905915682e-008 32 7.1026283485764459e-008
		 33 5.2962359449182373e-008 34 7.8646333783183304e-008 35 7.1217832808834205e-008
		 36 5.6805632099310445e-008 37 6.4205220366986278e-008 38 6.5840025817998085e-008
		 39 4.5758015483343688e-008 40 8.2705610733313508e-008 41 1.0348215944588902e-007;
createNode animCurveTA -n "QuickRigCharacter_LeftToeBase_rotateX";
	rename -uid "2EC6F7F8-4948-B7B8-8BD9-13A4B15CA025";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -10.81204927942788 2 -10.767260125687214
		 3 -10.617656507892871 4 -10.332395887791746 5 -9.8638279402314026 6 -9.133629954037362
		 7 -8.0080608843541956 8 -6.3029104184018703 9 -4.2564505956279772 10 -3.0125025176335836
		 11 -2.700620231241031 12 -2.7320144092212635 13 -2.8198236591372936 14 -2.9544385319219701
		 15 -3.1262958570522361 16 -3.3257921167300331 17 -3.5433548543522737 18 -3.7693726243657055
		 19 -3.9943047535739513 20 -4.2085423382238485 21 -4.4025457782592872 22 -4.5751743512311762
		 23 -4.7357457316469738 24 -4.8903621210608943 25 -5.0450819332037318 26 -5.2059508471022697
		 27 -5.3789960439026752 28 -5.5701909586500431 29 -5.7854712950890157 30 -6.0306884667519096
		 31 -6.3116128453683586 32 -6.7574287775868802 33 -7.6044435904098746 34 -8.7033226387849698
		 35 -9.5336448562274025 36 -10.058186826814318 37 -10.390440595502303 38 -10.600380990437984
		 39 -10.72677647717855 40 -10.792500861414236 41 -10.81204927942788;
createNode animCurveTA -n "QuickRigCharacter_LeftToeBase_rotateY";
	rename -uid "60AF429F-4145-73C4-0E7A-E39A501F49A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.2254058267771812 2 4.2653310440278815
		 3 4.3985845192819779 4 4.6524088421268974 5 5.068584271757115 6 5.7151286856284473
		 7 6.706710968419678 8 8.1961166425133971 9 9.9610698406994373 10 11.020655846953799
		 11 11.284637067483606 12 11.276360689148346 13 11.252763280004258 14 11.215788802688245
		 15 11.167298544549196 16 11.109206385778887 17 11.043425985665566 18 10.9718452974898
		 19 10.896433238306589 20 10.819105449407855 21 10.741837266665884 22 10.682974366290637
		 23 10.650707848477461 24 10.631762565697848 25 10.612769385779931 26 10.580450353469725
		 27 10.521472197613013 28 10.422462091947505 29 10.270038255850299 30 10.050856198323647
		 31 9.7514445797637297 32 9.2296147963131183 33 8.2099303242200445 34 6.8613467797165404
		 35 5.8297354331981133 36 5.1736291528456002 37 4.7564941499473514 38 4.4922988595262998
		 39 4.3330102194488163 40 4.2500889107067321 41 4.2254058267771812;
createNode animCurveTA -n "QuickRigCharacter_LeftToeBase_rotateZ";
	rename -uid "448C888F-45A5-3ECD-D179-01B27698C1A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -36.10380117147033 2 -35.795742785297243
		 3 -34.767059391814492 4 -32.806170813305833 5 -29.586610375598202 6 -24.573689752765397
		 7 -16.858160255203117 8 -5.2030292720334934 9 8.7194430941263192 10 17.140663799856203
		 11 19.246595675146335 12 19.085892286631008 13 18.635687732900156 14 17.943822149355359
		 15 17.058122344886929 16 16.02644482967905 17 14.896663716729966 18 13.716671088481132
		 19 12.534394550726768 20 11.397826375676193 21 10.354975138519857 22 9.4717938977155125
		 23 8.7351713115730778 24 8.0744372528180453 25 7.4189853760029703 26 6.6982704774148658
		 27 5.841801992242817 28 4.7792031830598853 29 3.440211538225411 30 1.7548777174384138
		 31 -0.34641318558354595 32 -3.8309727318424565 33 -10.516162931618606 34 -19.248732017476041
		 35 -25.874398721428566 36 -30.06825639021497 37 -32.727207410549568 38 -34.408217208635975
		 39 -35.420571085339027 40 -35.947104009239496 41 -36.10380117147033;
createNode animCurveTU -n "QuickRigCharacter_LeftToeBase_scaleX";
	rename -uid "F54ED2BC-4D64-08CC-3042-1F8851F234A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999997310645083 2 0.99999988757492686
		 3 1.0000000679386607 4 0.99999999778486692 5 1.0000001020434091 6 1.0000001249755368
		 7 1.0000000385285457 8 1.0000001482176455 9 1.0000000538892968 10 0.99999997757957249
		 11 0.99999998226662867 12 1.0000000052589539 13 0.99999997354290382 14 0.99999993767782602
		 15 0.99999996755708309 16 0.99999994980869011 17 1.0000001130448934 18 1.0000001206350839
		 19 0.99999992582456676 20 1.0000000799530671 21 0.99999997356314896 22 0.99999999994799005
		 23 1.0000001748720015 24 0.99999992220607925 25 1.0000000974086134 26 1.0000001061929149
		 27 1.0000000881666857 28 1.0000001071751656 29 1.0000000516600156 30 1.0000000569919318
		 31 1.0000000896185717 32 1.0000001318612153 33 1.0000001108920085 34 1.0000000499101136
		 35 1.0000001103682226 36 1.0000001079821617 37 1.0000000281161274 38 0.99999997763252768
		 39 1.0000001488659287 40 0.99999995878510073 41 0.99999997310645083;
createNode animCurveTU -n "QuickRigCharacter_LeftToeBase_scaleY";
	rename -uid "A9D4F3E1-455A-F730-B4EF-3C9A58EF3CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999997042808253 2 1.000000015744517
		 3 1.0000001247072732 4 0.99999998994107586 5 1.0000000847220625 6 1.0000001572486799
		 7 0.99999999448528898 8 1.0000002479779695 9 1.0000001275786798 10 1.0000000032280754
		 11 1.0000001642937417 12 1.0000002112538675 13 1.000000041641862 14 0.999999814202431
		 15 0.99999998664053003 16 0.99999991020260004 17 1.000000209725048 18 1.0000000948699013
		 19 0.99999995598125724 20 1.000000187945675 21 1.0000000295587215 22 1.0000000142462577
		 23 1.0000000859401383 24 1.0000000513445237 25 0.99999992195256027 26 1.0000000565034881
		 27 1.0000000136680538 28 1.0000000318940356 29 1.0000000030088338 30 0.99999998926239664
		 31 0.99999996972757232 32 1.0000000076789139 33 0.99999999012193019 34 0.99999998102053456
		 35 0.99999999570523124 36 1.0000000065008443 37 0.99999990241625747 38 0.99999998649629696
		 39 1.000000019248475 40 0.99999992114335334 41 0.99999997042808253;
createNode animCurveTU -n "QuickRigCharacter_LeftToeBase_scaleZ";
	rename -uid "5EC5847E-4C30-B39D-441C-D6A0BCACB41A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000501506394 2 0.99999994431196859
		 3 1.0000000700614897 4 0.99999995762126936 5 1.0000000567960226 6 1.0000000896677221
		 7 0.99999991979531755 8 1.0000000923241783 9 1.0000000247131866 10 0.99999989305940518
		 11 1.0000000372789843 12 1.0000000574125283 13 1.0000000509705498 14 0.99999988935077444
		 15 0.99999996771161626 16 0.99999994794676139 17 1.0000000766487771 18 0.99999997147716646
		 19 0.99999988046801003 20 1.0000001519673123 21 0.99999996797417856 22 0.99999999543404561
		 23 1.0000001234026388 24 1.0000000569413388 25 1.0000000466800092 26 1.0000001439196993
		 27 1.0000000818252277 28 1.0000001061602819 29 1.0000000741910429 30 1.0000000057830172
		 31 1.0000000460871834 32 1.0000001251427753 33 1.0000001498106277 34 0.9999999764724441
		 35 1.0000000536738016 36 1.0000001444450803 37 0.99999999448132626 38 0.99999995616190485
		 39 1.000000122056167 40 1.0000000486138567 41 1.0000000501506394;
createNode animCurveTL -n "QuickRigCharacter_RightUpLeg_translateX";
	rename -uid "053AC8F6-4DE3-83FC-7493-D78EF15922D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.015957749248514119 2 -0.015957712930149769
		 3 -0.015957764510722113 4 -0.015957702386597248 5 -0.015957722292508834 6 -0.015957723736292877
		 7 -0.015957668095047381 8 -0.015957815597293035 9 -0.015957733530095625 10 -0.015957733159872447
		 11 -0.015957787820105977 12 -0.015957798389409136 13 -0.015957726679143178 14 -0.015957757745030249
		 15 -0.015957764609695033 16 -0.015957747900180549 17 -0.015957786390931261 18 -0.015957768556462072
		 19 -0.015957784686954996 20 -0.015957721791277208 21 -0.015957819349366388 22 -0.015957704480600653
		 23 -0.015957790178500915 24 -0.015957796875374301 25 -0.015957746968341555 26 -0.015957803672837941
		 27 -0.015957816929742564 28 -0.015957781804746531 29 -0.015957790875144866 30 -0.015957797661196337
		 31 -0.015957810070086963 32 -0.015957730736631676 33 -0.015957746153657412 34 -0.015957810785810125
		 35 -0.01595782285524024 36 -0.015957854467431219 37 -0.015957699537464693 38 -0.015957698338112607
		 39 -0.015957718719733265 40 -0.015957814430141468 41 -0.015957749248514119;
createNode animCurveTL -n "QuickRigCharacter_RightUpLeg_translateY";
	rename -uid "B5811794-4D8F-B7C7-8128-BAA603307E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.015417085585036787 2 0.015417068452218423
		 3 0.015417082258715275 4 0.015417066492762857 5 0.015417083560368567 6 0.015417081010906273
		 7 0.015417067622435639 8 0.015417125411514441 9 0.015417083684110402 10 0.015417083498736198
		 11 0.01541710377781115 12 0.015417094530255896 13 0.015417082543446413 14 0.015417083512815104
		 15 0.015417118047666812 16 0.015417094664547193 17 0.015417133485601831 18 0.015417092580568018
		 19 0.015417111601193981 20 0.015417117518898387 21 0.015417118326350128 22 0.015417086383656553
		 23 0.015417090284259131 24 0.015417085634954085 25 0.015417109407649541 26 0.01541709970849265
		 27 0.015417127933666102 28 0.015417100268221517 29 0.015417117211667417 30 0.01541712072289851
		 31 0.015417088487356914 32 0.015417072110277558 33 0.015417094675565509 34 0.015417112202081249
		 35 0.015417114982640073 36 0.015417103166586231 37 0.015417107444284959 38 0.01541704293288973
		 39 0.015417054065817091 40 0.015417128081003604 41 0.015417085585036787;
createNode animCurveTL -n "QuickRigCharacter_RightUpLeg_translateZ";
	rename -uid "9EE142AE-43F3-46B1-EC49-B29E2F57C56F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.088874964511335655 2 -0.088874965203317266
		 3 -0.088875048879412583 4 -0.088875034184368457 5 -0.088875124398592506 6 -0.088874967248432454
		 7 -0.088874973830395665 8 -0.088875039100891728 9 -0.088874990869681064 10 -0.088874946477638453
		 11 -0.088875015087846218 12 -0.088874942518975944 13 -0.088875153437044427 14 -0.088874938754149577
		 15 -0.088875184135231461 16 -0.088875025730649884 17 -0.088875088530761009 18 -0.088875023902716177
		 19 -0.088875092131822681 20 -0.088875127913171093 21 -0.088874954789183946 22 -0.088874991577831838
		 23 -0.088874975017198057 24 -0.088874941944837541 25 -0.088875125942227615 26 -0.088874973634065615
		 27 -0.088875062266180041 28 -0.088874959492737104 29 -0.088875033578953155 30 -0.08887509239357097
		 31 -0.08887488889564317 32 -0.088874916999153175 33 -0.088874976370395292 34 -0.088875048288278719
		 35 -0.088874895993288627 36 -0.088875014189505566 37 -0.08887517285658797 38 -0.08887502247834958
		 39 -0.088875089290123596 40 -0.088874967453445169 41 -0.088874964511335655;
createNode animCurveTA -n "QuickRigCharacter_RightUpLeg_rotateX";
	rename -uid "0FBA1632-43B2-0FA1-ACA4-E0918A64420D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 7.15585048125324 2 5.8900784181900807
		 3 3.6533202023132838 4 0.59901080098466031 5 -2.6824630853882048 6 -5.4092045357583727
		 7 -6.857716881850549 8 -6.7342994519856614 9 -6.1831912104642068 10 -6.6514604332326801
		 11 -7.4849823803396704 12 -7.7592996077031184 13 -7.1605987947315439 14 -5.7551828055433134
		 15 -2.8112472323357163 16 2.6984768259146041 17 10.950835712494451 18 20.564980602143233
		 19 29.217629649926792 20 34.74334857733006 21 35.888244668287228 22 35.395176462591536
		 23 32.984450472529218 24 28.947101674638503 25 24.056711264685848 26 19.238968100720523
		 27 15.302172621253241 28 12.583550793886269 29 10.894809701909578 30 9.847918168776129
		 31 9.2251602429472612 32 9.2156819044072105 33 10.380952379821583 34 12.787083764268607
		 35 14.981114827343491 36 15.545778440366131 37 14.352843680204501 38 12.169355956694821
		 39 9.8569607800314909 40 8.0386928536491293 41 7.15585048125324;
createNode animCurveTA -n "QuickRigCharacter_RightUpLeg_rotateY";
	rename -uid "3A86ED2F-4AD6-ED72-70CC-F1A9E11A1CDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -29.381027636298324 2 -28.167553567730408
		 3 -26.594540257090348 4 -24.527983030926876 5 -21.731998641423196 6 -18.046161209158438
		 7 -13.558337265362299 8 -8.7363401315034235 9 -4.5061935797911996 10 -1.1993015723109639
		 11 1.573578444486847 12 4.4211422676551608 13 8.0488339107579012 14 12.272563300392237
		 15 16.278743678488187 16 19.247147546951481 17 19.978315701950915 18 17.47857706174258
		 19 11.425705003928837 20 2.3870785230844715 21 -5.715901224427185 22 -1.9168507238845749
		 23 2.7809313685590915 24 5.472074796560042 25 5.9218638846820015 26 4.0634713773310596
		 27 0.38970583319878238 28 -4.0831217351815656 29 -8.2029482551871009 30 -11.242295310640507
		 31 -13.2558420986232 32 -15.28228248177064 33 -18.477588654764734 34 -22.25176974017895
		 35 -24.66374633950586 36 -26.092359426863499 37 -27.29076365563304 38 -28.307337408245033
		 39 -29.011429024197493 40 -29.353381884291156 41 -29.381027636298324;
createNode animCurveTA -n "QuickRigCharacter_RightUpLeg_rotateZ";
	rename -uid "3D4C2278-4CB5-5A51-405E-2C98B215ED2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -65.695996512694975 2 -71.195565312485144
		 3 -75.370664066397964 4 -77.361363880785248 5 -77.034768838366602 6 -74.796454592413227
		 7 -71.314602854190198 8 -67.416946436207454 9 -63.749154434628466 10 -60.3017416643046
		 11 -58.893399123940675 12 -60.078086448076611 13 -60.677997338512561 14 -58.176412050846487
		 15 -51.237765661282161 16 -39.533623021864329 17 -24.08034900155819 18 -6.9706331236343804
		 19 9.7217727350498748 20 25.092211302589533 21 36.404386636641853 22 31.372745818876037
		 23 24.425986715550533 24 18.420276993221481 25 13.300429496653024 26 9.7078666765315607
		 27 8.4208462234528447 28 9.4306336672098041 29 12.316735543059984 30 15.329643698859149
		 31 16.070132094368535 32 12.017128753524887 33 1.5727760737446395 34 -14.609009752098444
		 35 -31.820481230269429 36 -46.162448341811761 37 -55.832470975137603 38 -61.140183746587716
		 39 -63.54877552337009 40 -64.621031866637793 41 -65.695996512694975;
createNode animCurveTU -n "QuickRigCharacter_RightUpLeg_scaleX";
	rename -uid "B1787F2E-4850-CEEE-CEBF-CEBC97007B93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000801304023 2 0.99999996478360897
		 3 1.000000089332107 4 0.9999999703678506 5 1.0000001897168516 6 1.0000000550513048
		 7 1.0000000873888413 8 0.999999996844816 9 1.0000001636078368 10 0.99999998056058759
		 11 1.000000169396821 12 1.0000000155333506 13 1.0000000625302672 14 1.0000001458001457
		 15 1.000000087582487 16 1.0000001009211223 17 0.99999998957875691 18 0.99999987536365864
		 19 0.99999998612235275 20 1.0000001049142593 21 1.0000001278746973 22 1.0000001577820268
		 23 1.0000000077554769 24 1.0000000701706913 25 0.99999995162897803 26 0.99999995559999011
		 27 0.99999986794752282 28 1.0000000174772974 29 1.000000143453661 30 1.000000130694439
		 31 1.0000000998983374 32 1.0000000455500462 33 1.0000001398600071 34 1.0000000997064167
		 35 0.99999990129225091 36 1.0000002169191857 37 1.0000001294232068 38 1.0000001121316395
		 39 1.0000000255470072 40 0.99999996765763033 41 1.0000000801304023;
createNode animCurveTU -n "QuickRigCharacter_RightUpLeg_scaleY";
	rename -uid "B77E1197-40D1-F428-7723-0381D84A62ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001175033049 2 1.0000000659815196
		 3 1.0000001810444998 4 1.0000000255390382 5 1.0000003027067204 6 1.0000002223103504
		 7 1.0000002555223284 8 0.99999998756848996 9 1.0000002838670257 10 0.99999991440262592
		 11 1.0000002223653042 12 0.99999991408659028 13 1.0000001144718929 14 1.0000001781119296
		 15 1.0000001305494135 16 1.0000000924845156 17 1.000000011965013 18 0.99999990291611673
		 19 1.0000000126300408 20 1.0000001048021006 21 1.0000000261222095 22 1.0000000908639386
		 23 0.99999991720143644 24 1.0000000993112317 25 0.99999996334478702 26 1.0000000409070999
		 27 0.99999991891227036 28 1.0000000392152693 29 1.0000000873989487 30 1.000000066033919
		 31 1.0000000281491819 32 0.99999999406584583 33 1.0000001176636659 34 1.0000001516866095
		 35 0.99999993861289482 36 1.0000002445678793 37 1.0000000833708087 38 1.0000001462651493
		 39 1.0000000783077163 40 0.99999991093691687 41 1.0000001175033049;
createNode animCurveTU -n "QuickRigCharacter_RightUpLeg_scaleZ";
	rename -uid "6FD3979D-435F-8522-3129-D5A4316B2A14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001025497283 2 1.0000000611478053
		 3 1.00000013123971 4 0.99999998929869338 5 1.0000002093655056 6 1.0000000340104938
		 7 1.0000000944092882 8 0.99999997667652873 9 1.0000001284561946 10 0.99999990173265663
		 11 1.000000133737422 12 1.0000000028361298 13 1.0000000457208487 14 1.0000001392844828
		 15 1.0000001363472364 16 1.0000001263210196 17 0.99999997633534032 18 0.99999991726808923
		 19 0.99999998775998544 20 1.0000001321954988 21 1.0000001418880589 22 1.0000001574671225
		 23 0.99999992285002981 24 1.0000000274822101 25 1.0000000135767093 26 1.0000000220571801
		 27 0.99999990896310775 28 0.99999998534038326 29 1.0000001375431931 30 1.000000095548615
		 31 1.0000001066170254 32 1.0000000273186394 33 1.000000065350064 34 1.0000001799513876
		 35 0.99999997437963117 36 1.0000001441693864 37 1.0000000412010819 38 1.0000001114813388
		 39 1.0000000660742039 40 0.99999990325307131 41 1.0000001025497283;
createNode animCurveTL -n "QuickRigCharacter_RightLeg_translateX";
	rename -uid "8338144F-4738-49C6-B31A-1787399126F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.34096009212016781 2 -0.34096018409827955
		 3 -0.34095984192389495 4 -0.34096009559072299 5 -0.34096011596210518 6 -0.34096015083041947
		 7 -0.34095997379348592 8 -0.34095995095649545 9 -0.34095982142550113 10 -0.34095990016162009
		 11 -0.34095987624030982 12 -0.34095983740696106 13 -0.34095995335670171 14 -0.34095974960898334
		 15 -0.3409599164335444 16 -0.3409598414711803 17 -0.34095994082849823 18 -0.34096032643404078
		 19 -0.34095992708902523 20 -0.3409599264050121 21 -0.34095964160853631 22 -0.34096003258683111
		 23 -0.34095972038362959 24 -0.34095999802160132 25 -0.34096006812377133 26 -0.34096010977521757
		 27 -0.3409598125560781 28 -0.34095997403788941 29 -0.34095974532527706 30 -0.34095977341168343
		 31 -0.34095979108686381 32 -0.3409601280603286 33 -0.34096015607704433 34 -0.34095984243718086
		 35 -0.34096007231435466 36 -0.34096005789689449 37 -0.34095995122090822 38 -0.34095987599710742
		 39 -0.34095979088971279 40 -0.34095990868446374 41 -0.34096009212016781;
createNode animCurveTL -n "QuickRigCharacter_RightLeg_translateY";
	rename -uid "F67E51AA-4965-2530-1632-C78218B1486A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.4581137188970386e-007 2 -3.9024305735324562e-007
		 3 -1.2564128439862544e-008 4 3.248304295766502e-008 5 -1.8711357768097515e-007 6 1.3758890611370589e-006
		 7 8.3002417738953222e-009 8 -9.2565522464838072e-008 9 -1.3089054533566015e-008 10 1.6247064195340501e-007
		 11 8.1653799952619015e-008 12 -1.053859573119098e-007 13 -1.009069745805391e-007
		 14 7.2151225039789328e-005 15 2.2950356638062885e-006 16 -1.1446750754373625e-007
		 17 1.6880347246228668e-007 18 -2.8635113759278851e-007 19 4.7388449218033204e-007
		 20 2.3995298839452063e-006 21 5.5962941374332335e-008 22 -7.2104705033382288e-006
		 23 6.4907043510942229e-006 24 -1.9367459829666702e-006 25 -2.3170283220608212e-006
		 26 -4.0243937231387865e-006 27 0.00044268790192750988 28 9.1681546493305183e-007
		 29 -9.3390789981384612e-007 30 -5.4642088613832133e-008 31 -4.1395872372618216e-007
		 32 -2.0366662933923863e-007 33 3.9941405092669415e-007 34 -3.2571338380193994e-007
		 35 -6.8107318973886776e-007 36 1.8691775743207018e-007 37 -3.3012970705215138e-006
		 38 -6.6352524076762623e-006 39 -1.6349463720644054e-007 40 4.7656509991611532e-008
		 41 4.4581137188970386e-007;
createNode animCurveTL -n "QuickRigCharacter_RightLeg_translateZ";
	rename -uid "885D3B71-42E3-1EC8-93E3-16A475758116";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -4.9327727587566987e-006 2 1.6262669074862402e-006
		 3 -9.3168218029404681e-010 4 8.8096253669789356e-009 5 4.3601625915989927e-007 6 -1.2082397965018643e-006
		 7 5.8675682939046679e-008 8 -2.8327175121134475e-008 9 8.798389644404381e-008 10 9.6068765553791745e-009
		 11 6.9421435565653062e-008 12 -3.4555327026453146e-008 13 8.3781177520059206e-008
		 14 -0.00028406153026078407 15 -3.6758703050043808e-006 16 2.9173941394233795e-007
		 17 -3.7658452800570782e-009 18 8.284330321295386e-008 19 -2.5073142346343502e-007
		 20 -1.5875554428390615e-006 21 6.385282978804696e-008 22 5.093431565628137e-006 23 -4.267707732399373e-006
		 24 1.1935298308096698e-006 25 1.1853547725415581e-006 26 1.4837308411586038e-006
		 27 -0.00012241922988916797 28 -2.0760450897938653e-007 29 1.6391224306744336e-007
		 30 -2.1271091910080031e-009 31 5.0029463949385903e-008 32 -4.3704104335517968e-008
		 33 7.5255119185158043e-008 34 -6.3524165270223425e-008 35 -2.7160468150100316e-007
		 36 1.3041345582109897e-007 37 -7.2726031002190438e-006 38 -3.8439957268678885e-005
		 39 -4.3812306138590884e-006 40 8.1689588498079508e-007 41 -4.9327727587566987e-006;
createNode animCurveTA -n "QuickRigCharacter_RightLeg_rotateX";
	rename -uid "7A469B3E-41DD-A2B9-6440-2E99A5BCA83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -2.9863102767480485 2 -2.914226335255933
		 3 -2.8003809440654672 4 -2.5317688668430591 5 -2.095850811543106 6 -1.6219607101924804
		 7 -1.3886315310866844 8 -0.65485969973269187 9 -2.7585026046580716 10 -3.3489871907254698
		 11 -2.1227333931044861 12 -1.1842374677578948 13 -1.2513764812460246 14 -1.5723755068618959
		 15 -1.5593566191012584 16 -2.6010701990543685 17 -2.9697951394229163 18 -3.7817240926676665
		 19 -4.111226152099511 20 -5.7659665051727194 21 -6.6891960569509523 22 -6.7353082328817999
		 23 -5.8682939595962411 24 -4.0677570785772925 25 -0.074510071126102265 26 3.3260814679984212
		 27 6.938098358463602 28 10.555721339678389 29 12.760572871354871 30 15.854543254435592
		 31 18.20763552334525 32 19.10425356530207 33 19.753203103293568 34 19.47378132440889
		 35 17.525894351718499 36 14.182360539355729 37 10.194467643131505 38 6.2350131913600819
		 39 2.6546355727413617 40 -0.44309498221406285 41 -2.9863102767480485;
createNode animCurveTA -n "QuickRigCharacter_RightLeg_rotateY";
	rename -uid "EACAAC0E-4D13-603A-C2EA-D0A2AAF43E4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.023978454640406037 2 -0.024582013019313866
		 3 -0.024282864798948298 4 -0.023220675662016067 5 -0.020986419048991223 6 -0.01741516575235726
		 7 -0.012602857782135407 8 -0.0075009060788052851 9 -0.0032164709999852677 10 -0.00079226358150794962
		 11 -7.2757430709409729e-005 12 0 13 0 14 -0.022759021699605919 15 -0.00019647267561894433
		 16 6.515871058549076e-005 17 6.3026176708401508e-005 18 8.2669816859984918e-005 19 0
		 20 -0.00014158831181704557 21 0.00017660333713423313 22 0.0010524787783915697 23 -0.00019328894523035277
		 24 0.0009013911702931217 25 0.00083517142575510457 26 0.00078719321121294887 27 0.0055922482669367125
		 28 0.00094009524481166687 29 0.0010548653776076989 30 0.0012046517446298529 31 0.0012485337174031723
		 32 0.00033006447371028549 33 -0.0028329170085761106 34 -0.0071865868288847959 35 -0.010422007659537358
		 36 -0.013046987308945764 37 -0.014827655189357216 38 -0.014270930973296408 39 -0.020692481380714289
		 40 -0.023148074614117942 41 -0.023978454640406037;
createNode animCurveTA -n "QuickRigCharacter_RightLeg_rotateZ";
	rename -uid "B176E84B-44D2-0B0F-C5F1-6EB413F15CC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 112.24345681229389 2 109.26743236409433
		 3 104.29899306903208 4 97.059045218748182 5 87.672077521674836 6 76.578827234015762
		 7 64.534364710283086 8 52.822241553693281 9 42.992731115535676 10 35.915263657699825
		 11 35.001647808859701 12 42.098553276313531 13 52.352440482138284 14 61.455941611533923
		 15 67.066573910350044 16 67.761468000438811 17 63.004937193437527 18 52.998995393583677
		 19 38.218955828913309 20 19.046539549434428 21 3.1262612949585011 22 20.586152186310603
		 23 41.802410275010082 24 60.368617649591414 25 76.957088655259625 26 91.400923469314975
		 27 103.30974317651223 28 112.68250849055738 29 119.3849485385514 30 124.06604312440567
		 31 127.64183677507543 32 131.48797531240089 33 136.13760807934241 34 140.24240708394228
		 35 142.1634289899801 36 141.13476062578991 37 137.24465193466895 38 131.32625164089686
		 39 124.48177380561103 40 117.78493956079485 41 112.24345681229389;
createNode animCurveTU -n "QuickRigCharacter_RightLeg_scaleX";
	rename -uid "0126B319-48B0-9AD5-FA1F-E7BB9417BC74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000609312059 2 1.0000000090075611
		 3 1.0000001496620317 4 1.0000000093176844 5 0.99999998205911556 6 0.99999992218803091
		 7 1.0000000169912941 8 1.0000000566579041 9 1.0000000548351706 10 0.99999993650583052
		 11 0.99999998308835525 12 1.0000000317817526 13 1.0000000646898857 14 1.0000000057815639
		 15 0.99999993884116589 16 1.0000001203074105 17 1.0000000228287944 18 0.99999996844075412
		 19 1.0000000886931664 20 1.0000000609698194 21 1.0000001095260356 22 1.0000000412683443
		 23 1.0000002252797593 24 1.0000001156742666 25 1.0000000098971069 26 1.0000001378994265
		 27 1.0000001418729461 28 1.0000001515346257 29 1.0000001449926827 30 1.0000000268723082
		 31 0.99999990963322904 32 1.0000000433920637 33 0.99999996564406024 34 1.000000075167141
		 35 0.9999999691470105 36 0.99999999895279523 37 1.0000000298252087 38 0.9999999930484863
		 39 1.0000001049230276 40 1.0000000810061935 41 1.0000000609312059;
createNode animCurveTU -n "QuickRigCharacter_RightLeg_scaleY";
	rename -uid "978C3D42-48AD-E8FF-5AE3-8C878D57BCE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000522160664 2 1.0000000124856889
		 3 1.0000000735398988 4 0.99999999566806252 5 0.99999995496303296 6 0.99999995257662344
		 7 0.99999997801467644 8 1.0000000437359495 9 1.0000001602414754 10 0.99999999091528835
		 11 0.99999999055955002 12 1.0000001473888498 13 1.0000000614555589 14 1.0000000719853559
		 15 0.99999993549802269 16 1.0000000941194298 17 0.99999990818653361 18 0.99999997883235081
		 19 1.000000013115486 20 1.0000000234661761 21 1.0000000403790608 22 1.0000000338311779
		 23 1.0000000027964904 24 0.99999998029946124 25 1.0000000130386582 26 0.99999999859080735
		 27 0.99999998643165611 28 1.0000000401245404 29 1.000000020810617 30 1.0000000594992977
		 31 0.99999987447464744 32 0.99999996705225358 33 0.99999998052093653 34 0.99999998790032429
		 35 0.99999996423408155 36 0.99999999808246398 37 1.0000000359433423 38 1.0000000306500045
		 39 1.0000000272896286 40 1.0000000080123637 41 1.0000000522160664;
createNode animCurveTU -n "QuickRigCharacter_RightLeg_scaleZ";
	rename -uid "ECA91539-4E12-F247-13B4-75BE811F60F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001519923589 2 1.0000000153619213
		 3 1.0000000727151683 4 0.99999999495640057 5 0.9999999610672724 6 0.99999985313680129
		 7 0.9999999986079583 8 0.99999994072423315 9 1.0000001152534337 10 0.99999999255936556
		 11 1.000000062594417 12 0.99999998012229863 13 1.000000100753065 14 1.0000000482547284
		 15 0.9999999701414467 16 1.000000150714333 17 0.99999992208935806 18 1.0000000259599826
		 19 1.0000000813683327 20 1.0000000541028344 21 1.0000001674832617 22 1.0000001071164963
		 23 1.0000001898876201 24 1.0000001116296815 25 1.0000000321724032 26 1.0000001552895539
		 27 1.0000001741674194 28 1.000000159951826 29 1.0000001431677219 30 1.0000000505431459
		 31 0.99999991199071314 32 1.000000029537581 33 1.0000000268213349 34 0.99999995599674441
		 35 0.99999997845012623 36 0.99999997623557413 37 1.0000000452806088 38 1.0000000287869752
		 39 1.0000002125074878 40 1.0000001155726501 41 1.0000001519923589;
createNode animCurveTL -n "QuickRigCharacter_RightFoot_translateX";
	rename -uid "4418C441-4A20-9C6C-EFDA-D98F9C2306DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.46393907903349735 2 -0.46393942880109434
		 3 -0.46393903026550171 4 -0.46393893073921438 5 -0.46393923445537111 6 -0.46393949925097944
		 7 -0.46393953830323126 8 -0.46393923347775762 9 -0.46393941340841038 10 -0.46393939571987275
		 11 -0.46393937520360162 12 -0.46393934592383834 13 -0.46393895629981247 14 -0.46393951165014835
		 15 -0.463939067123182 16 -0.46393952508664771 17 -0.46393914019782928 18 -0.46393921033573904
		 19 -0.46393947113349354 20 -0.46393938104442878 21 -0.46393921084781697 22 -0.46393935028311833
		 23 -0.46393943275821342 24 -0.46393905505064653 25 -0.46393911415680661 26 -0.46393914633059602
		 27 -0.46393903389930452 28 -0.46393888214588602 29 -0.46393897477700413 30 -0.4639389641423653
		 31 -0.46393906309338762 32 -0.46393903125360181 33 -0.46393911912111846 34 -0.46393913513368623
		 35 -0.46393917003439589 36 -0.46393905881616021 37 -0.46393938404084573 38 -0.46393889744041017
		 39 -0.46393899786383985 40 -0.46393923034264545 41 -0.46393907903349735;
createNode animCurveTL -n "QuickRigCharacter_RightFoot_translateY";
	rename -uid "E7F09027-4006-69A8-096A-808887EF7E1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -2.4429146940008194e-007 2 -2.9653630372550311e-007
		 3 3.1783345804115014e-008 4 2.3042411285700836e-008 5 -8.2818200652923229e-008 6 -1.0566683734225536e-007
		 7 -1.0898024591199373e-007 8 -1.8139736042144251e-008 9 -4.8456509418315361e-008
		 10 -3.0775237931379709e-008 11 1.1041278469292593e-008 12 -2.2454968302554333e-008
		 13 1.0490174062738333e-008 14 -8.3168929663202104e-008 15 -3.0064267608764796e-008
		 16 -1.1102365493620425e-007 17 -4.3886474720977735e-008 18 -2.4872806029918594e-007
		 19 -7.7969065870320268e-009 20 -4.9549507750157321e-008 21 -1.1497353909817321e-007
		 22 -8.8613568038908859e-009 23 1.3595895396179002e-007 24 -1.3094047453421355e-007
		 25 -1.4147956136412177e-007 26 -8.3892540843066856e-008 27 -1.6022267530502178e-007
		 28 1.2525647221650616e-007 29 1.0993440191953141e-007 30 5.0661577581934129e-008
		 31 -5.3184703752151563e-008 32 -6.3876279305929985e-008 33 -2.6804347555753341e-007
		 34 -9.4782910124990855e-008 35 -7.8421439155818013e-008 36 7.6724042870068842e-008
		 37 -1.2807455050278803e-007 38 -2.8990850296395367e-007 39 -2.9466247042364557e-009
		 40 -7.2798253256678438e-008 41 -2.4429146940008194e-007;
createNode animCurveTL -n "QuickRigCharacter_RightFoot_translateZ";
	rename -uid "4FCEE1F8-4314-E8D8-D507-4D9B2FAAD6D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.9113629110308919e-008 2 -6.6639041662597265e-009
		 3 1.7474595717104081e-007 4 -4.7431898444472153e-008 5 -3.7602610536424666e-009 6 -1.5271893856194652e-008
		 7 -5.4344947297280124e-008 8 -4.1844324201179005e-008 9 6.0158088904249669e-008 10 -2.8518057488824411e-008
		 11 -4.5272981226140984e-008 12 -2.5486865154800145e-007 13 3.2689000938557201e-007
		 14 4.4902051645756558e-008 15 1.8547330804530306e-008 16 7.6524040153458379e-008
		 17 -3.5079076554644927e-009 18 2.7289817993159104e-008 19 3.759854475271496e-007
		 20 2.0133163987356983e-008 21 7.3366789526962966e-008 22 2.8654912100911647e-008
		 23 7.6463132911985806e-008 24 1.1096454199943651e-009 25 -5.2641030656719326e-008
		 26 8.9996181675822127e-008 27 8.2733377153587635e-008 28 5.0991893161267397e-008
		 29 8.1178298696471527e-008 30 2.1448911979859986e-010 31 -3.9337008068685008e-008
		 32 4.2074174118056361e-008 33 1.5801889528432865e-007 34 6.4044699570331433e-008
		 35 1.4645690768588793e-007 36 -1.9362638568054536e-008 37 1.1928279395334584e-007
		 38 -6.4473701044676094e-009 39 4.1298027149139217e-008 40 9.4411502722380196e-008
		 41 4.9113629110308919e-008;
createNode animCurveTA -n "QuickRigCharacter_RightFoot_rotateX";
	rename -uid "7DEB32F4-4F3D-583B-EEFF-15845BC152D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -12.197386289290584 2 -9.3646762984524958
		 3 -6.7411552163291022 4 -4.5299809613813906 5 -2.9192212983933894 6 -2.0309581168491144
		 7 -1.831473077118863 8 -2.8671250447254564 9 -0.85574082388660833 10 1.4804236992776028
		 11 2.7021947726854258 12 3.4308585322192227 13 3.9948146809249976 14 4.3099987285731336
		 15 4.359434312304419 16 4.537267541631385 17 3.6377774360976134 18 2.1618415473165014
		 19 0.1334763455193666 20 -0.88122766350871751 21 -1.4282411610309649 22 -2.8540193745805973
		 23 -4.5342142057265233 24 -5.914176221559158 25 -7.7869118317963695 26 -8.2081712536232203
		 27 -8.0177739223424993 28 -7.4546927580619498 29 -5.9847024835081237 30 -5.8387964285398599
		 31 -5.8501070231318311 32 -4.9731776590602514 33 -3.5381779927733121 34 -2.0195344030622913
		 35 -1.8589488125482885 36 -2.856484799686124 37 -4.4532402646805398 38 -6.3762019234748486
		 39 -8.4476728723158505 40 -10.466722654805968 41 -12.197386289290584;
createNode animCurveTA -n "QuickRigCharacter_RightFoot_rotateY";
	rename -uid "08BDC971-424F-7FAC-91FA-D5B554489851";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.807472856079567 2 2.1040230599868788
		 3 -0.69067971024773889 4 -3.317015867554562 5 -5.5411001702978115 6 -7.2560732201848914
		 7 -8.4828524155964544 8 -9.831950876296208 9 -9.683840409360954 10 -9.7529792389440075
		 11 -10.172146539056943 12 -10.452419315195272 13 -10.379168468414885 14 -10.084733406962981
		 15 -9.6921485840080859 16 -8.1418010915844601 17 -7.3631547504373609 18 -6.807029519037993
		 19 -7.2411362661262739 20 -6.5884986298025812 21 -5.7948323873297696 22 -3.2299375621942961
		 23 -0.075493742155577276 24 3.1966817771913911 25 5.4121408407439668 26 8.1261169893559657
		 27 10.43623946742238 28 12.345853649112364 29 14.605811601522568 30 15.521246628264096
		 31 15.815299047112539 32 16.015896026586759 33 15.724097361577646 34 15.067926440682813
		 35 14.08013251998481 36 12.555763641247788 37 10.600644217420426 38 8.6717811968564895
		 39 7.0523326207514758 40 5.7748729562758196 41 4.807472856079567;
createNode animCurveTA -n "QuickRigCharacter_RightFoot_rotateZ";
	rename -uid "B9F7E968-4433-E02F-1101-B9ADA11BFB86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 7.4240183927086791 2 8.9024059571954908
		 3 10.635288937622564 4 12.39355112591044 5 14.141044869711047 6 15.981163043680935
		 7 17.994021906495782 8 20.152486323271141 9 21.302832321291351 10 21.378814939427247
		 11 19.353310328075853 12 13.788709782224222 13 5.9531937403308692 14 -2.3715348659360833
		 15 -10.049514435767298 16 -15.965282792751729 17 -18.682045155336255 18 -17.387834655077111
		 19 -11.805818854152488 20 -2.3358342956580183 21 7.5451214152862445 22 5.5869729999847948
		 23 4.0106368040017539 24 4.4783355892882968 25 5.7226452943545407 26 7.1961588974438815
		 27 8.3720380434039647 28 8.8838040259488604 29 8.7713934990067539 30 7.6828564061350599
		 31 6.367414048207908 32 5.6809375538921856 33 7.0066488422873627 34 11.278844428979765
		 35 15.719633330685967 36 18.372233555393752 37 18.440711518272586 38 16.263584473446151
		 39 12.952054849598198 40 9.6820053709793328 41 7.4240183927086791;
createNode animCurveTU -n "QuickRigCharacter_RightFoot_scaleX";
	rename -uid "50C24966-46F5-F393-C4DF-36A770FDCEA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999997484204939 2 1.0000000852843827
		 3 1.0000001012893986 4 1.0000000197089096 5 0.99999991967718893 6 0.99999999458637367
		 7 1.0000001782623835 8 0.9999999550266746 9 0.99999988650628746 10 1.0000000295445157
		 11 1.0000000159500251 12 1.0000000640929534 13 0.9999999602927867 14 1.000000044299443
		 15 0.99999995040133438 16 1.0000001074759473 17 1.00000003140521 18 1.000000070020256
		 19 1.0000001369188758 20 1.0000000983388353 21 1.0000000581438433 22 0.99999997187948397
		 23 0.99999993814623167 24 1.0000000782822307 25 1.0000001130917411 26 0.99999990959310503
		 27 1.0000000281681622 28 0.99999997447499422 29 1.0000000380080278 30 1.0000000494075989
		 31 1.0000001300215533 32 1.0000000418582777 33 0.9999999753773664 34 1.000000086005665
		 35 1.000000014280233 36 1.0000000383449958 37 1.0000000415276782 38 1.0000000829335318
		 39 0.99999995657575591 40 1.0000000344900173 41 0.99999997484204939;
createNode animCurveTU -n "QuickRigCharacter_RightFoot_scaleY";
	rename -uid "9A00CC46-4C24-EADF-79EF-2F9AB106FCC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000044379587 2 1.0000000910403466
		 3 1.0000001223506805 4 1.0000000702447887 5 0.99999990490923418 6 1.000000033798514
		 7 1.000000229862178 8 0.99999990560609264 9 0.99999994126638503 10 1.0000000774486069
		 11 0.99999992485215983 12 1.0000001235254954 13 0.999999856521123 14 1.0000000433227503
		 15 0.99999995735557801 16 1.0000000741411847 17 1.0000001943867551 18 1.0000000867975753
		 19 1.000000259014231 20 1.0000000599486125 21 1.0000001792984929 22 1.0000000074888475
		 23 0.99999999655596072 24 1.0000000164686156 25 0.99999999559203567 26 0.99999994412365134
		 27 0.99999994873988662 28 1.0000000226612831 29 0.99999998418054381 30 0.99999996139050706
		 31 1.0000000438790726 32 0.99999999605307355 33 1.000000027461315 34 0.99999989872807649
		 35 1.0000000309253561 36 0.99999997669512874 37 1.0000000327479697 38 1.0000000328175045
		 39 0.99999989314810023 40 1.0000000018545117 41 1.0000000044379587;
createNode animCurveTU -n "QuickRigCharacter_RightFoot_scaleZ";
	rename -uid "8C42FB4C-4E65-35B1-0C6D-799EE10E8FA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.9999999517684911 2 1.0000000554036719
		 3 1.0000001252534751 4 0.99999996455639173 5 0.99999998140852531 6 1.0000000125446857
		 7 1.0000002349558923 8 0.99999992546591643 9 0.99999993481109084 10 1.0000000775814053
		 11 1.0000000197327166 12 1.0000000735182928 13 0.99999997741562852 14 1.0000000481528228
		 15 1.0000000153008832 16 1.0000001479346512 17 1.0000001464867221 18 1.0000001149626907
		 19 1.0000001878507099 20 1.0000000027831299 21 1.0000001199653552 22 1.0000000143113199
		 23 0.99999993984116031 24 0.99999999462969846 25 1.0000001007342536 26 0.99999985252807544
		 27 1.0000000422182833 28 0.99999996462733687 29 1.0000001319188316 30 1.0000001406519303
		 31 1.0000002270006485 32 1.0000000638699114 33 1.0000000027920293 34 1.000000214320647
		 35 1.0000000186857239 36 1.0000001033346237 37 1.0000000862633158 38 1.0000000398628355
		 39 0.99999997961693421 40 0.99999998873279949 41 0.9999999517684911;
createNode animCurveTL -n "QuickRigCharacter_RightToeBase_translateX";
	rename -uid "57557559-43CD-06F8-C8F4-3B92E3460A8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.1279241034370649 2 -0.12792413610427461
		 3 -0.12792408051690385 4 -0.1279240025630452 5 -0.12792400189198133 6 -0.12792400347501803
		 7 -0.12792404860643358 8 -0.12792397523109866 9 -0.12792407735037184 10 -0.1279240373906049
		 11 -0.12792398713841516 12 -0.12792423035862169 13 -0.12792403873227629 14 -0.12792402486165044
		 15 -0.12792409684771791 16 -0.127924109403833 17 -0.12792406559661218 18 -0.12792413586763762
		 19 -0.12792399736280305 20 -0.12792398016916259 21 -0.12792414956122955 22 -0.12792398939262281
		 23 -0.12792396990780092 24 -0.12792405792466005 25 -0.12792402020786658 26 -0.12792394422241973
		 27 -0.12792401232390271 28 -0.12792403097875174 29 -0.12792399864909776 30 -0.12792397986267148
		 31 -0.12792394920028621 32 -0.12792403665840923 33 -0.12792399696447443 34 -0.12792400926365616
		 35 -0.12792391728056898 36 -0.12792403679149153 37 -0.12792403420218851 38 -0.12792404196502288
		 39 -0.12792411426938394 40 -0.12792405146204133 41 -0.1279241034370649;
createNode animCurveTL -n "QuickRigCharacter_RightToeBase_translateY";
	rename -uid "5F9EF483-4BE3-C0AA-6BA7-AC9542704A58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -3.3030988300097873e-008 2 -2.3134884159503601e-008
		 3 9.8997331932082486e-009 4 -3.24115477212672e-008 5 -7.126515555455626e-009 6 2.0047519200261377e-008
		 7 6.3115947028791193e-008 8 -2.5673456534036632e-008 9 4.3343432807319005e-008 10 -1.9378156821403537e-008
		 11 1.8201198059841772e-008 12 -5.2801736671881372e-009 13 4.6103562922894528e-008
		 14 7.4420593954016565e-008 15 1.2365265007474591e-008 16 4.5592224573454129e-009
		 17 2.2983981087243421e-008 18 -4.6814901146774449e-008 19 9.7665103382382768e-009
		 20 9.8008396776094746e-009 21 1.0213315277951552e-008 22 4.1657772840153486e-008
		 23 -5.3385160612151594e-008 24 -2.3796632575567857e-008 25 6.6674014078671457e-008
		 26 4.9553930097090416e-008 27 -2.2741808152204612e-008 28 7.3489780874069763e-008
		 29 4.7125506625889105e-008 30 3.881370190583766e-008 31 -6.7057082020483e-008 32 3.4484223050412768e-008
		 33 7.5103660179820508e-008 34 -1.7305756756513803e-008 35 -6.2120751920247129e-009
		 36 3.0463457676432885e-008 37 -4.4490558082088687e-009 38 3.8845738714599068e-009
		 39 -1.3609035498518552e-008 40 -3.8638094208565123e-008 41 -3.3030988300097873e-008;
createNode animCurveTL -n "QuickRigCharacter_RightToeBase_translateZ";
	rename -uid "7D2FD1D4-44FF-7A0B-9F5A-6E9BB05167D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -2.7705180407622264e-008 2 1.5892239701997823e-008
		 3 2.0623373053751948e-008 4 -4.9805573887340418e-010 5 -2.3724456665874527e-009 6 1.8408549516402141e-008
		 7 2.7680426772924705e-008 8 -3.5217910099305527e-009 9 3.9047179889450946e-009 10 8.0676699099058176e-009
		 11 2.0093557289158072e-008 12 2.5993775780719375e-008 13 -1.9483951785304045e-009
		 14 9.0449466361164364e-009 15 4.4285898814777629e-009 16 7.021563386278018e-009 17 1.8157115893036037e-008
		 18 2.0280932979677148e-008 19 1.2642084952219079e-008 20 1.4730008564001195e-008
		 21 2.0056223251074812e-008 22 2.2686850087438872e-009 23 8.3750194690424001e-009
		 24 7.6802546544740839e-010 25 3.0543094062807084e-008 26 -6.4237497099384201e-009
		 27 1.9412678398111894e-008 28 2.8629601587226718e-008 29 3.1998776464092769e-008
		 30 2.8375670169111802e-008 31 4.5831649444494363e-008 32 1.3968115268880865e-008
		 33 1.2837654992381431e-008 34 1.4338209766151523e-008 35 -7.7463612058181747e-009
		 36 2.2506593388982312e-008 37 2.8514908834154084e-008 38 2.3621532925233167e-008
		 39 3.5706737868679287e-008 40 1.0820061291383355e-009 41 -2.7705180407622264e-008;
createNode animCurveTA -n "QuickRigCharacter_RightToeBase_rotateX";
	rename -uid "7C54AB5A-440C-0A33-4C41-6B94061F69FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 -6.4503758415856432e-005 13 -0.00028583205280955688 14 -0.00062043562887713821
		 15 -0.0010093067423626737 16 -0.0014335691122429738 17 -0.0018248177038334725 18 -0.0021633576766702974
		 19 -0.0024240035005297614 20 -0.0025941075481819092 21 -0.0026519548294671319 22 -0.0025887832306048008
		 23 -0.0024244134669257574 24 -0.002152543652138733 25 -0.0018201770364585279 26 -0.0014197108139891821
		 27 -0.0010038510826688694 28 -0.00061225613236556072 29 -0.00027580661238782184 30 0
		 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "QuickRigCharacter_RightToeBase_rotateY";
	rename -uid "B4237392-45C5-F05A-F95E-4281104745FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 -0.00012178781851284519 16 -0.00026475181753204014 17 -0.00043307512015727725
		 18 -0.0006690464166222963 19 -0.00086334726722203583 20 -0.0010329803024086864 21 -0.0010783809018636082
		 22 -0.0010347564033907938 23 -0.00088241244712196311 24 -0.00068059214013635363 25 -0.00044585685968332443
		 26 -0.00026668075700866218 27 -0.00011416740501127391 28 0 29 0 30 0 31 0 32 0 33 0
		 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "QuickRigCharacter_RightToeBase_rotateZ";
	rename -uid "2A283169-499F-4B67-2045-26B1991F391D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 -1.2893870288603124 13 -4.7891424552228106 14 -9.9466644623717038 15 -16.209390301639267
		 16 -23.024710173743784 17 -29.840004846067899 18 -36.102714612310763 19 -41.260250597005175
		 20 -44.759999908865844 21 -46.049380086779308 22 -44.760001100859625 23 -41.260256031350551
		 24 -36.102724418409998 25 -29.840012223736004 26 -23.024684321990861 27 -16.209373921611906
		 28 -9.9466690869959251 29 -4.7891340879677777 30 -1.2893720094760781 31 0 32 0 33 0
		 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "QuickRigCharacter_RightToeBase_scaleX";
	rename -uid "33E0249C-49CD-5C87-B189-189643709629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001082587069 2 0.99999996840837069
		 3 1.0000001522839028 4 0.99999996746743303 5 1.0000000298633616 6 1.0000000614837714
		 7 1.0000000542269853 8 0.99999998017236369 9 1.0000001275647454 10 0.99999991792332033
		 11 1.0000001206169244 12 1.0000001699156327 13 1.0000000252533872 14 1.0000001989788416
		 15 1.0000000903112272 16 1.0000001175806259 17 1.0000000046711766 18 0.99999996164968485
		 19 1.0000001103670422 20 1.0000001270221062 21 1.000000017940863 22 1.0000001249002606
		 23 1.000000012485567 24 1.0000002079972181 25 1.0000000614340361 26 1.0000000454633815
		 27 1.0000000889978218 28 0.9999999580123663 29 1.0000000063840522 30 1.0000000145171377
		 31 1.000000013207508 32 0.99999994566468986 33 1.0000000665968398 34 1.0000001564758687
		 35 1.0000000679141949 36 1.00000002683773 37 1.0000000727123741 38 1.000000067987691
		 39 0.99999991046337156 40 0.99999996552319503 41 1.0000001082587069;
createNode animCurveTU -n "QuickRigCharacter_RightToeBase_scaleY";
	rename -uid "21E2A2D0-4230-AF97-6550-BBA4939FB467";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000734823742 2 0.99999993938757858
		 3 1.0000001579042943 4 0.99999998584590044 5 1.0000000200360919 6 0.99999999369253767
		 7 1.0000002418172513 8 1.0000000640473747 9 1.0000001792943731 10 1.0000000279185548
		 11 1.0000001792255058 12 1.0000003106254776 13 1.0000000899940722 14 1.0000002281277822
		 15 1.0000002345542638 16 1.0000001418024729 17 0.99999999726470756 18 0.99999988453641397
		 19 1.0000001811184143 20 1.0000001639837242 21 0.99999993369299423 22 1.0000001737962447
		 23 0.99999997321884992 24 1.0000001866084613 25 1.0000000967343714 26 0.99999997782032535
		 27 0.99999992707289587 28 0.99999995838189149 29 0.99999999954300467 30 0.99999999345944424
		 31 0.9999999526703055 32 1.0000000170540861 33 0.99999996037816785 34 0.99999994697525807
		 35 1.0000000315883948 36 0.99999998212806862 37 1.0000000197923615 38 1.0000000642158231
		 39 0.99999986784480221 40 0.99999994178158247 41 1.0000000734823742;
createNode animCurveTU -n "QuickRigCharacter_RightToeBase_scaleZ";
	rename -uid "CB108B57-41A7-DAEA-DF1A-F480A0E71B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001364049851 2 0.99999995737955871
		 3 1.0000002528749388 4 0.99999998929910805 5 1.0000000794085786 6 1.0000000065637973
		 7 1.0000001427416521 8 0.99999999137746365 9 1.0000001186616478 10 1.0000000227707633
		 11 1.0000001614468119 12 1.0000001236064882 13 1.0000000782085032 14 1.000000162132151
		 15 1.0000001400867164 16 1.0000000802734157 17 1.0000000494533672 18 0.99999992942835947
		 19 1.00000010132133 20 1.0000000660324573 21 0.9999999810184852 22 1.0000000608987822
		 23 0.99999998339988339 24 1.0000002676475661 25 1.00000007786113 26 1.0000000055137257
		 27 1.000000051031569 28 0.99999993350728089 29 1.0000000481437976 30 1.0000000695459081
		 31 0.99999997818641506 32 0.99999992346451938 33 1.0000000881247288 34 1.0000001188312075
		 35 1.0000001497564039 36 1.0000000828294278 37 1.0000000815124546 38 1.0000001291930747
		 39 1.0000000111434666 40 0.99999999244347837 41 1.0000001364049851;
createNode animCurveTL -n "QuickRigCharacter_Spine_translateX";
	rename -uid "CB95FB0C-4BD1-365A-1C0A-88939DB14BD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.088593077187326091 2 0.08859304645725942
		 3 0.088593082215800228 4 0.088593156156015457 5 0.088593112062199997 6 0.088593080126299392
		 7 0.088593084471777536 8 0.088593167246876159 9 0.088593072640776288 10 0.088593134752299824
		 11 0.088593085660766346 12 0.088593060017432348 13 0.088593150710715635 14 0.088593083674013542
		 15 0.088593093306610624 16 0.088593047756660048 17 0.088593162691668684 18 0.088593084729892413
		 19 0.08859321123822099 20 0.088593172031381326 21 0.088593071089009365 22 0.088593111244796172
		 23 0.088593082080116403 24 0.088593036936106984 25 0.08859318861462398 26 0.088593043774837954
		 27 0.088593115725307425 28 0.088593082683777885 29 0.088593132269776761 30 0.088593197426636724
		 31 0.088593065273880001 32 0.088593049614315342 33 0.088593129347941904 34 0.088593168981589657
		 35 0.088593079700508212 36 0.088593065836624726 37 0.088593163863173605 38 0.088593034515340896
		 39 0.088593062344467913 40 0.088593070619237727 41 0.088593077187326091;
createNode animCurveTL -n "QuickRigCharacter_Spine_translateY";
	rename -uid "E2D29F16-4F78-4D7F-EF71-E9A522602B7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 6.5425036694932713e-008 2 5.2862191139979585e-008
		 3 8.1672099589980014e-008 4 1.5978265466287667e-009 5 1.7332342533649125e-007 6 9.0207021017363333e-008
		 7 -9.4714445744159548e-008 8 1.953519166519868e-007 9 2.7251686063323178e-009 10 -2.0425456614958648e-007
		 11 2.8695647785070833e-007 12 -3.0453085493320484e-008 13 -1.5369317672764283e-007
		 14 6.6833245071507013e-008 15 1.6289314643813668e-008 16 1.2910405974508876e-007
		 17 1.6022496431844502e-007 18 1.6382866512287818e-008 19 -1.4178939764519782e-007
		 20 -4.5001279502798749e-009 21 -3.1409962915063261e-008 22 3.3400271064465413e-008
		 23 -6.126608365519814e-008 24 1.0337179006114638e-007 25 -6.9986001562938327e-008
		 26 1.0507653058766664e-009 27 -4.595083957781299e-009 28 3.4641475465946313e-009
		 29 -2.469055676357357e-008 30 1.2454545867512933e-007 31 3.0013798451022924e-008
		 32 -2.5126108909034883e-008 33 -3.514815798411064e-007 34 -9.3400648459862628e-008
		 35 4.5281673521913036e-010 36 1.8189284602954103e-008 37 -1.3499801692518077e-007
		 38 2.1471119325155998e-007 39 2.5044429470710837e-007 40 5.7829085164939899e-009
		 41 6.5425036694932713e-008;
createNode animCurveTL -n "QuickRigCharacter_Spine_translateZ";
	rename -uid "69AFBFCB-4DCF-B87A-E04F-FB97E2EC1EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -4.6611310988708968e-008 2 -4.2722337632028485e-008
		 3 -4.5755970781158341e-008 4 -1.0497820248644984e-008 5 -3.8586253685579663e-008
		 6 -3.8019989263560203e-008 7 8.7612399024550309e-009 8 -9.3581205673487499e-009 9 -8.6521538378292472e-009
		 10 1.5569261366810138e-008 11 -2.4478419255180574e-008 12 -5.1210477636232101e-009
		 13 -9.9417082788377804e-009 14 6.3208805300973836e-010 15 1.4262155900723883e-011
		 16 4.6960347610536251e-009 17 -1.6012623582639664e-008 18 -3.0126659282814219e-008
		 19 -3.118000551083355e-008 20 1.6675723735204429e-009 21 1.0781140264981559e-008
		 22 1.9211629158633059e-008 23 -1.5844021259425743e-008 24 4.9350924236080123e-009
		 25 -1.4088430315695178e-008 26 -9.9039746181972525e-010 27 6.3619112644630607e-010
		 28 6.4641039365653801e-009 29 8.1687985975520406e-009 30 1.0508625041261155e-008
		 31 -6.4390896370447595e-009 32 -1.5222693929839439e-008 33 1.7646961855688482e-008
		 34 1.8255747358253416e-008 35 1.7652990940142388e-008 36 -2.2056331125952511e-008
		 37 -2.1723924730210344e-008 38 -5.9079558818453396e-008 39 -7.7024342957088268e-008
		 40 -4.2692938961863552e-009 41 -4.6611310988708968e-008;
createNode animCurveTA -n "QuickRigCharacter_Spine_rotateX";
	rename -uid "EED8A8B2-4312-F8F9-B96F-8489E9A444EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -34.189169922591091 2 -33.92939322963155
		 3 -33.152996209327938 4 -31.868559745538434 5 -30.091899010748044 6 -27.847417108856668
		 7 -25.169429558882779 8 -22.102981535709297 9 -18.704893711656023 10 -15.04369474040173
		 11 -11.19993945445035 12 -7.2643415717471171 13 -3.3362476140531907 14 0.47946797869727209
		 15 4.07581835773785 16 7.3475587295894753 17 10.195009992017733 18 12.527524067214118
		 19 14.266104301361377 20 15.345319989781864 21 15.714034014336445 22 15.34529400968237
		 23 14.266109319291093 24 12.527493212428363 25 10.195025927399202 26 7.3475957968160852
		 27 4.0758211379411966 28 0.47948198018260513 29 -3.3362324197382223 30 -7.2643157805999854
		 31 -11.199899238001768 32 -15.043707891009104 33 -18.704834445899404 34 -22.10303488819681
		 35 -25.169410232097288 36 -27.847418702872503 37 -30.091837987413836 38 -31.868538575065013
		 39 -33.152987454174671 40 -33.929454628003903 41 -34.189169922591091;
createNode animCurveTA -n "QuickRigCharacter_Spine_rotateY";
	rename -uid "7A9F56AD-4E6B-41BF-9997-C48474114D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -5.2352784496942864 2 -5.2192865786354075
		 3 -5.1714939299490741 4 -5.0923681962450491 5 -4.9829872279444398 6 -4.8447693874104143
		 7 -4.6798812485626966 8 -4.4910515860427189 9 -4.281825428197334 10 -4.0563634066654002
		 11 -3.819703157424005 12 -3.5773594168659173 13 -3.3354669618486565 14 -3.1005200176504246
		 15 -2.8790813724677933 16 -2.6776129107211237 17 -2.5022864908273106 18 -2.3586614479287431
		 19 -2.2516021736068796 20 -2.1851636032142689 21 -2.1624354538316934 22 -2.1851484240341179
		 23 -2.2516013187362454 24 -2.3586493492410301 25 -2.5022977360541918 26 -2.677609939659634
		 27 -2.8790927518397362 28 -3.1005455459611304 29 -3.3354714719900262 30 -3.5773709232386852
		 31 -3.8196963749498947 32 -4.0563607152669316 33 -4.2818187753828605 34 -4.4910412534917583
		 35 -4.6798976746004728 36 -4.8447652252899553 37 -4.9829879664794667 38 -5.0923827915988475
		 39 -5.1714728040464513 40 -5.219284682783937 41 -5.2352784496942864;
createNode animCurveTA -n "QuickRigCharacter_Spine_rotateZ";
	rename -uid "26C4E661-4087-8029-5EAE-2F91084E0A72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 7.2832597012084452 2 7.2358894580370539
		 3 7.0942742664687168 4 6.8599995249433352 5 6.5360016439232309 6 6.1266360569595886
		 7 5.6382287606274293 8 5.0789436414682667 9 4.4591594072139866 10 3.7914291890482348
		 11 3.0904029561377997 12 2.3726260821543339 13 1.6562112560791986 14 0.96026901472057857
		 15 0.30436914921050906 16 -0.29236737572797578 17 -0.81166778343750756 18 -1.237069315047185
		 19 -1.5541535357733702 20 -1.751026431535579 21 -1.8182562154893771 22 -1.7510230829390896
		 23 -1.5541701458092396 24 -1.2371068185063738 25 -0.81165588828432034 26 -0.29237602210284563
		 27 0.30438784351537929 28 0.96026301223797728 29 1.6562247333984319 30 2.3726088901270583
		 31 3.0904073649099737 32 3.7914318390317199 33 4.4591567512082761 34 5.0789350403995144
		 35 5.6381856068094853 36 6.1266208379037828 37 6.5359693866609136 38 6.8600132326995071
		 39 7.0942624954215381 40 7.2358909176389297 41 7.2832597012084452;
createNode animCurveTU -n "QuickRigCharacter_Spine_scaleX";
	rename -uid "C3482120-471F-8F2C-3C07-B2811DD87F76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000509399152 2 0.9999999702417276
		 3 1.0000000124495709 4 1.0000000796547071 5 0.99999998323678307 6 0.99999997356035886
		 7 1.0000000069580768 8 1.0000000687477362 9 1.0000000910262503 10 0.99999999365748271
		 11 1.0000001429682297 12 1.0000000154511588 13 0.99999985282717507 14 1.0000001046589759
		 15 1.0000000827337741 16 1.0000000649776026 17 1.0000000181521469 18 0.99999989802601419
		 19 0.9999999180352428 20 1.0000001948859814 21 1.0000000314034128 22 1.000000149674557
		 23 1.0000000076383748 24 1.0000001893041777 25 1.0000001241984486 26 0.99999996659104295
		 27 1.0000000724035829 28 1.0000001441703272 29 0.99999997212985725 30 1.0000000942049756
		 31 1.0000001717578233 32 0.9999999309271278 33 1.0000001026168741 34 1.0000001332245452
		 35 1.000000092113994 36 1.0000000412897732 37 1.0000001231335371 38 1.0000000591867912
		 39 0.99999995048119605 40 1.0000000930540671 41 1.0000000509399152;
createNode animCurveTU -n "QuickRigCharacter_Spine_scaleY";
	rename -uid "C7B95934-46E0-0A13-4837-D4BD13027A56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000039786014 2 0.99999987206692609
		 3 1.0000000516198297 4 1.0000000606257298 5 0.99999993426455991 6 0.99999995764389793
		 7 0.99999998274302071 8 1.0000000261489492 9 1.0000001068000093 10 1.0000000132586939
		 11 1.0000001255315563 12 1.000000017021623 13 0.99999997785785599 14 1.0000000936677826
		 15 1.0000000572937777 16 1.0000000209211919 17 1.0000000337659476 18 0.99999999681299723
		 19 0.99999992571788465 20 1.0000001667247038 21 1.0000000904333934 22 1.0000001414224708
		 23 0.99999992921565906 24 1.0000001126607565 25 1.0000001224791286 26 0.99999998080230101
		 27 1.0000001167704671 28 1.0000001669621916 29 0.99999996895495324 30 1.0000001488013823
		 31 1.0000001433885046 32 0.99999997395761586 33 1.0000000984924808 34 1.0000000639038493
		 35 1.0000000828636848 36 1.0000000405928 37 1.0000001696294358 38 1.0000000243810174
		 39 0.99999996957301451 40 1.0000000847693959 41 1.0000000039786014;
createNode animCurveTU -n "QuickRigCharacter_Spine_scaleZ";
	rename -uid "B37F625A-4F4C-AD3C-8A9C-EF8E5649FD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.000000096515516 2 0.99999992056279396
		 3 1.0000000608026167 4 1.000000030194409 5 0.99999996353387788 6 0.99999999541774232
		 7 1.0000000011618462 8 1.0000001060820318 9 1.0000001328725476 10 0.99999995770252292
		 11 1.0000001542739654 12 1.000000069204638 13 0.99999989942414946 14 1.0000000318849929
		 15 1.0000000670268656 16 1.0000000648307015 17 1.000000017966963 18 0.99999992623055056
		 19 0.99999989172600579 20 1.0000001711575632 21 1.0000000010772565 22 1.0000002067753717
		 23 0.99999995210459847 24 1.0000000988564004 25 1.0000000984085726 26 1.000000052382388
		 27 1.0000000098964259 28 1.0000001843331483 29 1.0000000561715887 30 1.0000001843139832
		 31 1.00000020046237 32 1.0000000126550219 33 1.0000001764704154 34 1.0000001479732019
		 35 1.0000001540756061 36 0.99999993998766556 37 1.0000002121304961 38 0.9999999701248008
		 39 1.000000010414585 40 1.0000001423963543 41 1.000000096515516;
createNode animCurveTL -n "QuickRigCharacter_Spine1_translateX";
	rename -uid "2C734C83-4501-24A8-0209-E59E0AE7BAB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.085813169325495695 2 0.085813125214731806
		 3 0.085813154665283803 4 0.085813189866385933 5 0.085813135748724817 6 0.085813140748578293
		 7 0.085813164006315223 8 0.085813082409593025 9 0.085813091147015685 10 0.0858131699722334
		 11 0.085813086843588737 12 0.085813158713596779 13 0.085813199594949055 14 0.085813115347335586
		 15 0.085813169788049773 16 0.085813088868612802 17 0.085813136247756175 18 0.085813128667582964
		 19 0.085813097202182151 20 0.085813092983707831 21 0.085813138514202053 22 0.085813125293948647
		 23 0.085813136994553216 24 0.085813108189445014 25 0.08581315299891315 26 0.085813086255074181
		 27 0.085813130464440099 28 0.085813113073477179 29 0.085813108724265841 30 0.085813125674683313
		 31 0.085813116858957275 32 0.085813120752085442 33 0.085813146191716788 34 0.085813089604414472
		 35 0.085813115730109649 36 0.085813159878072726 37 0.085813131715360674 38 0.085813117076105241
		 39 0.085813162887575067 40 0.085813084978510687 41 0.085813169325495695;
createNode animCurveTL -n "QuickRigCharacter_Spine1_translateY";
	rename -uid "47EA9636-4D6B-536F-1DA7-8886EB90F229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -1.1468040845841188e-008 2 -1.1273486428819979e-008
		 3 6.879548291038873e-009 4 -1.2151741550781025e-008 5 -5.254092947382105e-009 6 -5.4121933779072155e-009
		 7 -2.6157796995107675e-009 8 -2.9304229975934959e-009 9 1.3558425226989358e-008 10 -1.9135073046072649e-008
		 11 1.3240400420500009e-008 12 1.0584660881107767e-008 13 -1.0483614296674659e-008
		 14 1.0900998725915657e-008 15 3.4343337684816791e-009 16 -3.8123775247811409e-009
		 17 -2.9288321279352661e-009 18 1.1668969435163489e-009 19 9.2077922797528805e-009
		 20 1.2111226777022921e-008 21 5.1502311748663486e-009 22 7.5366700258427955e-009
		 23 6.5981550001481542e-009 24 1.2959130657463902e-010 25 -3.6510041212522994e-009
		 26 -1.4272078452393088e-009 27 7.1165595283417815e-009 28 1.7414530528725437e-009
		 29 1.1433101079205698e-008 30 2.5831337069348592e-009 31 1.6424345439247645e-008
		 32 1.3828825000672397e-008 33 2.6136180331093331e-009 34 2.3411631193681614e-008
		 35 9.5880888828503437e-009 36 1.0423181073804245e-009 37 -5.1328800587668863e-009
		 38 1.5949899907496956e-008 39 -1.3909231650899302e-008 40 -6.7761441435720831e-009
		 41 -1.1468040845841188e-008;
createNode animCurveTL -n "QuickRigCharacter_Spine1_translateZ";
	rename -uid "84959486-4B78-6215-53E2-42B92DDECD11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -1.0511173389460283e-008 2 -5.7103975059646932e-009
		 3 -1.4086656729972447e-008 4 -1.1017811232250097e-008 5 -6.4345161199241834e-009
		 6 3.7928000296005849e-010 7 9.7542084631641045e-010 8 -7.5525444565016638e-009 9 -1.7979198236872663e-008
		 10 -4.9878813968007309e-009 11 -3.2111965797554377e-009 12 6.5442220531508612e-010
		 13 4.1422184615669265e-009 14 -8.8418869381712281e-009 15 -2.9524981215445222e-009
		 16 -4.2734959926349349e-009 17 -5.8161458760253031e-009 18 6.1587188326939213e-009
		 19 1.3805599028415827e-008 20 -6.9244327960404919e-009 21 -3.4996624975747183e-009
		 22 -8.1886038749701128e-009 23 9.9414675958087168e-009 24 -2.0251501968715502e-008
		 25 -1.5648713596050356e-008 26 -8.1721247724431119e-009 27 -4.1068772205221646e-009
		 28 -2.3842100969062587e-008 29 7.673712332234573e-010 30 -1.9397193735670727e-008
		 31 -1.0268625381115725e-008 32 7.1120813593950063e-009 33 -1.5795773631310793e-008
		 34 -1.0338210660876257e-008 35 -8.0295303384048119e-009 36 -5.401124614223818e-009
		 37 -2.0831145004507333e-008 38 -1.2516748135737999e-008 39 -9.247510224241751e-009
		 40 -1.9350971260934104e-008 41 -1.0511173389460283e-008;
createNode animCurveTA -n "QuickRigCharacter_Spine1_rotateX";
	rename -uid "835B0EBA-4C19-6999-725B-E1B444FBD8DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -19.624377090272677 2 -19.438293043973573
		 3 -18.881937850540911 4 -17.961526772801747 5 -16.688448521133321 6 -15.080204417954301
		 7 -13.161296690666207 8 -10.964014294801666 9 -8.5290580195451788 10 -5.9056534668813105
		 11 -3.1513808480663363 12 -0.33133249785407926 13 2.4833436869777841 14 5.2175032244382633
		 15 7.794479776867651 16 10.138858128473233 17 12.179208637324404 18 13.850568692571859
		 19 15.09636027675986 20 15.869671872569091 21 16.133875597161108 22 15.869669087717599
		 23 15.096353703199014 24 13.850568805356406 25 12.179217742700786 26 10.138854110570408
		 27 7.794487037786749 28 5.2175173018125118 29 2.483346583182541 30 -0.33133781888609282
		 31 -3.1513849766477637 32 -5.9056559701979001 33 -8.5290502299862485 34 -10.964020771644975
		 35 -13.161291841445461 36 -15.080196321795563 37 -16.688433534006432 38 -17.961520960561533
		 39 -18.881940501657347 40 -19.438287432569055 41 -19.624377090272677;
createNode animCurveTA -n "QuickRigCharacter_Spine1_rotateY";
	rename -uid "06B65ADB-4CE1-61A8-382B-5E8BBF3CDB92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -1.6237984865656827 2 -1.58711977393342
		 3 -1.4774839697292386 4 -1.296098206848566 5 -1.0452213346828458 6 -0.72829384056155622
		 7 -0.35014707749307972 8 0.08286711802906209 9 0.56272471724161033 10 1.0797100645468953
		 11 1.6224784270286405 12 2.1782178132161594 13 2.732888167809445 14 3.2717070311608332
		 15 3.7795310702850347 16 4.2415372980218775 17 4.6436301143227645 18 4.9729854357484697
		 19 5.2184824225221096 20 5.3708920798860875 21 5.4229595560564308 22 5.3709145045510063
		 23 5.2184920467505531 24 4.9730055523318928 25 4.6436300555754944 26 4.2415410005339291
		 27 3.7795474648616416 28 3.2717186219447312 29 2.7328979124704418 30 2.1782202474829551
		 31 1.6224853405539881 32 1.0796974346025927 33 0.56272795880896598 34 0.082879668290459854
		 35 -0.35013493337038692 36 -0.72828702685285729 37 -1.0452140018689435 38 -1.2960900709958689
		 39 -1.4774837844974218 40 -1.5871180662792392 41 -1.6237984865656827;
createNode animCurveTA -n "QuickRigCharacter_Spine1_rotateZ";
	rename -uid "23B1B637-41AC-0FC1-038D-98BC0BD141FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 12.509950805475508 2 12.48745736141295
		 3 12.420210893896495 4 12.308950978832808 5 12.155054308795338 6 11.960648925155356
		 7 11.728699945334149 8 11.46308656116067 9 11.168762989740465 10 10.851641483760313
		 11 10.518707253215355 12 10.177820130105212 13 9.837579817590747 14 9.507084909141069
		 15 9.1955731870863353 16 8.9121875191306099 17 8.6655618611557319 18 8.4635272390385357
		 19 8.3129375037125275 20 8.2194684365434938 21 8.1875251808517611 22 8.2194671156264416
		 23 8.3129322369940581 24 8.4635241512933046 25 8.6655604532724197 26 8.9121940461276647
		 27 9.1955740956241137 28 9.5070901189042498 29 9.8375847374251375 30 10.177829170759271
		 31 10.518705462349567 32 10.851641771106532 33 11.168758252700002 34 11.463101965860847
		 35 11.728695572627771 36 11.960655210853695 37 12.155059268637938 38 12.308949433914766
		 39 12.420208060626576 40 12.487443889460289 41 12.509950805475508;
createNode animCurveTU -n "QuickRigCharacter_Spine1_scaleX";
	rename -uid "90BF7932-4F93-CABC-F015-5CAC2BAB6FC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001175852065 2 0.99999995241070694
		 3 1.0000000984632291 4 0.99999994486710575 5 0.99999997729063528 6 1.0000000605478516
		 7 1.0000001811455252 8 0.99999999334835366 9 1.0000000189068847 10 0.99999993563735867
		 11 1.0000001197807968 12 1.0000000333245194 13 1.0000001289744778 14 1.000000122020007
		 15 1.0000002474327412 16 1.0000001621108563 17 1.0000000373769582 18 0.99999998463559359
		 19 1.0000002189647093 20 1.0000000572903309 21 1.0000000340664754 22 0.99999979929811122
		 23 1.0000001426262743 24 1.0000000643001503 25 1.0000000015752886 26 1.0000000201382557
		 27 1.0000000538314129 28 0.99999989088372609 29 0.99999998064472873 30 1.0000001821511433
		 31 1.0000001389837665 32 0.99999999479678636 33 1.0000000498179435 34 1.0000000178913049
		 35 1.0000001290450311 36 0.99999985335205155 37 1.0000000514882881 38 0.99999999805000417
		 39 0.99999998671610368 40 1.000000084364898 41 1.0000001175852065;
createNode animCurveTU -n "QuickRigCharacter_Spine1_scaleY";
	rename -uid "9FBE0898-451F-7D97-DB8F-A88E79F228CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000514201521 2 1.0000000139627296
		 3 1.0000000462775518 4 1.0000000656840029 5 1.000000015827434 6 1.000000044387052
		 7 1.0000000729024796 8 1.0000000606445096 9 0.99999994958473082 10 0.99999999740916468
		 11 1.0000001349895122 12 0.9999999500680421 13 1.0000000693314259 14 1.0000000324060956
		 15 1.0000001340995215 16 1.0000001258015057 17 1.0000000054971425 18 1.0000000176093531
		 19 1.0000000677095411 20 1.0000000641600946 21 0.99999995994687085 22 0.99999990877524148
		 23 1.0000001499051103 24 1.0000000765106911 25 1.0000000239694773 26 0.99999997755060532
		 27 1.000000029670739 28 0.99999999203240009 29 0.9999999761682441 30 1.0000001189841059
		 31 1.0000000288037147 32 1.0000000466135786 33 1.0000000216978473 34 1.0000000415862411
		 35 1.0000000671649707 36 0.99999997785341188 37 1.0000000062592462 38 1.0000000102991204
		 39 0.99999998809234891 40 1.0000000104991562 41 1.0000000514201521;
createNode animCurveTU -n "QuickRigCharacter_Spine1_scaleZ";
	rename -uid "38783C4A-4BB8-4B1B-8CE3-EFB6BFC8A4F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001399760898 2 0.99999991851564107
		 3 1.0000001761383968 4 0.99999996833066729 5 1.0000000731719156 6 1.000000142272184
		 7 1.000000208095301 8 1.0000000348384894 9 1.0000000336511061 10 0.99999991541756994
		 11 1.0000001266713323 12 0.99999999201338041 13 1.0000001924241102 14 1.0000000851223396
		 15 1.0000001453658547 16 1.0000001732366097 17 0.99999999392176131 18 0.99999998926101741
		 19 1.0000002234188585 20 1.0000000449196247 21 0.99999995912833384 22 0.99999979474167422
		 23 1.0000001549082596 24 1.0000001113971431 25 1.0000000824757471 26 1.0000000922432188
		 27 1.0000000181160851 28 0.99999991204048044 29 1.0000000367024271 30 1.0000002117248394
		 31 1.0000000379712528 32 1.0000001153622111 33 1.0000000252253658 34 0.99999997010745412
		 35 1.0000002402477859 36 0.99999998620753661 37 1.0000000698569373 38 0.99999990827350504
		 39 1.0000000455987719 40 1.0000000946564729 41 1.0000001399760898;
createNode animCurveTL -n "QuickRigCharacter_Spine2_translateX";
	rename -uid "5F787419-4479-E5C4-A2CD-338E9F0E1C78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.085813096090604127 2 0.085813160610208286
		 3 0.085813157030981274 4 0.085813139220711612 5 0.085813119016717399 6 0.085813157445480501
		 7 0.085813133835430058 8 0.085813145608431396 9 0.085813165836145372 10 0.085813116133923728
		 11 0.085813117013759529 12 0.085813169234097306 13 0.085813161333929314 14 0.085813123757906173
		 15 0.085813142315220858 16 0.085813142744208343 17 0.085813145580037123 18 0.085813138400552158
		 19 0.085813089219713423 20 0.08581313143808543 21 0.085813140364660964 22 0.085813117636515848
		 23 0.085813128650851805 24 0.085813115740033932 25 0.08581310972586266 26 0.085813134585256703
		 27 0.085813094692112207 28 0.085813173000456267 29 0.085813164906094391 30 0.085813155630087443
		 31 0.085813091256879234 32 0.085813106781319273 33 0.085813138010112477 34 0.085813108108292374
		 35 0.085813142833283396 36 0.085813115936346954 37 0.085813108152549236 38 0.085813126526283409
		 39 0.085813147569106005 40 0.085813098226926454 41 0.085813096090604127;
createNode animCurveTL -n "QuickRigCharacter_Spine2_translateY";
	rename -uid "613AC086-4CD4-DAF7-EC80-049554B70B33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.1721903991078761e-008 2 -8.290201769511896e-009
		 3 1.933100506334995e-009 4 2.9932490654971387e-008 5 3.9575197057217792e-008 6 2.1990087262224735e-009
		 7 -2.0199487096306257e-008 8 1.8346026067206366e-008 9 -1.581033540531962e-008 10 3.7247358513070598e-008
		 11 6.4377340436294618e-009 12 -2.457151552448522e-008 13 -1.3651758088428778e-008
		 14 -3.4106946600331868e-010 15 -1.0820358866681091e-008 16 -4.7798479130278795e-009
		 17 2.9310833937756797e-009 18 -3.2876451427910068e-009 19 -2.2524873699580893e-009
		 20 8.3309062759440163e-009 21 -2.5162841055248464e-009 22 4.7284879656217528e-009
		 23 -1.2541367553353667e-008 24 2.3610928430173318e-008 25 1.8894501252475495e-009
		 26 -4.1098743963630116e-010 27 2.891490602507929e-009 28 1.8872676221803885e-009
		 29 -5.3612091832633268e-009 30 -1.0128769361017476e-008 31 -4.9944210900321197e-009
		 32 3.4508748925077272e-009 33 1.4573973210474378e-008 34 4.8936673380239878e-010
		 35 6.0592438444473374e-009 36 1.1969942868006456e-008 37 1.5155814772072064e-008
		 38 3.9066501145157417e-009 39 8.5300509766739195e-010 40 1.5588691368861873e-008
		 41 2.1721903991078761e-008;
createNode animCurveTL -n "QuickRigCharacter_Spine2_translateZ";
	rename -uid "776DFC1E-4F0E-AB8D-3FAA-98BD4C4176B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.1151352552474236e-009 2 -6.4355572959584609e-009
		 3 -1.6160149343136255e-008 4 1.1460778956973173e-008 5 4.249885421359068e-009 6 -9.2755519176535026e-009
		 7 -2.0345141393818267e-008 8 -8.3335726763777994e-009 9 -1.5273610678434579e-008
		 10 1.0370399756709504e-008 11 -9.261843354479993e-009 12 -4.2554187906773678e-009
		 13 -1.0747944676481325e-008 14 -1.082732327239988e-008 15 -2.48999624030688e-008
		 16 -1.3235535212263728e-008 17 2.5118688617986606e-009 18 -9.8811478554949882e-009
		 19 -1.6877945079318835e-008 20 -1.0097604377090619e-008 21 -1.1287323964381812e-009
		 22 1.8801641079591037e-008 23 -7.9386111684343057e-009 24 -6.404402286275257e-009
		 25 -5.4949935957004924e-009 26 -8.6912995533872105e-009 27 -7.0784103534116128e-009
		 28 -5.3107742137292745e-009 29 -4.7100958777690492e-009 30 -1.0090390931694061e-008
		 31 -7.6019543548966333e-009 32 -1.500460234282741e-008 33 -1.2063255638850024e-009
		 34 1.8014060643167797e-009 35 -6.8559662480538462e-009 36 6.6045265612046931e-009
		 37 -3.3696668566562949e-009 38 3.9924842454297501e-009 39 -2.3395950776716744e-009
		 40 -9.7417699862489825e-009 41 1.1151352552474236e-009;
createNode animCurveTA -n "QuickRigCharacter_Spine2_rotateX";
	rename -uid "895B9F86-43E4-110D-C013-6A883F389A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -8.4737996292482141 2 -8.3922085323440889
		 3 -8.1483036056201392 4 -7.7447902806442412 5 -7.1866719212191272 6 -6.481619092164558
		 7 -5.6403602745187271 8 -4.6770834691143017 9 -3.6095858418564912 10 -2.459479732060518
		 11 -1.2520048998380215 12 -0.015694223081023716 13 1.2182667186922054 14 2.4169250466442058
		 15 3.5466755424793019 16 4.5744544169070256 17 5.4689479287582223 18 6.2016664151875345
		 19 6.7478290417829268 20 7.0868490131579671 21 7.2026797334975425 22 7.0868515668538903
		 23 6.74781929557256 24 6.2016717875509633 25 5.4689425799430431 26 4.574449805316136
		 27 3.546674341978536 28 2.4169271248775432 29 1.2182655802729954 30 -0.015691813087992935
		 31 -1.2519984846696344 32 -2.4594799535372833 33 -3.6095859582772625 34 -4.6770746600773387
		 35 -5.6403561376970446 36 -6.4816199107235493 37 -7.1866841691898573 38 -7.7447909112195363
		 39 -8.1482902295553341 40 -8.3922044626760783 41 -8.4737996292482141;
createNode animCurveTA -n "QuickRigCharacter_Spine2_rotateY";
	rename -uid "6C81598D-4BD5-B590-484D-C3B847D2B585";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.4674449262304019 2 -0.44226248325297929
		 3 -0.36693471241177472 4 -0.24231277473714477 5 -0.069951377735762085 6 0.14779913872246034
		 7 0.40761103569891355 8 0.70509323546084013 9 1.0347724974024934 10 1.3899519457467329
		 11 1.7628721880537601 12 2.1446770044759553 13 2.5257739314367411 14 2.8959523135129781
		 15 3.2448706363162771 16 3.5622647220552146 17 3.8385099432772334 18 4.0648011999350588
		 19 4.2334842449679257 20 4.3381735461337403 21 4.3739473911283007 22 4.3381636570058459
		 23 4.2334678901569402 24 4.064811719289259 25 3.8385204028922248 26 3.5622632776137984
		 27 3.2448580128738707 28 2.8959465154353201 29 2.5257700209220282 30 2.1446875228548756
		 31 1.7628691292950627 32 1.389977600558256 33 1.0347669819866945 34 0.70509369858701032
		 35 0.40760827347852852 36 0.1477986421520267 37 -0.069950196444426307 38 -0.24232104318666481
		 39 -0.36692786296660418 40 -0.44225771055786006 41 -0.4674449262304019;
createNode animCurveTA -n "QuickRigCharacter_Spine2_rotateZ";
	rename -uid "7644DB2F-43BB-39FF-F5A0-3F819F7DA580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 12.926832173489949 2 12.925251448124477
		 3 12.920576342049728 4 12.912827531112024 5 12.902124948439868 6 12.888580059209664
		 7 12.872424403559119 8 12.853945651875973 9 12.833440508635025 10 12.811367698374141
		 11 12.788195562948713 12 12.764463134951773 13 12.740775683013201 14 12.717758012048156
		 15 12.696069619915317 16 12.676331970505681 17 12.659164438815033 18 12.645099403767444
		 19 12.634618737032207 20 12.628094810861539 21 12.625893347643132 22 12.628108392067476
		 23 12.634613722113953 24 12.645109815518845 25 12.659157844304064 26 12.676338612218245
		 27 12.696060453411761 28 12.717752365673205 29 12.740776365728061 30 12.764455212160525
		 31 12.788194640858933 32 12.811377550939515 33 12.833448512872623 34 12.853942628294687
		 35 12.872439968443851 36 12.88858225432748 37 12.902118292881466 38 12.912817006617601
		 39 12.920586512686885 40 12.925266364277039 41 12.926832173489949;
createNode animCurveTU -n "QuickRigCharacter_Spine2_scaleX";
	rename -uid "BE97BBC2-4B24-2599-F432-F5AD797566E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999991335055705 2 1.0000001251229267
		 3 1.0000000373029687 4 1.0000000140557757 5 1.0000000118324517 6 0.99999999532551054
		 7 1.0000000033025811 8 1.0000000912071536 9 1.0000001448189888 10 1.0000001289373308
		 11 0.99999993085562877 12 1.0000000934132975 13 0.99999997826559117 14 1.0000001371968203
		 15 1.0000000427992954 16 1.000000048766839 17 1.0000000588329083 18 1.0000001178959974
		 19 1.0000000345205364 20 1.0000000092948014 21 0.99999995012928988 22 0.99999995777660211
		 23 1.0000001566398731 24 0.99999991935525812 25 1.0000000021418887 26 1.0000000825742303
		 27 0.99999998410326774 28 1.0000001384971522 29 1.0000000586328994 30 0.99999997574047539
		 31 1.0000000654333883 32 0.99999982128732723 33 1.0000001028651837 34 0.9999999470220533
		 35 1.0000000161112106 36 1.0000000074890514 37 1.0000000230160975 38 1.0000000813773455
		 39 0.99999999168789799 40 1.0000000776839009 41 0.99999991335055705;
createNode animCurveTU -n "QuickRigCharacter_Spine2_scaleY";
	rename -uid "EE116963-4ACD-0C6D-DC63-D7806D57FD45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999999702930154 2 1.0000000686237951
		 3 1.0000001107188701 4 1.000000006281903 5 1.0000001235806335 6 0.99999998878822238
		 7 1.0000000498962316 8 1.0000000675930081 9 1.0000000467405938 10 1.0000000318363773
		 11 0.99999991993350024 12 1.0000001094661695 13 1.0000000390409554 14 1.000000138591999
		 15 1.000000025485418 16 1.0000001054016252 17 1.0000000642183482 18 1.0000000632820585
		 19 1.0000000078604594 20 1.0000000419659678 21 0.99999996666712698 22 1.0000000705027621
		 23 1.0000001416807194 24 0.99999989299741954 25 1.0000000479195148 26 1.0000001185394309
		 27 1.0000000893672436 28 0.99999998963777104 29 1.0000000363177401 30 0.99999997266694263
		 31 1.0000000376899321 32 0.99999986493640047 33 1.0000000353937586 34 0.99999985514771328
		 35 1.0000000126222099 36 0.99999995764484828 37 1.0000000864647367 38 1.0000000965787461
		 39 0.99999991980320158 40 1.0000000397467022 41 0.99999999702930154;
createNode animCurveTU -n "QuickRigCharacter_Spine2_scaleZ";
	rename -uid "FCFC7EF0-496D-93CF-A2C6-ECBD5D801481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000272307359 2 1.0000001593286241
		 3 1.0000002320050012 4 1.0000000826155049 5 1.0000001256768214 6 0.99999991898802953
		 7 1.0000000001102172 8 1.0000001673573147 9 1.0000001584851443 10 1.0000001354509287
		 11 0.99999991066440352 12 1.0000001403192362 13 0.99999993641911722 14 1.0000001404608849
		 15 1.000000016280036 16 1.0000000886032123 17 1.0000000162811018 18 1.000000099810491
		 19 0.99999999473033996 20 1.0000000413517383 21 1.0000000031118823 22 1.0000000303784744
		 23 1.0000000942318952 24 0.99999991374372321 25 1.0000000294276119 26 1.0000000568105423
		 27 1.0000000393900692 28 1.0000001293515635 29 0.99999998674383717 30 0.99999995569866473
		 31 1.0000000817939334 32 0.99999990645387704 33 1.0000000907097681 34 1.0000000052838995
		 35 1.0000000011876062 36 0.99999999012542651 37 1.0000002311959009 38 1.0000001914701786
		 39 0.99999999889826974 40 1.0000001617139747 41 1.0000000272307359;
createNode animCurveTL -n "QuickRigCharacter_LeftShoulder_translateX";
	rename -uid "8E32C421-48DF-6614-1D57-7BA5633B0253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.13142594904485408 2 0.13142591038466164
		 3 0.13142588886052578 4 0.1314260172613716 5 0.13142594755946546 6 0.1314258880121571
		 7 0.13142588503280891 8 0.1314258437682983 9 0.1314259731941094 10 0.13142588903099026
		 11 0.13142588972027056 12 0.13142591288920527 13 0.13142584189733314 14 0.13142593500648062
		 15 0.13142588636667527 16 0.13142589510686775 17 0.13142595249195693 18 0.13142586282697594
		 19 0.13142589724543696 20 0.13142589860728834 21 0.13142587334861061 22 0.13142587362466288
		 23 0.13142580697565662 24 0.13142585703391346 25 0.13142590343681052 26 0.13142591076345128
		 27 0.1314259456312469 28 0.13142595149017722 29 0.13142587497859978 30 0.13142586404976925
		 31 0.13142585947306457 32 0.13142595953083089 33 0.13142592413604448 34 0.13142582873378614
		 35 0.13142588335686439 36 0.13142586850310464 37 0.13142590560823791 38 0.131425878671907
		 39 0.13142585810971255 40 0.13142583283036585 41 0.13142594904485408;
createNode animCurveTL -n "QuickRigCharacter_LeftShoulder_translateY";
	rename -uid "3F4EE7E8-48B3-9611-F572-66B55A11557E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.0105243861304427 2 -0.010524352850624653
		 3 -0.01052437827498192 4 -0.010524393706597196 5 -0.010524392198709834 6 -0.010524401512976738
		 7 -0.0105243537472494 8 -0.010524349470623697 9 -0.010524372741092875 10 -0.010524362795606805
		 11 -0.010524382374908506 12 -0.010524384306811642 13 -0.010524371290239216 14 -0.010524380755055952
		 15 -0.010524362176037645 16 -0.010524362159777071 17 -0.01052437392660341 18 -0.010524384577599992
		 19 -0.010524370849914177 20 -0.01052435214847593 21 -0.0105243885425093 22 -0.010524369913282393
		 23 -0.010524370520172752 24 -0.010524366173983514 25 -0.010524361977595618 26 -0.010524394380788636
		 27 -0.010524362227752704 28 -0.010524375257935592 29 -0.010524384622554877 30 -0.010524365273735974
		 31 -0.01052438244356285 32 -0.010524414307215367 33 -0.010524374466306875 34 -0.010524359708420548
		 35 -0.010524389183509798 36 -0.010524390762524831 37 -0.010524345688826741 38 -0.010524368750616731
		 39 -0.010524370558857044 40 -0.010524361044883862 41 -0.0105243861304427;
createNode animCurveTL -n "QuickRigCharacter_LeftShoulder_translateZ";
	rename -uid "D76A402C-45AD-ED88-4850-AF938C194A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.0650264370571427 2 0.065026413900221167
		 3 0.065026370802989855 4 0.065026374079107926 5 0.06502636031497161 6 0.065026399518817099
		 7 0.065026408446174744 8 0.065026362282322697 9 0.065026376809649261 10 0.065026384811390267
		 11 0.065026405013069208 12 0.065026402612545664 13 0.065026416979726068 14 0.06502638392731408
		 15 0.065026412097452121 16 0.065026389640569546 17 0.065026438277344792 18 0.065026375580626072
		 19 0.065026423041526366 20 0.0650264129963294 21 0.065026384400375642 22 0.065026400892525732
		 23 0.06502636941466225 24 0.065026421473431351 25 0.065026399437570936 26 0.065026412345768531
		 27 0.065026409282071679 28 0.065026403176472944 29 0.065026418846928946 30 0.065026411809187917
		 31 0.065026398382695472 32 0.065026411370074713 33 0.06502637811317942 34 0.065026383893601561
		 35 0.065026408460716251 36 0.065026396644607146 37 0.06502640570118004 38 0.06502635187379692
		 39 0.06502640780622819 40 0.06502641770408836 41 0.0650264370571427;
createNode animCurveTA -n "QuickRigCharacter_LeftShoulder_rotateX";
	rename -uid "C3B3A86B-4037-2DAF-FB0B-178D56DF312D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -11.218762826328359 2 -11.060406811071914
		 3 -10.586969090709026 4 -9.8037514512906494 5 -8.7204168864958618 6 -7.3518752834484244
		 7 -5.7189780498744751 8 -3.8492104073716824 9 -1.7771669532098606 10 0.45521239557784648
		 11 2.7989608197662856 12 5.1986903270208042 13 7.5938392026411892 14 9.9204842083057994
		 15 12.113368307945235 16 14.108312619555267 17 15.844554921465191 18 17.266804137844311
		 19 18.326907581176524 20 18.984970297431236 21 19.209771867708678 22 18.984969051211404
		 23 18.326903195375685 24 17.26680081898493 25 15.844567933688849 26 14.108307509608478
		 27 12.113377683978621 28 9.9204896150188162 29 7.5938439817897461 30 5.1986842828529385
		 31 2.7989625245686645 32 0.45519836837392885 33 -1.7771770913793945 34 -3.8492092218878766
		 35 -5.7189861266434301 36 -7.3518791631217573 37 -8.72041142247447 38 -9.8037363623178155
		 39 -10.586987786944073 40 -11.060405430900648 41 -11.218762826328359;
createNode animCurveTA -n "QuickRigCharacter_LeftShoulder_rotateY";
	rename -uid "FAA51FCF-4188-64D7-4BE2-03A86CF2D229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -8.5639235623164609 2 -8.3237709531460151
		 3 -7.6057554629149093 4 -6.4179209385646692 5 -4.7749460585774273 6 -2.6994180276107547
		 7 -0.22297689015048791 8 2.6127200596333475 9 5.7551546910246891 10 9.1408025428036677
		 11 12.695329490335299 12 16.334738278547054 13 19.967238362041304 14 23.495810310513679
		 15 26.821536599562297 16 29.847081970619012 17 32.480241716040354 18 34.6372274893981
		 19 36.244974219105096 20 37.242979194348614 21 37.583937315661338 22 37.24297790257814
		 23 36.244977983512605 24 34.637220829302315 25 32.48025153714098 26 29.8470764498501
		 27 26.821540133482674 28 23.495822937679197 29 19.96723426483933 30 16.334749201764236
		 31 12.695335496143985 32 9.1408019730921488 33 5.7551647550744951 34 2.6127171864268255
		 35 -0.22297922561622049 36 -2.6994256460291965 37 -4.7749421250448467 38 -6.4179342628742484
		 39 -7.6057618855808036 40 -8.3237731101273251 41 -8.5639235623164609;
createNode animCurveTA -n "QuickRigCharacter_LeftShoulder_rotateZ";
	rename -uid "19F39829-41B0-D401-DEAA-9A98F741B78B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 29.625359729095958 2 29.348916108979953
		 3 28.522429892277767 4 27.155105042990151 5 25.263889492702408 6 22.874761878338195
		 7 20.024137736368736 8 16.760000573394777 9 13.142754807616452 10 9.245559498399107
		 11 5.1539591223379748 12 0.9646545744598547 13 -3.2166952827635953 14 -7.2784050549370471
		 15 -11.106629403590453 16 -14.589300773424736 17 -17.620340972993404 18 -20.103219846240407
		 19 -21.953895644078536 20 -23.102678319874965 21 -23.495181980019854 22 -23.102693803636885
		 23 -21.953889870966147 24 -20.103227395644147 25 -17.620345752507024 26 -14.589302603943279
		 27 -11.106628243158021 28 -7.2784117515957867 29 -3.2166905509817734 30 0.96464553065872127
		 31 5.153954955259894 32 9.2455417522618983 33 13.142745767932876 34 16.759994738284679
		 35 20.024138615979457 36 22.874761842377325 37 25.263890314583048 38 27.15511185083475
		 39 28.522425711064653 40 29.348916488000096 41 29.625359729095958;
createNode animCurveTU -n "QuickRigCharacter_LeftShoulder_scaleX";
	rename -uid "54CD9F12-4595-ABE0-5ED1-2C95CE3994EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001581383722 2 1.0000001548911632
		 3 1.0000002609138643 4 1.000000304637944 5 0.99999997471273039 6 1.0000001853475791
		 7 1.0000002412398008 8 1.000000175891083 9 0.99999999141278451 10 1.0000002721434214
		 11 0.99999997094117321 12 1.0000000362432933 13 1.0000001164065591 14 1.0000002692953041
		 15 1.000000117399019 16 1.0000002164619091 17 1.0000001119831583 18 0.99999987616090791
		 19 1.000000034604835 20 1.0000000352427016 21 1.0000002694458439 22 0.99999998715854577
		 23 1.000000002177178 24 1.0000000248688208 25 1.0000001922984065 26 1.0000002471060252
		 27 1.0000001773569744 28 1.0000001114503438 29 0.99999990357481849 30 0.99999997870021717
		 31 1.0000004202420811 32 1.0000003336294432 33 1.0000002275097453 34 1.0000000350426523
		 35 1.0000001099029572 36 0.99999994214014742 37 1.0000000365935264 38 0.9999999482961538
		 39 1.0000001811005259 40 1.0000000526228985 41 1.0000001581383722;
createNode animCurveTU -n "QuickRigCharacter_LeftShoulder_scaleY";
	rename -uid "4B5B54D7-4C0E-19A6-550F-5CBCB0570D07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001726020813 2 1.0000002265911876
		 3 1.0000003025102795 4 1.0000005057086028 5 1.0000000109255003 6 1.0000002384532418
		 7 1.0000001805415075 8 1.0000002994623445 9 0.99999993161960021 10 1.0000001894588944
		 11 1.0000000106725713 12 0.99999999509732262 13 1.0000001069903199 14 1.0000002630702505
		 15 1.0000001477654523 16 1.0000002555798024 17 1.0000001270561549 18 0.99999987263574841
		 19 1.0000000938604219 20 1.0000000728402583 21 1.0000002976813611 22 0.99999995823130594
		 23 1.0000000019438096 24 1.00000003916517 25 1.0000001941897085 26 1.0000002498664418
		 27 1.0000001841568471 28 1.0000000884312372 29 0.9999998467489537 30 1.0000000039862884
		 31 1.0000004205361595 32 1.0000003856345097 33 1.0000002801619268 34 1.0000000749956752
		 35 1.0000000683726038 36 0.99999985589007556 37 1.0000000291209181 38 0.99999993112054553
		 39 1.000000235781078 40 0.99999995289218457 41 1.0000001726020813;
createNode animCurveTU -n "QuickRigCharacter_LeftShoulder_scaleZ";
	rename -uid "A5174040-4A93-8272-F30C-3BA71E0B183E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001405036194 2 1.0000001697414334
		 3 1.0000002610631322 4 1.0000003768195114 5 0.9999999921690127 6 1.0000002155617638
		 7 1.000000240943715 8 1.0000002540667214 9 0.99999994454720431 10 1.0000002771022898
		 11 1.0000000117668466 12 0.99999993132289755 13 1.0000001610409135 14 1.0000002020418768
		 15 1.0000001396540661 16 1.0000001430760455 17 1.0000000103592408 18 0.99999978946148171
		 19 0.99999997206309577 20 1.000000081665015 21 1.0000002929638536 22 1.000000029939667
		 23 1.0000000168324701 24 1.0000000599339944 25 1.0000001971115733 26 1.0000002217398767
		 27 1.0000000395720745 28 1.0000000808490923 29 0.99999985579174189 30 0.99999999113520521
		 31 1.0000003963906225 32 1.0000003326448694 33 1.0000002648593205 34 1.000000004080849
		 35 1.0000000217238936 36 0.99999995713111323 37 1.0000000022228359 38 0.99999992755165612
		 39 1.0000000737607273 40 1.0000000234836004 41 1.0000001405036194;
createNode animCurveTL -n "QuickRigCharacter_LeftArm_translateX";
	rename -uid "E439EC3C-4533-D39F-D3C9-E88DC2DFDE3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.097539589778048538 2 0.097539580343606783
		 3 0.097539537360274986 4 0.097539599823178516 5 0.097539578192403123 6 0.097539608865468919
		 7 0.097539626192920365 8 0.09753965274758844 9 0.097539545668977864 10 0.097539660177140428
		 11 0.09753967259865963 12 0.097539555551965404 13 0.097539655189341087 14 0.097539651212363188
		 15 0.097539570851241833 16 0.097539661558776317 17 0.097539644705049611 18 0.097539642483291278
		 19 0.097539623709699763 20 0.097539589924746053 21 0.097539639184595142 22 0.097539600920239056
		 23 0.09753958872018817 24 0.097539633973371759 25 0.09753960490674507 26 0.097539644102502307
		 27 0.09753966656934894 28 0.097539663357717035 29 0.097539686089211111 30 0.09753959729954001
		 31 0.097539611794415046 32 0.097539554039826198 33 0.097539625477346736 34 0.097539643623573799
		 35 0.097539682127911975 36 0.097539580908555551 37 0.097539555252920074 38 0.097539583194170526
		 39 0.097539606292502162 40 0.097539619853249104 41 0.097539589778048538;
createNode animCurveTL -n "QuickRigCharacter_LeftArm_translateY";
	rename -uid "904C06DE-43D4-64D2-A2B1-95922A3AC616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 5.9852460481124587e-008 2 2.1200826694212083e-008
		 3 6.8856915618198396e-008 4 -6.4444314773481891e-009 5 -7.695893089021411e-008 6 4.2344733515164992e-008
		 7 1.6470012695890547e-008 8 -3.5504461806112888e-008 9 -1.9089296188212757e-008 10 -5.3667182129402135e-008
		 11 -3.9708381649461447e-008 12 -1.272663297413601e-008 13 -1.9352332145672336e-008
		 14 -6.8593618607337702e-009 15 -4.2394570272108466e-008 16 5.2426567691554737e-008
		 17 -1.435649124914562e-008 18 8.3603374889662528e-009 19 7.249564504263617e-009 20 2.3354633640337852e-008
		 21 -1.0570914810159592e-009 22 -2.9022133816170027e-008 23 -2.5740114040218033e-009
		 24 4.8913764771896242e-008 25 -2.041391624629796e-008 26 2.0836489653675018e-008
		 27 -1.7779955356900247e-008 28 1.6346116638032981e-008 29 -9.6336971466826077e-009
		 30 3.7088026516585161e-008 31 -3.287897627046732e-008 32 -1.8754024750933239e-008
		 33 -6.6717258135895462e-008 34 2.251655075724557e-008 35 -3.8471008139140398e-008
		 36 -3.6525466384773608e-009 37 1.6179456849840791e-008 38 -2.871050654107421e-008
		 39 -8.3919628934836512e-009 40 5.241458751470418e-009 41 5.9852460481124587e-008;
createNode animCurveTL -n "QuickRigCharacter_LeftArm_translateZ";
	rename -uid "338014DD-4C43-7916-5954-00A4A2FD2551";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -3.109030615178199e-009 2 2.4283719568529707e-009
		 3 9.4980102005592932e-009 4 4.518669786790497e-008 5 2.9287084721829616e-008 6 -4.5720107877400555e-009
		 7 4.9368287591278204e-009 8 2.2162200252751062e-008 9 1.84436299122126e-008 10 3.0745793750952544e-008
		 11 2.0214138842788997e-008 12 4.366213346429504e-009 13 3.0465670874946229e-010 14 2.895819974924052e-009
		 15 3.9103405313767324e-008 16 -4.7322914014102938e-008 17 -8.3771502090712607e-009
		 18 4.3814957422227966e-008 19 1.376986276113712e-008 20 -1.5447773904497807e-008
		 21 2.5606580322801166e-009 22 6.1929877972488615e-008 23 -2.1950609152554533e-009
		 24 -3.83438576534445e-008 25 7.0138692365162567e-009 26 -2.045309358322811e-008 27 -1.4643294576899281e-009
		 28 -1.4373429593206311e-008 29 1.8726739412500138e-008 30 -2.6048115771004633e-008
		 31 2.7715433290609327e-008 32 2.4863750454073852e-008 33 3.8815248544210589e-008
		 34 -1.6528737987187013e-008 35 1.9967396198694587e-008 36 -1.7424520848408066e-009
		 37 1.7850683775577637e-009 38 2.9362309525993171e-008 39 2.4433303593696111e-008
		 40 2.9937498418064478e-008 41 -3.109030615178199e-009;
createNode animCurveTA -n "QuickRigCharacter_LeftArm_rotateX";
	rename -uid "E4BDDC1D-4B4C-45B0-93FB-8389D80F8F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -51.846203035859666 2 -51.470692849670229
		 3 -50.348001366968866 4 -48.490671855391327 5 -45.921716912807135 6 -42.676423079371574
		 7 -38.80424246146746 8 -34.370334141719411 9 -29.456797728393781 10 -24.162981726817417
		 11 -18.60510460856111 12 -12.91448713373128 13 -7.2347067537549306 14 -1.7173966077677489
		 15 3.4827199605946788 16 8.2134523027716853 17 12.330714559442248 18 15.703352211756057
		 19 18.217259090269945 20 19.77775992084057 21 20.310888763417768 22 19.777742094603848
		 23 18.217260545630033 24 15.703383222082627 25 12.330728606927838 26 8.213483588473439
		 27 3.4827236278873892 28 -1.7173813500578872 29 -7.2347098850469553 30 -12.914500737305879
		 31 -18.605093390680867 32 -24.162977051273959 33 -29.456785754472243 34 -34.370339184091122
		 35 -38.804228705139032 36 -42.676423920213054 37 -45.921732703819686 38 -48.4906789839075
		 39 -50.347986735720262 40 -51.470673450334985 41 -51.846203035859666;
createNode animCurveTA -n "QuickRigCharacter_LeftArm_rotateY";
	rename -uid "F4BB4E9D-4420-5303-3AB4-94BC0BB45311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 5.9281042623998292 2 5.6651229820418694
		 3 4.8788961929358532 4 3.578201868334792 5 1.7791383203901279 6 -0.49357890584599923
		 7 -3.2052999127769852 8 -6.3104061050631657 9 -9.7514048536088538 10 -13.458701571995924
		 11 -17.350934122643292 12 -21.336121742843552 13 -25.31372347347336 14 -29.177535494110163
		 15 -32.819224806695821 16 -36.132187761569185 17 -39.01556815304437 18 -41.377453104066177
		 19 -43.137961728623047 20 -44.230783177273821 21 -44.604123791625085 22 -44.230775388896845
		 23 -43.137953694064095 24 -41.377460683077864 25 -39.015556692152821 26 -36.132216790482893
		 27 -32.819231403086533 28 -29.177540001710295 29 -25.313717000281983 30 -21.336113313386061
		 31 -17.350937198822376 32 -13.458702369780514 33 -9.7514064100606994 34 -6.3104133424269904
		 35 -3.205305299732879 36 -0.49358536101471839 37 1.7791226599444161 38 3.5781929378320263
		 39 4.8788928252123345 40 5.6651179719656195 41 5.9281042623998292;
createNode animCurveTA -n "QuickRigCharacter_LeftArm_rotateZ";
	rename -uid "ECC9680D-4774-43EA-6F45-99A35BE07C4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.5153432956104278 2 2.4982540440391681
		 3 2.4472126749513512 4 2.362776627083468 5 2.2459750926845921 6 2.0983989211720595
		 7 1.9223638955087368 8 1.7207608387774609 9 1.497364783472183 10 1.2566775492190694
		 11 1.00398385232467 12 0.74525302240820956 13 0.48701167612058976 14 0.23616855451965649
		 15 -0.00025839140817866536 16 -0.21533007559014919 17 -0.40254806519750702 18 -0.55586930866454509
		 19 -0.67017928998563658 20 -0.74114312570892227 21 -0.76537520739395259 22 -0.74111957710104781
		 23 -0.67018483205791302 24 -0.55589361047203767 25 -0.40254236886652645 26 -0.21535404925803014
		 27 -0.00025870096419144771 28 0.23616322765034017 29 0.48702485979437382 30 0.74525934881950773
		 31 1.0039830506369611 32 1.256679750039541 33 1.4973608986535327 34 1.7207625569396334
		 35 1.9223600162615753 36 2.0984078973623608 37 2.2459369852185982 38 2.3627540789422294
		 39 2.4472139716442416 40 2.4982541955674407 41 2.5153432956104278;
createNode animCurveTU -n "QuickRigCharacter_LeftArm_scaleX";
	rename -uid "2935B91D-4CD7-C25A-5DF5-DFA3418E7096";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999992386172132 2 1.0000002958588632
		 3 1.0000000912555218 4 0.99999993671217435 5 0.99999979349143597 6 1.000000222844996
		 7 1.0000002667997943 8 1.0000001288961622 9 1.0000003143167779 10 1.0000001371150664
		 11 1.0000004339042605 12 0.99999996411373926 13 1.0000002754350403 14 1.0000000278985799
		 15 1.0000001015919302 16 1.0000003382415334 17 0.99999995345947268 18 1.0000000757357099
		 19 0.9999999595933754 20 0.99999996863647722 21 1.0000000923892636 22 1.0000000642710904
		 23 1.0000000200243868 24 1.0000000148791233 25 1.0000000597068266 26 1.0000000882549978
		 27 1.0000000112686849 28 0.99999985031281524 29 1.0000001558832066 30 1.0000004844266752
		 31 1.0000003646194313 32 1.0000001246818637 33 1.000000234837362 34 1.0000002008463682
		 35 0.99999994990294172 36 1.0000001423704854 37 1.0000004209858417 38 1.0000000715307042
		 39 0.9999999678476722 40 0.99999994651419477 41 0.99999992386172132;
createNode animCurveTU -n "QuickRigCharacter_LeftArm_scaleY";
	rename -uid "4EB53568-4CB0-053D-788A-15A16C4FB6B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999995003154596 2 1.0000003160788484
		 3 1.0000000383029957 4 0.99999992421555761 5 0.99999977503245863 6 1.0000002584473684
		 7 1.0000002304431412 8 1.0000000345682394 9 1.0000001560485345 10 1.0000000214037319
		 11 1.0000000459067839 12 0.99999992002637728 13 1.000000098792849 14 1.0000000512624176
		 15 1.0000000359350976 16 1.0000000992952032 17 1.0000000007779355 18 0.99999996575553751
		 19 1.0000000234197504 20 0.99999999582998644 21 0.99999994538965387 22 0.99999989194252892
		 23 0.99999998511846933 24 0.99999999574572518 25 0.99999989442696313 26 0.99999994838961959
		 27 0.99999993368623386 28 1.0000000034305205 29 1.0000000699228773 30 1.0000001157627882
		 31 1.000000160125682 32 1.0000000342050221 33 1.0000001431844514 34 1.0000000207004625
		 35 1.0000000211093263 36 1.0000002111051822 37 1.0000003877429082 38 1.0000000237034514
		 39 0.99999995550168574 40 1.0000000022352407 41 0.99999995003154596;
createNode animCurveTU -n "QuickRigCharacter_LeftArm_scaleZ";
	rename -uid "750B3661-4864-F6F0-DE93-8AB69BB4A3CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999995183049972 2 1.0000002409220186
		 3 1.0000000291824671 4 0.99999994226607758 5 0.99999977587028444 6 1.0000002349642152
		 7 1.0000001913211063 8 1.0000000649691292 9 1.0000001534297214 10 1.0000000427018247
		 11 1.0000001598269863 12 0.99999999693321018 13 1.0000001410068224 14 1.0000000233713204
		 15 1.0000001159092156 16 1.000000218276597 17 1.0000000247638565 18 1.0000000180195157
		 19 0.99999994411011861 20 0.99999999639853154 21 1.0000000823666786 22 1.0000000124821022
		 23 1.00000000111201 24 1.0000000282946711 25 0.99999999828352382 26 1.0000000385189143
		 27 0.99999995422020249 28 0.99999993153956612 29 1.000000107267522 30 1.0000001765506341
		 31 1.000000073296212 32 1.0000000425608659 33 1.000000160643465 34 1.0000000906757851
		 35 1.0000000321228875 36 1.0000001426329306 37 1.0000003889751914 38 1.0000000405982792
		 39 0.99999996470982666 40 0.99999993941745635 41 0.99999995183049972;
createNode animCurveTL -n "QuickRigCharacter_LeftForeArm_translateX";
	rename -uid "08AF524D-4B16-943D-19C9-A6A67105E54E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.21783220244996065 2 0.21783209290274685
		 3 0.21783225393679601 4 0.21783218878210137 5 0.21783225072443188 6 0.2178321020513026
		 7 0.21783221078804718 8 0.21783210060378036 9 0.2178322344797568 10 0.21783217182642067
		 11 0.21783218306344207 12 0.21783216447481515 13 0.21783219122596986 14 0.21783226347786813
		 15 0.21783219088661374 16 0.21783217592405557 17 0.21783225310891241 18 0.21783213833997628
		 19 0.21783215253719954 20 0.21783224596252232 21 0.21783224871404763 22 0.21783219438179544
		 23 0.21783209289945746 24 0.21783220890564473 25 0.21783212314529857 26 0.21783217307875702
		 27 0.2178321367048206 28 0.2178322999898456 29 0.21783212595372969 30 0.21783212836995738
		 31 0.21783214569501583 32 0.21783218163936 33 0.21783227856250029 34 0.21783216109441772
		 35 0.21783224563591094 36 0.2178322505567796 37 0.21783212547723424 38 0.21783217560986218
		 39 0.21783220930469618 40 0.21783227587563325 41 0.21783220244996065;
createNode animCurveTL -n "QuickRigCharacter_LeftForeArm_translateY";
	rename -uid "02E2AD5C-4E4A-5327-005E-BAB9FB9FF06E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.0980531019176853e-008 2 5.1760739978590209e-008
		 3 -1.5432070057386229e-008 4 -4.2622874474318451e-009 5 -7.3823064283828901e-008
		 6 -7.7680818790781814e-008 7 2.8059558516702055e-008 8 -2.7715386963222956e-008 9 3.1310661618988433e-008
		 10 -1.3364432618345745e-008 11 6.0130277201864151e-009 12 -2.1753608088204146e-008
		 13 -3.366359905498939e-008 14 -1.1615976092116398e-008 15 -7.3986821149674148e-008
		 16 -2.3321902915540705e-008 17 -9.3838558257175467e-009 18 -1.9949693950138679e-008
		 19 -5.510682413500945e-008 20 1.9791808369973295e-008 21 8.7519680391778828e-011
		 22 -9.0523315776636079e-008 23 4.781400519959789e-009 24 -4.0412852655435926e-008
		 25 -1.9404242664222694e-007 26 -5.9077369485294188e-008 27 1.6563252387413741e-008
		 28 -1.955565316791308e-008 29 -9.5651191145407217e-009 30 -4.020505205204472e-008
		 31 -1.3911681318035108e-009 32 1.3533550582423004e-008 33 3.5491432655021525e-008
		 34 3.206458707438742e-008 35 -1.4804226466935689e-008 36 1.1816690204113911e-008
		 37 1.291424625549098e-007 38 1.2388805501473143e-007 39 -2.0588363440765534e-008
		 40 -4.1334762528322245e-008 41 2.0980531019176853e-008;
createNode animCurveTL -n "QuickRigCharacter_LeftForeArm_translateZ";
	rename -uid "F9548F1F-421B-EDBE-43A5-DCAB1A83348C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.4370568379717951e-008 2 4.0480759651018164e-008
		 3 -4.6732471616905966e-008 4 -3.5921218142220827e-008 5 -2.0355701337848588e-008
		 6 -6.0729094286671172e-009 7 4.4896296031993191e-008 8 1.6754597709223162e-009 9 -1.9786549358968843e-008
		 10 -1.0014192881158124e-007 11 1.1336649663462595e-009 12 2.5458751622409183e-008
		 13 7.4527117277511939e-008 14 7.6805336988172717e-008 15 -1.692244978812596e-008
		 16 7.2772990620251221e-008 17 7.7969872762650997e-008 18 3.1585003767986561e-008
		 19 -3.2561458240820688e-008 20 6.2728643115406155e-008 21 -3.8448627464049421e-008
		 22 1.9808682125699306e-008 23 -2.5187000005644223e-008 24 -3.1943630602881966e-008
		 25 4.4328901083190432e-008 26 -2.9264225531733245e-009 27 5.0293709676907382e-008
		 28 -1.1599366587233817e-008 29 5.5333600386120455e-008 30 2.742382335441107e-008
		 31 1.9750609396851361e-008 32 3.5810759442256311e-008 33 -5.8438124170834273e-008
		 34 9.869610124724205e-009 35 2.2385670206404028e-009 36 -1.8738273439566911e-008
		 37 2.250304234507894e-008 38 -8.8661414565649471e-008 39 3.2973564856320082e-008
		 40 -7.1535202295081043e-008 41 1.4370568379717951e-008;
createNode animCurveTA -n "QuickRigCharacter_LeftForeArm_rotateX";
	rename -uid "A23905B0-4FBB-8405-DB81-69A284FB48C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.0011771936515176608 2 0.0012005976320911594
		 3 0.0013945938923143727 4 0.001674808040897502 5 0.0020495944504995635 6 0.0025260277620166131
		 7 0.0031113384770459023 8 0.0037882564040813216 9 0.0045243391112473122 10 0.0053164787376518566
		 11 0.0061471751237310813 12 0.0070182341092904291 13 0.0078556363680313979 14 0.0086912603353208381
		 15 0.0094660813726208295 16 0.010157643590685805 17 0.010804575114560275 18 0.011307323106754473
		 19 0.011694874929269355 20 0.011916869084193238 21 0.011992343872234775 22 0.011913385636249951
		 23 0.011690606594802965 24 0.011312020075399908 25 0.010787048116980672 26 0.010173282510218391
		 27 0.0094622821081222011 28 0.0086893885578351437 29 0.0078539642024494094 30 0.0070006766965841358
		 31 0.0061473151585575512 32 0.0053230242533127978 33 0.0045254850632526862 34 0.0037780820085507386
		 35 0.0031302043215227712 36 0.0025366286694680396 37 0.0020413734702536177 38 0.0016777440044580673
		 39 0.0013873315786949883 40 0.0012220385978234352 41 0.0011771936515176608;
createNode animCurveTA -n "QuickRigCharacter_LeftForeArm_rotateY";
	rename -uid "170176F6-4D0E-D2D2-8716-2A9F0A385B10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 8.8218137384252481e-005 2 6.6470236885739139e-005
		 3 0 4 0 5 -0.0001499617347620719 6 -0.00029690361449720117 7 -0.00045741692988537604
		 8 -0.0006314769170546249 9 -0.00083534947538081912 10 -0.001054183998856568 11 -0.0012808080185890229
		 12 -0.0015070053158702207 13 -0.0017528004041812016 14 -0.0019568710050323289 15 -0.0021795127424487594
		 16 -0.002383157870876642 17 -0.0025450343055087895 18 -0.002686289490517294 19 -0.0027727465685739132
		 20 -0.0028226148522785726 21 -0.0028820347695366465 22 -0.0028463223603292774 23 -0.0027891216966726327
		 24 -0.0026735262695993197 25 -0.0025320930557264842 26 -0.0023756259392709138 27 -0.0021851045121735174
		 28 -0.0019652422394016815 29 -0.0017334179038081203 30 -0.001513928851123256 31 -0.0012795069452009669
		 32 -0.001053221667592518 33 -0.00083702852540698666 34 -0.00064283947318732328 35 -0.00045032494143935474
		 36 -0.00029212330231453352 37 -0.0001590493784220244 38 0 39 0 40 6.6368368487346687e-005
		 41 8.8218137384252481e-005;
createNode animCurveTA -n "QuickRigCharacter_LeftForeArm_rotateZ";
	rename -uid "D8ABD93F-411B-CDEB-F3D8-24A344E32E1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 109.9459141301263 2 109.76003639438561
		 3 109.20431607721919 4 108.28494590854487 5 107.01331790347244 6 105.40690590418694
		 7 103.49019139268204 8 101.29542100346424 9 98.863218404946792 10 96.242808216119073
		 11 93.491684994060449 12 90.674842696941425 13 87.863367875291942 14 85.132350678472662
		 15 82.558288015252273 16 80.216593160438677 17 78.17855875248604 18 76.509123083481299
		 19 75.264757742292758 20 74.492333154579981 21 74.228419838535132 22 74.492299779099767
		 23 75.264750033741194 24 76.509130621253533 25 78.178559117074869 26 80.216578186621277
		 27 82.558293070115369 28 85.132330354153538 29 87.863387904349977 30 90.674828216120531
		 31 93.491678019126596 32 96.242830005987884 33 98.863252183698151 34 101.29541910458488
		 35 103.49020475672599 36 105.40691724424124 37 107.01333876563233 38 108.28495837546852
		 39 109.20431535410421 40 109.76002596780371 41 109.9459141301263;
createNode animCurveTU -n "QuickRigCharacter_LeftForeArm_scaleX";
	rename -uid "3A7C1FB4-49F1-6241-2DBC-65B57C0C7C72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000310863559 2 1.0000000412880587
		 3 1.0000000109565355 4 0.99999996862193197 5 0.99999994153300098 6 1.0000000625714733
		 7 1.0000000234344861 8 0.99999988671064721 9 0.99999995204510961 10 1.000000114446755
		 11 1.0000002652971554 12 0.99999997294054899 13 0.99999998629006459 14 0.99999993871034887
		 15 1.0000000964841416 16 1.000000095614122 17 1.0000001918574313 18 0.99999991225655893
		 19 0.99999999384611926 20 1.0000001817674289 21 0.99999998252354183 22 1.0000001304849209
		 23 0.99999993620224648 24 1.0000000211225537 25 1.0000001444923401 26 1.0000000796679847
		 27 0.99999997337056279 28 1.0000000311659356 29 1.000000177463982 30 1.000000095612255
		 31 1.0000001808578296 32 1.0000000404426725 33 0.99999996069386787 34 1.0000000467343706
		 35 1.0000000683711427 36 1.0000000117523855 37 0.99999999498517489 38 1.0000000457731848
		 39 1.000000037436894 40 1.0000000373438769 41 1.0000000310863559;
createNode animCurveTU -n "QuickRigCharacter_LeftForeArm_scaleY";
	rename -uid "3254BB2E-4D05-5C93-7A20-66B8CC0D568A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000057213507 2 1.0000001992760332
		 3 1.0000000302081096 4 1.0000000102280013 5 1.0000001100608347 6 1.0000001790969668
		 7 0.99999996136249525 8 0.9999999208712701 9 1.0000001066461885 10 1.000000122233986
		 11 1.0000002714817779 12 0.99999990125986526 13 1.0000000437842549 14 0.99999993570819745
		 15 0.99999999300213505 16 1.0000002071926006 17 1.0000001289005613 18 1.0000000026275238
		 19 1.0000000012560981 20 1.0000001091496766 21 0.99999994974598694 22 1.0000001676899208
		 23 1.0000000104569851 24 0.99999996290771709 25 1.0000001360538575 26 1.0000000917455336
		 27 1.0000000071315858 28 0.99999995530581187 29 1.0000002014461231 30 1.0000000821989916
		 31 1.0000001906412344 32 1.000000049413051 33 1.0000000405778815 34 1.0000000699870233
		 35 1.0000000533639966 36 0.99999995763989469 37 1.0000000925888617 38 1.0000001032515513
		 39 1.0000001329833605 40 1.000000074534994 41 1.0000000057213507;
createNode animCurveTU -n "QuickRigCharacter_LeftForeArm_scaleZ";
	rename -uid "DD8C548E-4B70-B3B9-A4F3-238BFFB9C0BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000184787228 2 1.0000003057586604
		 3 1.0000000778162148 4 1.0000000660932256 5 1.0000001540119872 6 1.0000002989566799
		 7 0.99999999945080742 8 1.0000000022127067 9 1.0000000407160319 10 1.0000000377164384
		 11 1.0000001316233753 12 0.99999993572301593 13 1.0000000033639251 14 0.99999993743937343
		 15 1.0000000603732966 16 1.0000001515185795 17 1.0000001326055596 18 0.99999995331322888
		 19 1.0000000728463896 20 1.0000001881745411 21 0.9999999625022622 22 1.0000001650376196
		 23 1.0000000278317052 24 0.99999991869700211 25 1.0000001357613781 26 1.0000000490116183
		 27 0.99999989177449677 28 1.0000000677398817 29 1.0000000374516034 30 1.0000000713337345
		 31 1.0000001023910559 32 1.0000000453436197 33 1.0000000587443436 34 1.0000001824788209
		 35 1.0000001103582592 36 1.0000000669050462 37 1.0000001860462355 38 1.0000000915989273
		 39 1.0000002675301674 40 1.0000002268606549 41 1.0000000184787228;
createNode animCurveTL -n "QuickRigCharacter_LeftHand_translateX";
	rename -uid "8DF61D1B-4C32-7E92-5D87-CF9452B4379C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.20068345810176866 2 0.20068343625251245
		 3 0.20068345909527424 4 0.20068346532474551 5 0.20068351058946682 6 0.20068351034984125
		 7 0.20068351772364387 8 0.20068353932830085 9 0.20068352373602952 10 0.20068353243105347
		 11 0.20068338076297404 12 0.20068361328657053 13 0.20068356212039418 14 0.20068358216268978
		 15 0.20068359279114845 16 0.20068355945288952 17 0.20068355601123899 18 0.20068356405430707
		 19 0.20068367215204988 20 0.20068352903150441 21 0.20068353542812603 22 0.20068347185433821
		 23 0.20068357807579701 24 0.20068370861723253 25 0.2006835577540835 26 0.20068369264805008
		 27 0.20068357441486057 28 0.20068357638458964 29 0.20068350631990797 30 0.20068348578385453
		 31 0.20068355961387771 32 0.20068350896457765 33 0.20068352701277373 34 0.20068346118399782
		 35 0.20068342749513171 36 0.20068340119482123 37 0.20068347424508909 38 0.20068343902957608
		 39 0.20068350091881593 40 0.20068348423833249 41 0.20068345810176866;
createNode animCurveTL -n "QuickRigCharacter_LeftHand_translateY";
	rename -uid "57A91711-4A20-31AD-0EB9-458343423BB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -5.8744106468111565e-010 2 4.2828820312479369e-008
		 3 -2.7348333162535711e-008 4 3.2616667908769159e-008 5 1.0470673998952407e-008 6 -7.4055566301467484e-009
		 7 2.2971635758040068e-008 8 3.2630542250444709e-008 9 -5.439435568632689e-009 10 7.7384612779951574e-008
		 11 7.0536012088950881e-008 12 -6.7456443613167492e-008 13 2.6943310649230059e-009
		 14 -8.9643769092262456e-008 15 5.9815930875117834e-009 16 4.6842084486797832e-008
		 17 -9.7929039100108636e-009 18 1.0995331223284666e-008 19 -7.076125463356675e-009
		 20 -5.9072006663996032e-009 21 2.1879255918122453e-008 22 3.2957080069451197e-008
		 23 -3.8022320758557273e-009 24 2.2891228326216151e-008 25 1.0854498633250388e-009
		 26 1.9475068668839411e-009 27 2.1283890632162184e-008 28 -4.9617543940172486e-009
		 29 3.3276093298617581e-008 30 3.2588030034474972e-008 31 -3.0726438708938989e-008
		 32 -2.1192011097070918e-008 33 -3.5186644495865947e-008 34 -5.098513547352468e-008
		 35 1.6838625711557143e-008 36 6.2977078130188607e-008 37 2.3204152483913277e-008
		 38 4.3411271803961429e-008 39 -4.6874269656882464e-008 40 -2.5067561466585176e-008
		 41 -5.8744106468111565e-010;
createNode animCurveTL -n "QuickRigCharacter_LeftHand_translateZ";
	rename -uid "0EBC9740-49A4-A411-DAFF-FD84BEBC2751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -2.2778420429858671e-008 2 3.7285604435055577e-008
		 3 -1.0165917316840024e-007 4 2.6859243604349106e-007 5 2.2324272634932641e-008 6 -9.4884450305698924e-008
		 7 -3.009590741953616e-008 8 6.672431851484362e-009 9 1.1210602082201149e-008 10 5.0769137942552333e-008
		 11 7.7535472087220115e-009 12 4.4390905458158159e-008 13 -6.0694203796174412e-008
		 14 -3.8810027405133953e-008 15 -2.2379643240810767e-008 16 8.7720123218559822e-008
		 17 4.4163017776099879e-008 18 3.6380676107228286e-008 19 -1.544340251768972e-007
		 20 3.9055354719153003e-008 21 -5.5565136349855496e-008 22 -4.5244099311503303e-009
		 23 -1.0744728463407683e-007 24 1.0460940274015229e-007 25 -8.7770639112250143e-008
		 26 -4.9567627797841854e-008 27 2.2987834142895736e-008 28 2.7037449967792784e-009
		 29 4.7125002566872354e-008 30 4.6474268344809392e-009 31 -8.1472030757367978e-008
		 32 -7.930179151571793e-008 33 2.5750334629037752e-008 34 -4.1872212079852033e-008
		 35 -3.9684517361138204e-008 36 1.2269373129925044e-007 37 3.4852318009370721e-008
		 38 1.587627900789812e-007 39 -2.1628213431768017e-007 40 9.0366430072208455e-009
		 41 -2.2778420429858671e-008;
createNode animCurveTA -n "QuickRigCharacter_LeftHand_rotateX";
	rename -uid "84A2F833-421F-929A-EB1F-8F8FDFCC9167";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -78.425859668624369 2 -78.017688487326666
		 3 -76.797531040304492 4 -74.77882379191314 5 -71.986690811181802 6 -68.459447380400164
		 7 -64.250845495732804 8 -59.431766456570372 9 -54.091364357105867 10 -48.337647247936246
		 11 -42.296912643082202 12 -36.111932135275566 13 -29.938695413959152 14 -23.942077545840757
		 15 -18.29019655166049 16 -13.148459199876891 17 -8.6735092095766788 18 -5.0078720745509697
		 19 -2.2755694415967667 20 -0.57951952965564746 21 -6.5604639674503258e-005 22 -0.57952536031055524
		 23 -2.2755687506832922 24 -5.0078568976062554 25 -8.6735036434349517 26 -13.148460653034876
		 27 -18.290192700952808 28 -23.94207697530269 29 -29.938699305843446 30 -36.111930344617917
		 31 -42.296888378351511 32 -48.337638157372503 33 -54.091333095643698 34 -59.431755455956861
		 35 -64.250851707250973 36 -68.459446711791912 37 -71.986661040101197 38 -74.778857602592439
		 39 -76.797505941571146 40 -78.017700538009905 41 -78.425859668624369;
createNode animCurveTA -n "QuickRigCharacter_LeftHand_rotateY";
	rename -uid "AA879B59-46A9-D408-3797-749E808F4CE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.00028889369620151649 2 -0.00028756869249735491
		 3 -0.00026057078960733731 4 -0.00032718340965242736 5 -0.00028710414647968027 6 -0.00026983433812925018
		 7 -0.00027149895542862587 8 -0.00026215408849030933 9 -0.00025896376653059607 10 -0.00025850097052382341
		 11 -0.00024620492540628646 12 -0.00023991049921905531 13 -0.00021684676405866852
		 14 -0.00021549888307647986 15 -0.00021106308911804779 16 -0.00020420563180047424
		 17 -0.00019473847928258239 18 -0.00019178431241130434 19 -0.0002105414835343416 20 -0.00019553537649864811
		 21 -0.00016638023879881136 22 -0.00019115709080563101 23 -0.00017218884009278493
		 24 -0.00018223796852431898 25 -0.00018744652371541218 26 -0.00020442175429052919
		 27 -0.0002149479584426222 28 -0.00021275071235574513 29 -0.00022340888340696382 30 -0.00024702259864835724
		 31 -0.00024243399218322831 32 -0.00025177953509845181 33 -0.00025475238338522804
		 34 -0.00025645205919946798 35 -0.00027061977987409379 36 -0.00027603886189106399
		 37 -0.00027876833929634497 38 -0.00032365253934794116 39 -0.00024943740644507554
		 40 -0.00028723383537682438 41 -0.00028889369620151649;
createNode animCurveTA -n "QuickRigCharacter_LeftHand_rotateZ";
	rename -uid "357DE512-467A-7B15-3110-F58FED0A2141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 5.7874119021527763e-005
		 11 7.3830333332799232e-005 12 0 13 7.2158457925736565e-005 14 8.6950205673245144e-005
		 15 7.561884049236644e-005 16 8.8249498558375575e-005 17 9.4664811329334581e-005 18 9.7977571795038781e-005
		 19 9.5988894552428826e-005 20 8.5919180998246693e-005 21 9.787418208431661e-005 22 9.9577467077360417e-005
		 23 8.3799304393408579e-005 24 9.2170881070596751e-005 25 9.1536246753927484e-005
		 26 9.0256578296201586e-005 27 8.810936291127962e-005 28 8.5064080051301197e-005 29 8.408358788817758e-005
		 30 8.5953263491385417e-005 31 6.9859191303043485e-005 32 6.1926251227838964e-005
		 33 0 34 6.0573025702645074e-005 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "QuickRigCharacter_LeftHand_scaleX";
	rename -uid "02349A51-4585-1A6B-D77B-C5A7BFFBDEAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999992636282586 2 1.000000027698098
		 3 0.99999997131082174 4 0.99999997445042188 5 0.99999995525787211 6 1.0000000388770345
		 7 1.0000000366529995 8 1.0000000197372949 9 1.0000000528067243 10 1.0000000195521861
		 11 1.000000054965098 12 0.99999999574368115 13 1.0000001290933331 14 1.0000000708259096
		 15 1.0000000779417333 16 1.0000000826165933 17 1.0000002000680628 18 1.0000001899548419
		 19 0.99999995263530228 20 1.0000000971087226 21 1.0000000206743129 22 1.0000000083287628
		 23 1.0000000690954212 24 1.0000000883852906 25 1.0000001691140794 26 1.0000002061861537
		 27 0.99999995474241143 28 1.000000087428113 29 1.0000000980802806 30 1.0000000092409254
		 31 0.99999998308160676 32 1.0000000111250158 33 1.0000000563331723 34 1.0000000088601098
		 35 1.0000000041597263 36 1.0000000503539095 37 0.99999995944710129 38 0.99999993911377483
		 39 0.99999996537794766 40 0.99999993619195759 41 0.99999992636282586;
createNode animCurveTU -n "QuickRigCharacter_LeftHand_scaleY";
	rename -uid "57F3603A-4F2E-D090-2FE0-028F2E5C33F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000328769876 2 1.0000002366974321
		 3 1.0000000281333361 4 1.0000002576661267 5 0.99999987055048656 6 1.0000002980605516
		 7 1.0000001901858115 8 1.0000003372348916 9 1.0000002582274787 10 1.0000000931972997
		 11 1.0000001146965762 12 0.99999997934011775 13 1.0000001347313336 14 1.000000092981677
		 15 1.000000002812945 16 1.0000001145485351 17 1.0000001633441671 18 1.0000001066676854
		 19 0.99999998166777582 20 1.0000001076629974 21 1.0000000334243677 22 1.0000000006147978
		 23 1.0000000840097785 24 1.0000000154911413 25 1.000000245816697 26 1.0000002212247436
		 27 0.99999991011373812 28 1.0000000661263235 29 1.0000001083843872 30 1.0000000834424945
		 31 1.0000000133783655 32 0.99999995709223688 33 1.0000000561744715 34 1.0000001171685651
		 35 1.0000002696780754 36 1.000000415283067 37 1.0000000099615269 38 1.0000002331662472
		 39 1.0000004425108007 40 1.0000000793718427 41 1.0000000328769876;
createNode animCurveTU -n "QuickRigCharacter_LeftHand_scaleZ";
	rename -uid "69E4D9B4-447F-0699-2081-5DAE753C3F36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999994603330788 2 1.000000048838898
		 3 1.0000000109972296 4 1.0000000044208861 5 1.0000000131487194 6 1.000000076741679
		 7 1.0000000777559106 8 1.0000000750709779 9 1.0000000077974665 10 0.99999994262970882
		 11 1.0000000748758038 12 0.99999991580696301 13 1.0000000297376126 14 1.0000000175331636
		 15 1.0000000727040028 16 1.0000001267815366 17 1.0000001492765329 18 1.0000000863168783
		 19 1.0000000462484375 20 1.0000000932088304 21 1.0000000045210458 22 0.99999995195689062
		 23 1.0000001044443578 24 1.0000000696086526 25 1.0000001699499799 26 1.0000001553338596
		 27 0.99999998185704786 28 1.0000000785245926 29 1.0000000387441039 30 1.0000000186643216
		 31 0.99999998719490024 32 0.9999999818728843 33 0.99999996368568311 34 1.0000000243535612
		 35 0.99999998801526491 36 1.0000000933088797 37 1.0000000296094669 38 1.0000000357838799
		 39 1.0000000071349464 40 1.0000000109440139 41 0.99999994603330788;
createNode animCurveTL -n "QuickRigCharacter_RightShoulder_translateX";
	rename -uid "1A124F79-4953-5CF8-9F38-FEA746FB0A87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.13142593482727577 2 0.13142585442936991
		 3 0.13142585685275562 4 0.13142592794698985 5 0.13142594986625014 6 0.13142587967908867
		 7 0.13142587983918944 8 0.13142591431623374 9 0.13142588677390393 10 0.13142591547474625
		 11 0.13142586382683363 12 0.13142589228423746 13 0.13142593788727525 14 0.13142584256492101
		 15 0.13142592610783724 16 0.13142591661944408 17 0.13142587327714891 18 0.1314259104423384
		 19 0.13142592599855191 20 0.13142590875785473 21 0.13142580309520369 22 0.13142593562138161
		 23 0.13142577787084192 24 0.13142586025205005 25 0.13142591272568127 26 0.13142590612685837
		 27 0.13142590714753083 28 0.13142587343041867 29 0.13142588591756493 30 0.13142587205057651
		 31 0.13142579477871835 32 0.13142592938343653 33 0.13142590219054129 34 0.1314258652677775
		 35 0.13142583267791635 36 0.13142585099438833 37 0.13142595374029001 38 0.1314258324037712
		 39 0.13142591364009434 40 0.13142587099070951 41 0.13142593482727577;
createNode animCurveTL -n "QuickRigCharacter_RightShoulder_translateY";
	rename -uid "56F3DDAC-40FF-CF10-5A3A-618B5CF8F619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.010524356987771455 2 -0.010524328067650898
		 3 -0.01052436582148065 4 -0.010524367966406772 5 -0.010524386168898659 6 -0.010524356367188084
		 7 -0.010524351860159485 8 -0.010524383750244368 9 -0.010524361163385834 10 -0.010524381616337878
		 11 -0.010524398087332933 12 -0.010524367253489472 13 -0.010524379739233076 14 -0.010524356752172431
		 15 -0.01052437642987691 16 -0.010524381646642668 17 -0.0105243696906461 18 -0.010524383142697342
		 19 -0.01052437580930464 20 -0.010524349539237025 21 -0.010524379944141878 22 -0.010524383117496238
		 23 -0.010524369724309875 24 -0.010524380479302877 25 -0.010524375747272359 26 -0.010524379260176336
		 27 -0.010524370508699565 28 -0.010524362780019683 29 -0.010524379599148368 30 -0.010524368293861884
		 31 -0.010524366489276639 32 -0.010524410807729865 33 -0.01052437692190793 34 -0.010524366093078542
		 35 -0.010524370966112109 36 -0.010524370793690353 37 -0.010524350822795547 38 -0.010524344762684769
		 39 -0.010524409678286446 40 -0.010524342965427173 41 -0.010524356987771455;
createNode animCurveTL -n "QuickRigCharacter_RightShoulder_translateZ";
	rename -uid "E9B03701-40F6-8636-53C3-39B4F0BC677F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.065026437245314456 2 -0.065026405195059103
		 3 -0.065026424150290765 4 -0.065026431914550389 5 -0.06502643170276276 6 -0.065026429701095761
		 7 -0.065026408557369214 8 -0.065026390312263913 9 -0.065026426987824404 10 -0.065026417987505525
		 11 -0.065026413972548117 12 -0.065026422676113624 13 -0.065026428309887196 14 -0.065026419831759663
		 15 -0.065026417806333878 16 -0.065026433750061174 17 -0.06502644467438834 18 -0.065026409159065976
		 19 -0.065026409682301042 20 -0.065026454023302718 21 -0.065026373223479164 22 -0.065026396218280921
		 23 -0.065026406974718398 24 -0.06502639208732286 25 -0.065026376852364343 26 -0.065026457644567812
		 27 -0.065026417500529926 28 -0.065026435592210718 29 -0.065026416322786482 30 -0.065026397760429816
		 31 -0.065026408132972849 32 -0.0650263893786307 33 -0.06502641196803445 34 -0.065026399731771503
		 35 -0.065026389660836265 36 -0.065026381002124475 37 -0.065026434879523837 38 -0.065026397639026109
		 39 -0.06502642031843156 40 -0.065026412449939952 41 -0.065026437245314456;
createNode animCurveTA -n "QuickRigCharacter_RightShoulder_rotateX";
	rename -uid "F4CD8149-4651-CAEA-8567-4D83DF474826";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -27.281984376694993 2 -27.281967219028928
		 3 -27.293557046842356 4 -27.328094395168357 5 -27.384823261221584 6 -27.462231545585258
		 7 -27.558036985496127 8 -27.669121538791796 9 -27.791681074719854 10 -27.921453858643844
		 11 -28.05393503708309 12 -28.18470397089197 13 -28.309757188537819 14 -28.42560819101508
		 15 -28.529498551986279 16 -28.619339318294827 17 -28.693726195563126 18 -28.75179047897311
		 19 -28.793145602209012 20 -28.817751878606892 21 -28.825890467622308 22 -28.817845940931846
		 23 -28.79382390784868 24 -28.754086305368741 25 -28.69911286073021 26 -28.629684126555066
		 27 -28.546820818494183 28 -28.451956409190398 29 -28.346828262848707 30 -28.233561812219449
		 31 -28.114644964964164 32 -27.992889175977716 33 -27.871349865490185 34 -27.753310086079907
		 35 -27.642045661939395 36 -27.540825189334573 37 -27.452722929605493 38 -27.380554126034077
		 39 -27.32678426083309 40 -27.293382654689122 41 -27.281984376694993;
createNode animCurveTA -n "QuickRigCharacter_RightShoulder_rotateY";
	rename -uid "9880C4A9-4328-DB37-2AC8-2B89FADCCB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -12.829049580487395 2 -12.829049048479181
		 3 -12.567605226064645 4 -11.7876222487996 5 -10.506561168672931 6 -8.7582903954414206
		 7 -6.5948650157768283 8 -4.0863544805953378 9 -1.3184739206102194 10 1.6119976462358343
		 11 4.6035484343783954 12 7.5567814284481267 13 10.380646257189046 14 12.997015072802583
		 15 15.343139434655157 16 17.372100195428825 17 19.051804570361934 18 20.362986908777728
		 19 21.296871169119591 20 21.852791025652774 21 22.036146488929393 22 21.85470326272138
		 23 21.312235238480426 24 20.414816172272214 25 19.173535103421401 26 17.605442665321487
		 27 15.73446630264732 28 13.592070877987792 29 11.217926698080365 30 8.6600362722327233
		 31 5.9745605115316573 32 3.2249410043508386 33 0.48056032921850794 34 -2.1853201235799609
		 35 -4.6979373840016851 36 -6.9837614852548242 37 -8.9731631047889095 38 -10.602770550316343
		 39 -11.817434586201047 40 -12.571444972856636 41 -12.829049580487395;
createNode animCurveTA -n "QuickRigCharacter_RightShoulder_rotateZ";
	rename -uid "BC0E77F5-4B4F-4924-7031-7384B7237C26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 6.6916536105740123 2 6.6916442028614771
		 3 6.5551668890989072 4 6.1480309318265647 5 5.4793108894066691 6 4.5667225031200616
		 7 3.4374243881214284 8 2.1279796911353341 9 0.68315676125074898 10 -0.84654352164958069
		 11 -2.4081198980851855 12 -3.9497011165625482 13 -5.4237511655536652 14 -6.7894951134310464
		 15 -8.0141590611619922 16 -9.0732797302656643 17 -9.9500706979846623 18 -10.634513641179263
		 19 -11.121991127313402 20 -11.412184608921114 21 -11.507891365513744 22 -11.413175315305544
		 23 -11.13002256541359 24 -10.66155375622799 25 -10.013609050960497 26 -9.1950837345011092
		 27 -8.2184293696016244 28 -7.1001123640410402 29 -5.86080546478125 30 -4.5255952871207423
		 31 -3.1237889529973555 32 -1.6884801640509328 33 -0.25593141926465518 34 1.1356504963135621
		 35 2.4472352743698416 36 3.6404324870838916 37 4.6788791764950091 38 5.5295352761793355
		 39 6.1635963909085909 40 6.5571798985122962 41 6.6916536105740123;
createNode animCurveTU -n "QuickRigCharacter_RightShoulder_scaleX";
	rename -uid "16351E42-48FF-F9EA-1172-29889530A608";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000595450207 2 1.0000003301473341
		 3 1.000000108328112 4 1.0000002194556439 5 1.0000002257537035 6 1.0000001244037344
		 7 1.0000000546303869 8 1.0000002163045978 9 0.99999995577109924 10 1.0000001961823268
		 11 1.0000001144542328 12 1.000000177205373 13 0.99999997782431171 14 1.0000003878218315
		 15 1.0000000000710794 16 1.00000008901806 17 1.0000003683993022 18 1.0000001403719623
		 19 0.99999994289843075 20 1.0000001490841313 21 1.0000001082708749 22 1.0000001711004789
		 23 1.0000001948936172 24 1.0000001796172411 25 1.0000001988236693 26 1.0000002954552252
		 27 1.0000001703829622 28 1.0000003529532844 29 1.0000002198696871 30 1.000000304604143
		 31 1.0000000381667327 32 1.0000000289157005 33 0.99999992819349448 34 1.0000000488465439
		 35 1.0000002752726691 36 0.99999998195516837 37 1.0000000690393644 38 1.0000000935674065
		 39 0.99999999642838744 40 1.0000001027379044 41 1.0000000595450207;
createNode animCurveTU -n "QuickRigCharacter_RightShoulder_scaleY";
	rename -uid "8F419744-42D0-ED23-52C5-9CA053C5ED38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000435258778 2 0.99999993439948665
		 3 0.9999999727212725 4 0.99999998760668873 5 0.99999993865962722 6 0.99999999570252207
		 7 0.99999999970528852 8 1.0000000397859885 9 0.99999999016287777 10 0.99999995571405398
		 11 0.99999998235276111 12 0.99999999853278243 13 0.99999997356733672 14 0.99999996365781285
		 15 0.99999999226055758 16 0.99999996274786829 17 1.0000000151171833 18 0.99999999882141644
		 19 1.0000000455003135 20 0.9999999908448477 21 0.99999994744134135 22 0.99999994834815331
		 23 1.0000000244481586 24 1.0000000109648153 25 1.0000000193287526 26 0.9999999919184015
		 27 1.0000000294737705 28 0.9999999523174995 29 1.0000000192282448 30 0.99999996619614995
		 31 1.0000000080365412 32 1.0000000028429799 33 1.00000000947956 34 1.0000000396663309
		 35 1.0000000044612287 36 0.99999999841242571 37 0.99999997266271101 38 0.9999999218831146
		 39 0.99999999789490146 40 0.99999997793413242 41 1.0000000435258778;
createNode animCurveTU -n "QuickRigCharacter_RightShoulder_scaleZ";
	rename -uid "D4350A42-4AFF-1105-B97D-F1AD875BC636";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000092059267 2 0.9999999889423693
		 3 1.000000002244708 4 1.0000000436106364 5 0.99999994204374232 6 0.99999991680981859
		 7 1.000000006355124 8 1.0000000427084264 9 0.99999998428512804 10 1.0000000262392765
		 11 0.99999997391802453 12 1.0000000566803124 13 1.0000000010658607 14 0.99999998855639394
		 15 0.99999992950996741 16 0.99999992149408645 17 1.0000000097862869 18 0.99999992517736491
		 19 0.99999994813920168 20 0.9999999866171011 21 1.0000000131038647 22 1.0000000500283803
		 23 1.0000000435167968 24 1.0000000196414249 25 1.0000000346862608 26 0.99999999677837914
		 27 1.0000000156546773 28 0.99999997632773729 29 1.0000000148028991 30 0.99999991719214398
		 31 0.99999998596154105 32 0.99999999761973946 33 0.99999998830447634 34 1.0000000392067097
		 35 0.99999999523124294 36 0.99999999550370522 37 1.0000000030531175 38 1.0000000270593095
		 39 0.99999999449373789 40 0.9999999932850846 41 1.0000000092059267;
createNode animCurveTL -n "QuickRigCharacter_RightArm_translateX";
	rename -uid "B4711C6D-4CFD-BD3E-277B-42A7B5ECE3C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.097539600182073583 2 -0.097539577492887525
		 3 -0.097539632495202755 4 -0.097539603692148952 5 -0.097539626539848143 6 -0.097539661919905707
		 7 -0.097539649359235731 8 -0.097539717123246605 9 -0.097539583538963581 10 -0.097539704487629303
		 11 -0.097539593258766127 12 -0.09753963186500389 13 -0.097539609609591016 14 -0.097539571260798943
		 15 -0.097539597757763399 16 -0.097539617711289869 17 -0.097539484604456772 18 -0.097539682874138944
		 19 -0.097539575291027178 20 -0.097539649277032292 21 -0.097539600595715398 22 -0.097539704401189212
		 23 -0.097539658553983916 24 -0.097539677194740798 25 -0.097539687197723796 26 -0.097539634788158622
		 27 -0.097539582176833214 28 -0.097539600756866976 29 -0.097539687434077371 30 -0.09753964122051223
		 31 -0.097539649805567855 32 -0.097539652134452814 33 -0.097539643563404263 34 -0.097539577183073836
		 35 -0.097539636519326262 36 -0.097539614834891597 37 -0.097539595505507254 38 -0.09753963617257945
		 39 -0.097539572699744573 40 -0.097539638802785766 41 -0.097539600182073583;
createNode animCurveTL -n "QuickRigCharacter_RightArm_translateY";
	rename -uid "ADD39E5E-494A-3DD7-ACF4-DB8F68054EB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 2.5828167906638555e-008 2 -1.8308155347313006e-008
		 3 5.3911693100872073e-008 4 1.415919001601651e-008 5 1.2157459536865645e-008 6 1.5939509268037e-008
		 7 -3.2710620700981967e-008 8 -4.6038616119403744e-009 9 -1.1059450883976752e-008
		 10 -2.4586917390934107e-009 11 9.1184692507795259e-009 12 5.2829914096719221e-008
		 13 3.8900402472563658e-008 14 -3.9234318620628983e-008 15 2.1914187868787851e-008
		 16 -1.1987540773361617e-008 17 -4.0915816015285598e-008 18 5.4682288777030411e-008
		 19 -5.4555257378297031e-008 20 -5.350272715531901e-008 21 1.1090897089616192e-008
		 22 3.4518349423251492e-008 23 1.8102667382891013e-008 24 7.4674467498425653e-009
		 25 3.7949040745388627e-008 26 3.6381901509230377e-008 27 -7.2511583084633458e-008
		 28 -7.4644931231659943e-008 29 2.0411690258015369e-008 30 -2.4890766781027196e-010
		 31 1.4435148045777168e-008 32 3.6277029380471507e-010 33 6.5539525877511549e-008
		 34 1.4655557833975764e-008 35 -1.7987598823765438e-008 36 -2.0871046046977425e-009
		 37 1.8275413680157725e-008 38 -2.2600648037496284e-008 39 5.0172855594610153e-008
		 40 2.7503399167017053e-008 41 2.5828167906638555e-008;
createNode animCurveTL -n "QuickRigCharacter_RightArm_translateZ";
	rename -uid "92951DB0-4D07-76D2-A267-9EB5A7F5C46D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -3.7926038909397161e-009 2 1.5564734701101203e-008
		 3 -1.4813090176701849e-009 4 4.4859374837002972e-009 5 5.9258255902250316e-009 6 -5.1068116757591043e-009
		 7 -1.0778457895099791e-008 8 -1.9280976051305743e-008 9 3.8436241567296748e-009 10 1.0312876597140529e-009
		 11 9.2845704458000006e-010 12 1.1946675257945572e-008 13 8.3722281374321035e-009
		 14 1.0147621445355527e-008 15 5.2314707588152491e-009 16 6.0863676765166016e-010
		 17 1.7387630322218683e-008 18 -1.1441428497960261e-008 19 1.974460062115213e-009
		 20 -8.8135745812678581e-010 21 1.2697497275837577e-008 22 7.4981731046364078e-009
		 23 2.5093307343126982e-009 24 -1.0149328133479684e-008 25 8.9000766578806183e-009
		 26 2.2192720123825893e-008 27 1.1156880894702681e-008 28 1.5229287875229148e-008
		 29 -2.0591394189750645e-008 30 1.4751739030316459e-009 31 -3.4436008178317933e-009
		 32 2.4948272070446366e-009 33 -1.1717587824477961e-008 34 7.4360416491003888e-010
		 35 1.2708660079852051e-009 36 2.6338799230529732e-009 37 -5.6701991990593115e-009
		 38 2.8506677374195988e-009 39 2.2288528382929941e-008 40 -9.1650494971062815e-010
		 41 -3.7926038909397161e-009;
createNode animCurveTA -n "QuickRigCharacter_RightArm_rotateX";
	rename -uid "8A74A3EF-45DD-2403-764F-ABA9E024CF4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 64.190455678228503 2 64.190457856343286
		 3 64.189722871342752 4 64.187541512890178 5 64.183949343258277 6 64.179058336978699
		 7 64.172972943473169 8 64.165932727905769 9 64.158169930026048 10 64.149954676578531
		 11 64.141552058233046 12 64.133269599130443 13 64.125341688133119 14 64.117999414311043
		 15 64.111431556890111 16 64.105744350099599 17 64.10103511424748 18 64.097358678429487
		 19 64.094732091645113 20 64.093164940645394 21 64.092654978118034 22 64.093164739874538
		 23 64.094695590617931 24 64.097197509275134 25 64.100687148351383 26 64.10508680347408
		 27 64.110329219395496 28 64.116344339694905 29 64.122994035110295 30 64.130187264223409
		 31 64.137714392503455 32 64.14542579272964 33 64.15312964262246 34 64.160587967671461
		 35 64.167649319826495 36 64.174059182787346 37 64.179638946190039 38 64.1841980569653
		 39 64.187616999989572 40 64.189729610316618 41 64.190455678228503;
createNode animCurveTA -n "QuickRigCharacter_RightArm_rotateY";
	rename -uid "04D54B3A-4F64-4797-604A-2093357BD01B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -15.227001093272596 2 -15.226999551966905
		 3 -15.330686488143609 4 -15.640006132529921 5 -16.148062820156468 6 -16.841396123926451
		 7 -17.699378024988832 8 -18.694211370014678 9 -19.791904041500551 10 -20.954083835364912
		 11 -22.140482212547894 12 -23.31168792799771 13 -24.431588681780372 14 -25.469201486200415
		 15 -26.399637112162942 16 -27.204285570884064 17 -27.870432304265822 18 -28.390425771764416
		 19 -28.760782175416267 20 -28.981259756579078 21 -29.053969477874652 22 -28.982000383934537
		 23 -28.766876588498395 24 -28.410968420477825 25 -27.918692910925731 26 -27.296823179445575
		 27 -26.554825599849451 28 -25.705193142222793 29 -24.763635306343375 30 -23.749221142842803
		 31 -22.684202136783135 32 -21.593745572742787 33 -20.505377897031277 34 -19.448127883028523
		 35 -18.451659532050776 36 -17.545145998822797 37 -16.756188705419586 38 -16.109911271812045
		 39 -15.628187520961459 40 -15.329165657550407 41 -15.227001093272596;
createNode animCurveTA -n "QuickRigCharacter_RightArm_rotateZ";
	rename -uid "B83E4719-4444-90EA-2E04-DBAD9D219411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 4.7670881202152797 2 4.767085974224587
		 3 4.6362147279776238 4 4.2457724656364109 5 3.6044858318494715 6 2.7293427449380188
		 7 1.6463825477082485 8 0.3906686775854914 9 -0.99487017847669568 10 -2.4618077902546944
		 11 -3.9593176486873469 12 -5.4376424376627837 13 -6.8512054139934717 14 -8.160918045764932
		 15 -9.3353426651725808 16 -10.350995382272099 17 -11.191832863239794 18 -11.848177596103493
		 19 -12.315646211881182 20 -12.593938272718235 21 -12.685716188550639 22 -12.594884562732611
		 23 -12.323344712004765 24 -11.874108954710387 25 -11.252743494832446 26 -10.46780337353054
		 27 -9.5312236773179944 28 -8.4587955713232805 29 -7.2703334206537402 30 -5.9899179224969963
		 31 -4.6456089516870565 32 -3.2692143317978917 33 -1.895432412976235 34 -0.56094288674595028
		 35 0.69681691410550917 36 1.8410532035456242 37 2.8368986514466359 38 3.6526648846654792
		 39 4.2606989570009217 40 4.6381319828768515 41 4.7670881202152797;
createNode animCurveTU -n "QuickRigCharacter_RightArm_scaleX";
	rename -uid "4D4BB220-4A17-7A70-159B-4991DA1C6E76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000921506536 2 1.0000002224377595
		 3 1.0000001259645663 4 1.0000001257133184 5 0.99999986490902137 6 1.000000039090585
		 7 1.0000001415026936 8 0.99999998395788214 9 0.99999989886778673 10 1.0000003128140282
		 11 0.99999998542179669 12 1.0000003065813912 13 1.0000000841846566 14 0.999999836989796
		 15 0.99999985777986311 16 1.0000000997897613 17 0.99999992213037903 18 1.0000001144206838
		 19 1.0000002307632136 20 0.9999999391232901 21 1.0000001758565591 22 1.0000002552335927
		 23 1.0000003010851952 24 0.99999999261174577 25 1.0000001960497711 26 1.0000000908925109
		 27 1.0000002984673644 28 1.0000002993423935 29 1.0000001902314322 30 1.0000002046585859
		 31 1.0000004234588198 32 1.0000000280463524 33 1.0000000305080723 34 1.0000000269235831
		 35 1.0000000552944717 36 1.0000000252661729 37 1.000000226739078 38 1.0000001574554624
		 39 1.0000001297215175 40 1.0000001705050063 41 1.0000000921506536;
createNode animCurveTU -n "QuickRigCharacter_RightArm_scaleY";
	rename -uid "7D1DE364-439E-57FA-E0DD-2EAF2227B647";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001684540947 2 1.0000001883117851
		 3 1.0000001564190339 4 1.0000001371439455 5 0.99999987689418024 6 1.0000000673815788
		 7 1.0000001395481288 8 1.0000000375457045 9 0.99999990443034237 10 1.000000331148134
		 11 1.0000000859441145 12 1.0000001997136867 13 1.0000000541295495 14 0.999999808308628
		 15 0.99999992061346554 16 1.000000070794568 17 0.99999988876487411 18 1.0000001656365922
		 19 1.0000002343691863 20 0.99999997897132953 21 1.0000002849206691 22 1.0000001776716463
		 23 1.000000284814601 24 0.999999984854688 25 1.0000001825448654 26 1.0000001093019195
		 27 1.000000244353195 28 1.0000003108576456 29 1.0000001932047506 30 1.0000002392396714
		 31 1.0000003953275998 32 1.000000041617652 33 1.0000000028718237 34 1.000000050924003
		 35 1.0000001630937152 36 1.0000000145281187 37 1.0000001757273727 38 1.0000000962668742
		 39 1.0000000943338252 40 1.0000002562796428 41 1.0000001684540947;
createNode animCurveTU -n "QuickRigCharacter_RightArm_scaleZ";
	rename -uid "5A175722-4BDB-ADE2-2F5C-5EB02508D334";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001522984188 2 1.0000001979720128
		 3 1.0000001213167464 4 1.0000000979885557 5 0.9999998581517191 6 1.0000000419633661
		 7 1.0000001275990784 8 0.99999999369364445 9 0.99999991268681931 10 1.0000003008914082
		 11 1.0000000810655831 12 1.0000002754489834 13 1.0000000956397459 14 0.99999975702697219
		 15 0.99999994455615404 16 1.0000001218606387 17 0.99999992531044124 18 1.000000113603783
		 19 1.0000002454883439 20 0.99999995108302853 21 1.0000002326115582 22 1.0000002487911608
		 23 1.0000002748512948 24 1.0000001047139355 25 1.0000001472690658 26 1.0000000922041048
		 27 1.00000026440789 28 1.0000003364242309 29 1.0000001839537476 30 1.0000001839303885
		 31 1.0000004080189298 32 0.99999993128156772 33 1.0000000042107902 34 0.99999995970349731
		 35 1.0000001015801709 36 1.0000000094768016 37 1.0000002467089586 38 1.000000141459997
		 39 1.0000001219774932 40 1.0000002538766777 41 1.0000001522984188;
createNode animCurveTL -n "QuickRigCharacter_RightForeArm_translateX";
	rename -uid "2419AA04-4F68-9EDA-B328-8EB738E94264";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.21783226129038205 2 -0.21783215214622501
		 3 -0.21783238356338253 4 -0.21783217577187827 5 -0.21783226166047395 6 -0.21783218856987169
		 7 -0.21783216410073272 8 -0.21783213756471237 9 -0.21783236438386167 10 -0.21783234911539368
		 11 -0.21783211285074253 12 -0.21783218488460379 13 -0.21783226356635813 14 -0.21783218133118923
		 15 -0.21783231042979914 16 -0.21783221282442702 17 -0.2178320830373523 18 -0.21783213820762462
		 19 -0.21783234966642562 20 -0.21783215479199824 21 -0.21783222334382429 22 -0.21783212143038561
		 23 -0.21783208708995594 24 -0.21783208507726101 25 -0.21783210289544883 26 -0.21783225025289987
		 27 -0.21783219304948986 28 -0.21783222868678906 29 -0.21783219530495637 30 -0.21783204177487409
		 31 -0.21783194564695835 32 -0.21783208461324674 33 -0.21783218889362943 34 -0.2178322574714793
		 35 -0.21783220588519803 36 -0.21783219612126833 37 -0.217832250179023 38 -0.21783219537394211
		 39 -0.21783217288886073 40 -0.21783214549963248 41 -0.21783226129038205;
createNode animCurveTL -n "QuickRigCharacter_RightForeArm_translateY";
	rename -uid "5DA8762F-406D-5FA8-9E28-B9A6714600E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 5.1449144962134599e-008 2 6.7161898442691384e-008
		 3 1.2422049451288331e-008 4 5.8484123144353361e-009 5 1.5077821444720031e-008 6 -1.4743343399459264e-008
		 7 -6.6139360939132537e-008 8 -6.1519923519881555e-008 9 -6.0142617144265393e-008
		 10 4.0719990010984476e-008 11 -4.4046035156952714e-008 12 4.7276015351371826e-008
		 13 -4.3161528822110996e-008 14 1.1518790330455887e-008 15 6.7799841474425197e-009
		 16 -4.1060142592641568e-008 17 -4.8647686838876323e-008 18 4.0570786552507347e-008
		 19 1.6038385979300075e-008 20 3.3012760098927177e-008 21 2.4018091124844434e-008
		 22 6.0573586324608191e-009 23 1.5934089248048623e-008 24 1.4902576737085839e-008
		 25 2.2941550810173796e-008 26 1.4293302541545927e-008 27 4.7490830468177593e-009
		 28 -1.1540951589950055e-008 29 3.8433762625800226e-008 30 7.0862762981960254e-008
		 31 -2.3137317555210757e-008 32 2.9828191117076132e-008 33 1.1051000257111809e-008
		 34 5.1417550395171932e-008 35 4.5026023514083135e-008 36 8.3348265889071631e-009
		 37 -2.0507125810809156e-008 38 5.9819859359322434e-008 39 -4.5783111062291941e-008
		 40 4.4881915073347045e-008 41 5.1449144962134599e-008;
createNode animCurveTL -n "QuickRigCharacter_RightForeArm_translateZ";
	rename -uid "D0A50CA9-4E12-F7FE-B882-FFA38E4BDBD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.8540083459583913e-008 2 1.6435141887427561e-008
		 3 2.6150985519279857e-008 4 -2.6863358968398642e-008 5 8.8156318867049786e-009 6 -1.9850970289780891e-008
		 7 -1.5213705140126876e-008 8 -1.3807025709411392e-008 9 -1.7684086586200466e-008
		 10 -9.0055409884826074e-009 11 -1.6668845148615218e-008 12 2.0158896063549036e-008
		 13 -8.0174578371838841e-008 14 3.8304903497987653e-008 15 2.551861228994312e-008
		 16 -7.8055358656570212e-008 17 -4.1637806447170077e-008 18 5.6577435429971957e-008
		 19 -1.7682210469160965e-008 20 4.2030934324088775e-008 21 3.2597792198885148e-008
		 22 -8.7686216687643539e-009 23 -2.5379990518104024e-008 24 -8.4035711722663109e-010
		 25 -3.2789524411214192e-008 26 -5.2371321572763916e-008 27 1.0662649501114174e-008
		 28 3.5910282036866195e-009 29 -3.3370461878234893e-008 30 2.8825219118289169e-008
		 31 -6.87711282409964e-008 32 -8.9453027101171752e-008 33 4.9246439459693649e-009
		 34 4.4565489076831e-008 35 -1.1074446248926506e-008 36 1.2170463392635611e-008 37 -1.7313247724359826e-008
		 38 2.7459116083150549e-008 39 -3.2148042095059284e-009 40 3.0822316503531512e-008
		 41 1.8540083459583913e-008;
createNode animCurveTA -n "QuickRigCharacter_RightForeArm_rotateX";
	rename -uid "C9B407FC-4E29-40FB-529E-EC87D5444F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.0022808378301322836 2 0.0022716220973812732
		 3 0.0022703237991314206 4 0.0022583556932847695 5 0.0022622722162011439 6 0.0022561127371534691
		 7 0.0022824582342670981 8 0.0022652136848677587 9 0.0022788313979854361 10 0.0022775074553597692
		 11 0.0022822574034727957 12 0.0022757347793776776 13 0.0022756633716352649 14 0.0022790076362797212
		 15 0.0022901855244561874 16 0.0022706894594323609 17 0.0022819686881917368 18 0.0022756483079403645
		 19 0.0022795726323181936 20 0.0023015098765196032 21 0.0022749410268435195 22 0.002276043652118493
		 23 0.0022828253933611744 24 0.0022865269906728772 25 0.0022631773630064074 26 0.0022766083122748517
		 27 0.0022770369741204996 28 0.002268429825031856 29 0.0022723418500849033 30 0.0022724680709839329
		 31 0.0022749328400685186 32 0.0022703069800748947 33 0.0022724627312250838 34 0.0022819348977051921
		 35 0.0022674268835504358 36 0.0022675936903859273 37 0.0022690555401528455 38 0.0022611460938116476
		 39 0.0022681479617570745 40 0.002256665718138021 41 0.0022808378301322836;
createNode animCurveTA -n "QuickRigCharacter_RightForeArm_rotateY";
	rename -uid "AEE9E24A-4D50-1135-04B5-24BEC7A5A6A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.00015380330661557607 2 -0.00014523433585171593
		 3 -0.00014230361096284833 4 -0.00013011792255093057 5 -0.00014282257048869941 6 -0.00014430506053775117
		 7 -0.00015540769231027769 8 -0.00017071669025737639 9 -0.00018132481294874425 10 -0.00018839980657298558
		 11 -0.00019207412704759231 12 -0.00020132421697835936 13 -0.00021643088659766593
		 14 -0.00020742903464291275 15 -0.00022196340192278524 16 -0.00024489309525220894
		 17 -0.00023373983213147623 18 -0.00022872364049857718 19 -0.00024992579255257795
		 20 -0.00023877922763450789 21 -0.00024974790607442738 22 -0.00024421991753171537
		 23 -0.00025181541565159665 24 -0.00024502190965243893 25 -0.00023777395436196968
		 26 -0.00024483597031254624 27 -0.00023486245464677329 28 -0.00023169059962594178
		 29 -0.00022701649043366687 30 -0.00020365397605279865 31 -0.00020945205409472718
		 32 -0.00017792749546275023 33 -0.00017512814613205368 34 -0.00016895055845397627
		 35 -0.00017117581462841418 36 -0.00015423376117498032 37 -0.00015749195853641937
		 38 -0.00015902442306363706 39 -0.00014684410430006219 40 -0.00013190792144061224
		 41 -0.00015380330661557607;
createNode animCurveTA -n "QuickRigCharacter_RightForeArm_rotateZ";
	rename -uid "31EEC047-4964-3B77-504C-ED9469C2ACDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 29.723978826273044 2 29.723970151247016
		 3 29.50187035135653 4 28.839358157810249 5 27.751167487657469 6 26.266119595224566
		 7 24.42842574863926 8 22.297612753067838 9 19.946466916362773 10 17.457213514825188
		 11 14.916078344220391 12 12.407497981097643 13 10.008794130630712 14 7.7863490501685915
		 15 5.7934711788945208 16 4.0699985164645538 17 2.6431911485124933 18 1.5294281009570398
		 19 0.73615841322011311 20 0.26392103979702142 21 0.10818484807008792 22 0.26231187397198014
		 23 0.72310023938439372 24 1.4854002923502732 25 2.5398010078312319 26 3.8717771107679173
		 27 5.4610593205176441 28 7.2808891721287816 29 9.2975884791729992 30 11.470339908454655
		 31 13.751491705750025 32 16.087113657922082 33 18.418301254725236 34 20.682788980675401
		 35 22.817115138892191 36 24.758768755757654 37 26.448631394645947 38 27.832889488886988
		 39 28.864677913701772 40 29.505161050709514 41 29.723978826273044;
createNode animCurveTU -n "QuickRigCharacter_RightForeArm_scaleX";
	rename -uid "C63D45DF-4A6E-F48C-955E-DABB25D83AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999995390018881 2 1.0000000318778877
		 3 1.0000000363105765 4 1.0000000382013103 5 1.0000001489110681 6 1.0000000414783972
		 7 1.0000002437463429 8 0.99999992533627668 9 1.0000001058936385 10 1.0000002327916437
		 11 1.0000001994087333 12 1.0000000887159781 13 1.0000000869886476 14 1.0000001979143054
		 15 1.0000000010971084 16 0.99999997392176854 17 1.0000000994233005 18 1.0000001988712586
		 19 1.000000130835309 20 0.99999994392211 21 1.00000016894336 22 1.0000002081685713
		 23 1.0000001138582495 24 0.99999998221605468 25 1.0000001208942864 26 1.0000000833810603
		 27 1.0000000735957419 28 0.99999999046235111 29 0.99999991620117812 30 0.9999999834272677
		 31 1.0000001240926464 32 1.0000001030036303 33 1.0000002052134345 34 1.0000003778745588
		 35 0.99999984261631492 36 1.0000001464148105 37 1.0000000219076386 38 0.99999990447402565
		 39 1.0000002141419289 40 1.0000000654221115 41 0.99999995390018881;
createNode animCurveTU -n "QuickRigCharacter_RightForeArm_scaleY";
	rename -uid "6222B13D-4F07-D5E1-B5F7-249AE960AFD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999993510231078 2 0.99999997400245333
		 3 1.0000000577772397 4 1.0000000326826648 5 1.0000001316118377 6 1.0000000256261803
		 7 1.0000002419756793 8 0.99999998074326601 9 1.0000001837888832 10 1.0000002141094435
		 11 1.0000001037852857 12 1.0000001213522187 13 1.0000000761818399 14 1.0000001869222492
		 15 0.99999998826638992 16 0.99999986767920201 17 1.0000000913562146 18 1.0000001696154925
		 19 1.0000000917970442 20 1.0000000509597917 21 1.00000017996949 22 1.0000002093803608
		 23 1.000000128190929 24 0.99999998211025676 25 1.0000000547964754 26 1.000000151447846
		 27 0.99999997860211931 28 1.000000087235509 29 0.99999988107331461 30 0.99999995530848818
		 31 1.0000000389085311 32 1.0000000314348525 33 1.0000001939213865 34 1.0000003631267325
		 35 0.99999973663089536 36 1.0000001503994222 37 1.0000000399493654 38 0.99999998588569239
		 39 1.0000002834053763 40 1.0000000193646226 41 0.99999993510231078;
createNode animCurveTU -n "QuickRigCharacter_RightForeArm_scaleZ";
	rename -uid "0DA057D3-4E69-16BC-53E8-FB82150DD90F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999995991959423 2 1.0000000362158883
		 3 1.0000000088371672 4 0.99999994152631833 5 1.000000111562598 6 1.0000000079891938
		 7 1.0000002711541061 8 0.99999996901238219 9 1.0000002008752333 10 1.0000002147813822
		 11 1.0000002137884192 12 1.0000001118297377 13 1.0000000322933282 14 1.0000002969336037
		 15 0.9999998611662394 16 0.99999996386695778 17 1.0000001132862948 18 1.0000001308262669
		 19 1.0000000354384733 20 0.99999997882039271 21 1.0000001740584308 22 1.0000002266510373
		 23 1.0000001121751325 24 0.99999999865804257 25 1.0000001217951358 26 1.000000130988598
		 27 1.0000001111611934 28 1.0000000926174655 29 0.99999999230710979 30 0.99999997028242527
		 31 1.0000001139526633 32 1.0000000909091302 33 1.0000001702470562 34 1.0000003703196407
		 35 0.99999986513585382 36 1.0000001279175461 37 1.0000000266527349 38 0.99999998665155354
		 39 1.0000002227409373 40 0.99999996618190845 41 0.99999995991959423;
createNode animCurveTL -n "QuickRigCharacter_RightHand_translateX";
	rename -uid "24E7CDD4-49AC-6204-84E1-1BA366CB9804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.20068356108796834 2 -0.20068358888365478
		 3 -0.20068351326265685 4 -0.20068357391885236 5 -0.20068375165659991 6 -0.20068370092228438
		 7 -0.2006837619070094 8 -0.20068352521032207 9 -0.20068358635328132 10 -0.20068368482705268
		 11 -0.20068359680879325 12 -0.20068371533438567 13 -0.20068345905196061 14 -0.20068348838178918
		 15 -0.20068376738445398 16 -0.20068363359102279 17 -0.20068364824094084 18 -0.20068354236651445
		 19 -0.20068360597246798 20 -0.20068354024989599 21 -0.20068356989358663 22 -0.20068361424025455
		 23 -0.20068349272898267 24 -0.20068350936444979 25 -0.20068342931233452 26 -0.20068363366538211
		 27 -0.2006835763222668 28 -0.20068345065451978 29 -0.20068362147510851 30 -0.20068351341396379
		 31 -0.20068353416691731 32 -0.20068343829838775 33 -0.20068341868397838 34 -0.20068361500529122
		 35 -0.20068373741960813 36 -0.20068368219062704 37 -0.20068360698907306 38 -0.20068357942300494
		 39 -0.20068356489060768 40 -0.20068350302940527 41 -0.20068356108796834;
createNode animCurveTL -n "QuickRigCharacter_RightHand_translateY";
	rename -uid "D36725A5-4666-3111-4893-9FA63CDF4259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 9.8042697516120828e-009 2 -5.4140444234462852e-008
		 3 -5.0383380312268858e-008 4 9.5381345488476654e-008 5 2.6190972306494588e-008 6 4.1068931579957281e-008
		 7 8.7172686988878919e-008 8 2.9032466670741996e-008 9 6.3048436658164072e-008 10 -6.1695439086406627e-008
		 11 7.4180917550847877e-008 12 1.0780513747477017e-007 13 1.0297896452016176e-007
		 14 1.4684440401424581e-008 15 5.5042196436261296e-008 16 4.6644492499581245e-008
		 17 2.3896815832813444e-008 18 -8.9813198655974699e-010 19 8.0977948897498213e-008
		 20 -4.4296307066815642e-009 21 1.3399354060084078e-007 22 -2.1862820176465904e-009
		 23 1.2446977848412645e-009 24 -1.1289320980267802e-008 25 1.3300115426773119e-008
		 26 1.46805300005326e-008 27 8.8346304494280045e-009 28 -3.194097786263228e-009 29 2.6233911967210587e-008
		 30 2.9555358622701533e-008 31 6.2945914862666547e-008 32 4.7668361276009821e-008
		 33 8.9556368720877805e-009 34 4.3589486580231098e-008 35 4.0378589289957746e-008
		 36 2.8246386278851787e-008 37 -3.458275202206096e-008 38 3.2958344888811551e-008
		 39 2.3092507746014235e-008 40 -2.9192474499950549e-008 41 9.8042697516120828e-009;
createNode animCurveTL -n "QuickRigCharacter_RightHand_translateZ";
	rename -uid "E5B4CBDA-4F30-A2AA-7CF6-659DE707B4D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -4.5273318107774685e-008 2 -4.4617445382755248e-009
		 3 -5.9533523355526084e-008 4 6.4914705077967488e-008 5 -2.0426263347417264e-009 6 -3.7377310064812265e-008
		 7 -1.2676400586997261e-008 8 -9.8918948765458477e-009 9 -3.4196432352473495e-011
		 10 -7.9336908243021761e-008 11 5.5788977135762256e-008 12 1.2632710379989476e-007
		 13 7.1555839085135633e-008 14 -3.617016105295079e-008 15 -1.032270574796712e-008
		 16 -5.7484434208276984e-008 17 6.3591268641971508e-008 18 -5.1654125599043257e-008
		 19 1.6966586713351717e-009 20 -3.7845520211021721e-008 21 3.6318876581731272e-008
		 22 -4.4629127202711064e-008 23 -2.3340216230849365e-008 24 1.4909261523143869e-008
		 25 -1.3628737356441435e-007 26 -2.5505372747147704e-008 27 4.013406638136985e-009
		 28 -1.6742900818655926e-007 29 1.2928951065305228e-008 30 9.6680003025539923e-009
		 31 1.5639995751826065e-008 32 9.0157624299536111e-009 33 -6.1488563858347341e-008
		 34 9.826298210668938e-009 35 5.7186556006172394e-008 36 8.3723950865532974e-008 37 -6.583897416589934e-008
		 38 -2.815352665663795e-008 39 -7.7867620262850329e-009 40 -2.3702739042619214e-008
		 41 -4.5273318107774685e-008;
createNode animCurveTA -n "QuickRigCharacter_RightHand_rotateX";
	rename -uid "28E7B1F9-4DE2-AC64-8639-CA99B469016D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0
		 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0
		 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0;
createNode animCurveTA -n "QuickRigCharacter_RightHand_rotateY";
	rename -uid "7EB84CDB-431E-608C-4F63-27A1D3E895BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 7.8870792647120895e-005 2 8.2629343890935989e-005
		 3 7.9452128440651626e-005 4 7.7007992408178994e-005 5 8.0952133698715111e-005 6 8.1118508874233433e-005
		 7 7.0732773817643954e-005 8 7.3562525339633094e-005 9 7.6414452327596674e-005 10 6.1850127899327643e-005
		 11 6.2325423748094079e-005 12 7.8558722612473509e-005 13 7.9612261886587363e-005
		 14 7.7382423901651112e-005 15 7.8185519255551816e-005 16 6.1031901951241693e-005
		 17 7.5580865002767742e-005 18 6.527991008337995e-005 19 7.1154863913247909e-005 20 0
		 21 6.9509403916993793e-005 22 0 23 5.9918063712604343e-005 24 7.8607990241327225e-005
		 25 7.4232161188746992e-005 26 7.3572398908552423e-005 27 7.7131880080657118e-005
		 28 6.0521698424714844e-005 29 8.8373500552899723e-005 30 6.5931313287902852e-005
		 31 7.7465636540570963e-005 32 8.6455114806489441e-005 33 7.4553960473813224e-005
		 34 7.2768691810767491e-005 35 7.7270255411964321e-005 36 7.5943114247176702e-005
		 37 8.2023545320707248e-005 38 8.7407811714179364e-005 39 7.8950270801175139e-005
		 40 7.3987642219375941e-005 41 7.8870792647120895e-005;
createNode animCurveTA -n "QuickRigCharacter_RightHand_rotateZ";
	rename -uid "4F26E5BB-41D9-AD15-6860-87A65869A93A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.00020671151858530284 2 -0.00020274088603446414
		 3 -0.00020646124732652614 4 -0.00020798559427719117 5 -0.0002048265372609446 6 -0.00021040159987911338
		 7 -0.00020174064200247172 8 -0.00020344144070183508 9 -0.00020107784426324268 10 -0.00019104375751432414
		 11 -0.00019394849914606589 12 -0.00018295326180292252 13 -0.00018818408791390368
		 14 -0.0001852900024524769 15 -0.00018883896107720898 16 -0.0001865877536736714 17 -0.00018156122120149994
		 18 -0.0001768613137330937 19 -0.00018103541863060202 20 -0.00016610110212867887 21 -0.00017754231320390589
		 22 -0.0001835544467144205 23 -0.00017721950090393381 24 -0.0001803124374271668 25 -0.00018249954489951267
		 26 -0.00016885320396699957 27 -0.00017568866592122288 28 -0.0001866506180028336 29 -0.00019652793777417729
		 30 -0.00019154225926771678 31 -0.00019642316677153534 32 -0.00019711521784828513
		 33 -0.00019489547069948362 34 -0.00019306847652905237 35 -0.0001990735809009796 36 -0.00020143152631166316
		 37 -0.0002028234640782444 38 -0.00020563388263647534 39 -0.00020714487950005935 40 -0.00020766974593172807
		 41 -0.00020671151858530284;
createNode animCurveTU -n "QuickRigCharacter_RightHand_scaleX";
	rename -uid "335E0420-47E4-5467-86D0-E09C8E6B3D67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001391901292 2 0.99999992755405076
		 3 1.0000000154201629 4 0.99999983394167613 5 0.99999994775051815 6 1.0000003477483423
		 7 1.0000003318677473 8 0.99999995676184861 9 1.0000003734116791 10 0.99999993977804158
		 11 1.0000001106032121 12 1.0000000067566837 13 1.0000000597375194 14 1.0000004294281952
		 15 1.0000002695157488 16 1.0000002749432817 17 1.0000001591347467 18 1.0000000577852022
		 19 1.0000003172899896 20 0.99999994798743552 21 1.0000001789102786 22 1.0000000219202074
		 23 1.0000000237224975 24 1.0000002452925736 25 1.0000001092656221 26 1.0000001135239807
		 27 1.0000001189682237 28 1.0000000053125058 29 1.0000002519163829 30 1.0000003181505772
		 31 0.99999984225829419 32 1.0000003086852001 33 1.0000000282268959 34 0.99999976379288058
		 35 1.0000000039111008 36 1.0000002866152196 37 1.0000000637933382 38 1.0000003826018453
		 39 0.99999993136785303 40 1.0000002163834067 41 1.0000001391901292;
createNode animCurveTU -n "QuickRigCharacter_RightHand_scaleY";
	rename -uid "C63D21BE-4B0B-7994-AE43-E9BDDC20EC3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000001948837289 2 1.0000000191342893
		 3 1.000000047210027 4 0.9999998538810928 5 0.99999993625606576 6 1.000000314141241
		 7 1.0000003796561665 8 0.99999994648737878 9 1.0000003518075053 10 0.99999994419818705
		 11 1.0000000548269505 12 0.99999997637784122 13 1.0000000877405859 14 1.0000004115396766
		 15 1.0000003033273648 16 1.0000002624212838 17 1.0000002858963077 18 1.0000000652804326
		 19 1.0000003762538392 20 0.99999989787457033 21 1.0000001809934826 22 1.0000000399433333
		 23 1.0000001368851057 24 1.0000002611302299 25 1.000000205232384 26 1.0000000578454404
		 27 1.0000001182529576 28 1.0000000158803901 29 1.0000002467380749 30 1.0000002735948925
		 31 0.99999999129468264 32 1.0000001896278468 33 0.99999997274938379 34 0.9999998456053667
		 35 0.99999994623273447 36 1.0000002737600073 37 1.0000000352810412 38 1.0000003760127363
		 39 0.9999999110158575 40 1.0000003051173734 41 1.0000001948837289;
createNode animCurveTU -n "QuickRigCharacter_RightHand_scaleZ";
	rename -uid "470248C3-4F05-CBE0-E2E6-598480787D44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000002463189839 2 0.99999997460791401
		 3 1.0000000618129206 4 0.99999985711616446 5 0.99999997623476844 6 1.0000002996111339
		 7 1.0000003777561164 8 0.99999995637815964 9 1.0000003741077894 10 0.99999996461259111
		 11 1.0000001078557106 12 0.9999999996456258 13 1.0000001140102643 14 1.0000004037530918
		 15 1.0000001789919064 16 1.0000002663414465 17 1.0000001976870807 18 1.0000000822254549
		 19 1.000000406500374 20 0.99999994762632327 21 1.0000001619106955 22 1.0000000975175252
		 23 1.0000001267301917 24 1.0000002693396646 25 1.0000002494030376 26 1.0000001032090946
		 27 1.0000000737015129 28 1.0000000103894722 29 1.0000002354398811 30 1.0000003141482314
		 31 0.9999999447055592 32 1.0000002556026688 33 0.99999992566090867 34 0.99999979656045312
		 35 1.0000000048477207 36 1.0000002815751878 37 1.0000000750849913 38 1.0000003649462259
		 39 0.99999994893201549 40 1.0000003041008512 41 1.0000002463189839;
createNode animCurveTL -n "QuickRigCharacter_Neck_translateX";
	rename -uid "ACC9831F-4EAA-9EF9-E7F1-3EB80F346B11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.23965124783101871 2 0.23965404815097657
		 3 0.23965141484519351 4 0.23965421471655987 5 0.23965113026509458 6 0.2396512154304854
		 7 0.23965086994435311 8 0.23965110560620745 9 0.23965146666858758 10 0.23965081859739384
		 11 0.23965075132854807 12 0.23965116421555321 13 0.23965083125766129 14 0.23965405442013038
		 15 0.23965174076826273 16 0.23965403109182987 17 0.23965407207525616 18 0.23965074336330916
		 19 0.23965240811490091 20 0.23965301070395328 21 0.23965157136916559 22 0.23965079565793276
		 23 0.2396509009660838 24 0.23965080404816561 25 0.23965082940542687 26 0.23965345779607816
		 27 0.23965419212123651 28 0.2396539559373892 29 0.23965225678825108 30 0.23965074143739443
		 31 0.23965142010003262 32 0.23965085541214648 33 0.23965053720513141 34 0.23965068861689345
		 35 0.23965073035057544 36 0.23965071680947489 37 0.23965315956810584 38 0.23965076516277223
		 39 0.23965071159383555 40 0.23965340005956492 41 0.23965124783101871;
createNode animCurveTL -n "QuickRigCharacter_Neck_translateY";
	rename -uid "502BFD5A-4900-B8E0-EAEC-E8B1E910F5A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -7.4254428277242819e-008 2 1.1102545915520068e-007
		 3 1.9656497126874229e-007 4 7.4822568230104033e-008 5 3.3853712402276415e-008 6 -1.6965397577450859e-007
		 7 2.2295634920510566e-008 8 7.7548481712597096e-007 9 8.5986245217384298e-008 10 7.317710434051606e-008
		 11 8.1883676728011782e-009 12 7.7245402216874478e-008 13 1.0482167098757601e-008
		 14 -1.3893801671827079e-007 15 1.5395348064828341e-007 16 4.1239352626121218e-008
		 17 -1.6443416352984742e-008 18 -2.4214761698004851e-008 19 -1.4560912440231278e-008
		 20 3.5723963307532359e-008 21 5.4076190448171246e-007 22 6.126490266211704e-009 23 -6.0244194877157041e-009
		 24 -8.1104170508439207e-008 25 8.0638739241578609e-009 26 2.5087994988126637e-008
		 27 1.6196988994465755e-007 28 2.5822825033827713e-008 29 9.2877422872561515e-008
		 30 -4.6012503496228872e-008 31 -3.3654113629211223e-008 32 -4.7908418849829104e-008
		 33 7.2405670756836578e-008 34 1.4793107894206515e-008 35 6.0986067751400693e-010
		 36 2.4654356138853474e-008 37 1.2703378221345929e-007 38 9.4624400333032096e-008
		 39 3.2368301923213491e-008 40 5.5696423721940392e-008 41 -7.4254428277242819e-008;
createNode animCurveTL -n "QuickRigCharacter_Neck_translateZ";
	rename -uid "2703FCC1-4E3E-589C-6FF6-6FBEE0EC03B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -8.1935626141671495e-008 2 -4.1167662168106745e-007
		 3 -2.5252075168680223e-008 4 -3.7278267178919577e-007 5 -2.2950795184328854e-008
		 6 -1.4468021440450231e-007 7 -4.2152684152085843e-008 8 2.0709313705680188e-007 9 -6.0899403795389164e-008
		 10 -3.200477578069183e-008 11 -1.8878267926680794e-009 12 -2.5631787414770457e-008
		 13 2.9192736805683238e-009 14 1.6497854922192801e-008 15 -9.6876232031917202e-008
		 16 2.2336666880562461e-008 17 -8.938679965098117e-009 18 -8.3804922414998376e-008
		 19 -2.3771011541384723e-008 20 -1.5615063855278778e-008 21 -1.8882697268907123e-007
		 22 9.3769202536009294e-009 23 -8.0019281849530447e-008 24 1.8675744559715212e-008
		 25 1.5887830695504591e-008 26 -2.3291854276408232e-008 27 -1.9492685803257358e-008
		 28 -7.1171149067517096e-008 29 -3.2549478850008027e-008 30 4.1188311228346205e-009
		 31 -5.5605860813656703e-008 32 4.2952294698750394e-008 33 -2.8881619940079875e-009
		 34 -3.3310481128978611e-009 35 2.9741525331417053e-008 36 3.6953851747512092e-008
		 37 -2.2814801333481683e-007 38 1.0466412092569044e-009 39 3.5304997432206165e-008
		 40 -2.7539552743149898e-007 41 -8.1935626141671495e-008;
createNode animCurveTA -n "QuickRigCharacter_Neck_rotateX";
	rename -uid "5DCF1C6A-49B2-32E3-E752-24B69472F7FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -33.738876391276449 2 -33.795989506903936
		 3 -33.988661900063128 4 -34.360400382419634 5 -34.980808371608994 6 -35.968877749881315
		 7 -37.543046851307061 8 -40.074708011897684 9 -43.534608436635303 10 -46.380556104290278
		 11 -48.069966722142304 12 -49.627655830786217 13 -51.946293214372169 14 -54.532037826403723
		 15 -56.329583974205448 16 -57.416648727478702 17 -58.087800480064672 18 -58.504369144625826
		 19 -58.751928809892576 20 -58.879355453458111 21 -58.916903749936559 22 -58.866603292118903
		 23 -58.696585520251389 24 -58.367963332558716 25 -57.818230712839203 26 -56.940356792626254
		 27 -55.535064513407143 28 -53.258311613233523 29 -50.101840057426109 30 -47.438783103475913
		 31 -45.795173696747646 32 -44.191885858536438 33 -41.690079479307855 34 -38.801021424523313
		 35 -36.748579044722703 36 -35.492440013899547 37 -34.711429578665552 38 -34.224003687946116
		 39 -33.933322750271856 40 -33.7833429430937 41 -33.738876391276449;
createNode animCurveTA -n "QuickRigCharacter_Neck_rotateY";
	rename -uid "DDA85DB3-49B2-D64E-6BEF-E2894D43AA1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -5.091012176505699 2 -5.0928533995723804
		 3 -5.0974740081319654 4 -5.1078639398578449 5 -5.1248225195470605 6 -5.1538488954960293
		 7 -5.2030773961401797 8 -5.2909653585004408 9 -5.4342668224501933 10 -5.5859107602881322
		 11 -5.7080975949289412 12 -5.8656091675288886 13 -6.1587175045423841 14 -6.536453176289859
		 15 -6.8212714366451195 16 -7.0012412901928798 17 -7.1152701908754086 18 -7.1870659072383143
		 19 -7.2304865156078053 20 -7.2530077160002202 21 -7.2597809597600875 22 -7.2606125360272271
		 23 -7.2640966485347525 24 -7.2706175529401786 25 -7.2814144671106442 26 -7.2983653292059634
		 27 -7.3241818723483147 28 -7.3630128492068234 29 -7.409186475967668 30 -7.4369308594036951
		 31 -7.4439730933932724 32 -7.3549599214383292 33 -6.9988122297716231 34 -6.4084738382833404
		 35 -5.9126607434513669 36 -5.5837397461017684 37 -5.3698301617205786 38 -5.2319917239134437
		 39 -5.1481342587527266 40 -5.10443805195934 41 -5.091012176505699;
createNode animCurveTA -n "QuickRigCharacter_Neck_rotateZ";
	rename -uid "C13A1B07-4A4E-6D51-7779-FCB04E9F3412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -6.4375439500765452 2 -6.4165789459214215
		 3 -6.3464115648707198 4 -6.2104399874560174 5 -5.9840914538006693 6 -5.6238126583746926
		 7 -5.0508765129361501 8 -4.1322088072471761 9 -2.8822192779314535 10 -1.8640799463242859
		 11 -1.2686668143893902 12 -0.73248242288764298 13 0.049099906015709745 14 0.9068264479408874
		 15 1.4960575102623954 16 1.8508779454074409 17 2.0688483734737191 18 2.2033266953823647
		 19 2.2836102549314092 20 2.3248969111487945 21 2.3364551392019353 22 2.324828929471757
		 23 2.2845470406141022 24 2.2062303749834635 25 2.0739070712733758 26 1.8603649004368159
		 27 1.5124499059339043 28 0.93253573007794577 29 0.08662584891161651 30 -0.68812326310626515
		 31 -1.2225907379484973 32 -1.8197184589588908 33 -2.844966099983977 34 -4.1060044868689749
		 35 -5.0348582365484198 36 -5.6142270410817536 37 -5.9786518443750403 38 -6.2078339637149051
		 39 -6.3451970126991704 40 -6.4163250094598281 41 -6.4375439500765452;
createNode animCurveTU -n "QuickRigCharacter_Neck_scaleX";
	rename -uid "503EBE10-401A-5137-94C0-F0838BB26B7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000363522661 2 1.0000000698583262
		 3 0.9999999837314868 4 1.0000000918395671 5 1.0000000914399019 6 1.0000000557337645
		 7 1.0000001075780636 8 0.99999997827189946 9 1.0000001122825892 10 0.99999994823851879
		 11 0.99999997948286656 12 1.0000001026502754 13 1.0000001093193318 14 1.0000000793033652
		 15 1.0000001502169305 16 0.99999999725603672 17 1.000000079117177 18 1.000000003071748
		 19 1.000000158188973 20 1.000000100558132 21 1.0000001409353314 22 1.0000000975519916
		 23 1.0000000996225022 24 0.99999995915882101 25 1.0000000759285157 26 1.000000012610601
		 27 1.0000000200235586 28 1.0000000900246677 29 1.0000000348414873 30 1.0000000801001365
		 31 1.000000028666286 32 1.0000000078257438 33 1.0000000875309769 34 1.0000000010182541
		 35 1.0000000096771955 36 1.0000000379050924 37 0.99999997684543296 38 1.0000001019490612
		 39 1.0000000598243244 40 1.0000000998475338 41 1.0000000363522661;
createNode animCurveTU -n "QuickRigCharacter_Neck_scaleY";
	rename -uid "0ADEC9E1-4E6C-DF6B-51FA-86A008C4CF33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999998135502566 2 1.0000000637899982
		 3 0.99999999722321686 4 1.0000001361861615 5 1.0000000501508703 6 1.0000000326000211
		 7 1.0000001207406009 8 0.99999992915785518 9 1.0000001015903903 10 0.99999999836929665
		 11 1.0000000138217071 12 1.0000000942833873 13 1.000000091110806 14 1.0000000748659137
		 15 1.0000001099593041 16 1.0000000049203943 17 1.0000000493787287 18 1.0000000263591844
		 19 1.0000000081732132 20 1.0000000509799216 21 1.0000000311486441 22 1.0000001178650308
		 23 1.00000008363695 24 0.99999990717827703 25 1.0000001039928323 26 0.99999996693174731
		 27 0.99999998369163834 28 1.0000000380016609 29 1.0000000132702347 30 1.0000000718555397
		 31 1.0000000388701098 32 1.0000000206758135 33 1.0000001002300494 34 1.0000000264631139
		 35 1.0000000896776928 36 1.0000000679770364 37 0.99999991793191612 38 1.0000000605954802
		 39 1.0000000192980798 40 1.0000001045035429 41 0.99999998135502566;
createNode animCurveTU -n "QuickRigCharacter_Neck_scaleZ";
	rename -uid "29EBA33B-4DB5-E0C2-8F9E-278AE61F90CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999996568527327 2 1.0000000831798614
		 3 0.99999997365259585 4 1.0000002780701389 5 1.0000002165814477 6 0.99999999023022113
		 7 1.0000001215566068 8 1.0000000417311561 9 1.0000001992295229 10 0.99999996715826489
		 11 0.9999999813943331 12 1.0000001952289657 13 1.0000002381752648 14 1.0000001372920984
		 15 1.000000277577477 16 1.000000002390603 17 1.0000001551314868 18 1.0000000920771885
		 19 1.0000001227228821 20 1.0000000861008063 21 1.0000002224567881 22 1.0000001972248436
		 23 1.0000001879778746 24 1.0000000055042275 25 1.0000001640413219 26 0.99999999261391148
		 27 1.0000000397125064 28 1.0000001464195234 29 1.0000000654722099 30 1.0000000744729838
		 31 1.0000000940219964 32 0.99999998761208353 33 1.0000001195272716 34 1.0000000393618012
		 35 1.0000000810028744 36 1.0000001312622242 37 0.999999927031619 38 1.0000002096055021
		 39 1.0000000402910483 40 1.0000001762926505 41 0.99999996568527327;
createNode animCurveTL -n "QuickRigCharacter_Head_translateX";
	rename -uid "0CD43D12-4AA7-D83C-2403-7692D1F23B43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.091316159566261351 2 0.091316417282742465
		 3 0.091316141162759545 4 0.091316488655925246 5 0.091316100185571972 6 0.091316167147804633
		 7 0.091316102719008543 8 0.091315693713528961 9 0.091316146213902563 10 0.091315999502192685
		 11 0.091316341758187744 12 0.091316238394633584 13 0.091316073883902504 14 0.091316488335400556
		 15 0.091316105828412902 16 0.09131636162216808 17 0.091316369707567444 18 0.091316094922268859
		 19 0.091316269215280951 20 0.091316311250719762 21 0.091315931164558037 22 0.091316295054380422
		 23 0.09131619695585784 24 0.09131618862953346 25 0.091316203542198909 26 0.091316300994077587
		 27 0.091316359890190602 28 0.091316440908877042 29 0.091316762420698153 30 0.091316248467276748
		 31 0.091316268596367822 32 0.09131604854275778 33 0.0913163311129324 34 0.091316109088843689
		 35 0.091316053035649811 36 0.091316060226752566 37 0.091316164897104382 38 0.091316076590944845
		 39 0.091315974930586921 40 0.09131635490320747 41 0.091316159566261351;
createNode animCurveTL -n "QuickRigCharacter_Head_translateY";
	rename -uid "1B053D4A-4B5F-6561-F68D-0F98946C978C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 8.7928424905570065e-008 2 1.4267809958390387e-007
		 3 1.1538713086345354e-007 4 1.3432767532073342e-007 5 4.5177626457615362e-008 6 1.6668242259321175e-007
		 7 7.2813031373186727e-008 8 9.7529601923440622e-008 9 6.8727040787308631e-008 10 9.1863172837491911e-008
		 11 2.1974043367123385e-008 12 1.1100276637421303e-007 13 9.8232977059353742e-008
		 14 1.381433007452415e-007 15 1.3947254583257519e-007 16 5.8078108580161824e-008 17 1.8691095224454557e-007
		 18 2.1052206808036545e-007 19 1.4824534716240123e-007 20 9.1440855953806024e-008
		 21 1.6700893176846421e-007 22 1.6117143218252749e-007 23 1.8196125505909322e-007
		 24 6.0466115279211865e-008 25 1.2829542928471937e-007 26 2.3025940343757156e-007
		 27 1.5430516867809273e-007 28 1.0332969576865026e-007 29 5.6717379983695085e-008
		 30 1.6490230123622495e-008 31 8.6599855073643544e-008 32 9.5591150834906109e-008
		 33 8.2850748501783752e-008 34 3.0579965279997625e-008 35 1.4748758450977561e-007
		 36 4.1353456756709761e-008 37 1.2844409666534773e-007 38 1.5453757335137652e-007
		 39 4.343428335218391e-008 40 9.7085682710940095e-008 41 8.7928424905570065e-008;
createNode animCurveTL -n "QuickRigCharacter_Head_translateZ";
	rename -uid "4F5E23C1-4798-7EDC-9AE4-1C8ED154B6C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 8.4337506223164388e-008 2 1.0083146449346714e-007
		 3 9.0569993744793461e-008 4 1.432788347699443e-007 5 6.7835486703415878e-008 6 2.3227752436127957e-007
		 7 8.1079119453875143e-008 8 6.3691183029845894e-008 9 2.666577891830002e-008 10 9.5940902085089873e-008
		 11 -1.058824253163948e-008 12 7.669274950217186e-008 13 4.3645099623290663e-008 14 1.2602214255252875e-007
		 15 1.4657507655613244e-007 16 3.2924901702813257e-008 17 1.4378817041915682e-007
		 18 1.7892092436966324e-007 19 9.8787572824221576e-008 20 4.7596258880844287e-008
		 21 1.0887558723027268e-007 22 1.1382344403898515e-007 23 1.0582643206191733e-007
		 24 2.6962336647784469e-008 25 9.9931073762604684e-008 26 1.9434612404722885e-007
		 27 1.926339113111908e-007 28 1.0780791839692938e-007 29 1.9944927274195835e-008 30 -2.3525340324681566e-008
		 31 6.5594796154755382e-008 32 8.3062320257454303e-008 33 1.1778437134069009e-007
		 34 4.5571232405450246e-008 35 2.6100842418941285e-007 36 5.1473768749588087e-008
		 37 2.2562139179171936e-007 38 1.8494627603615755e-007 39 3.3965589310014369e-008
		 40 5.844294236112546e-008 41 8.4337506223164388e-008;
createNode animCurveTA -n "QuickRigCharacter_Head_rotateX";
	rename -uid "3C09646A-4D1F-966D-E845-4FA5F81AAD02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 73.048045365715041 2 72.987846431336237
		 3 72.784945643473151 4 72.393356781875823 5 71.73987919146559 6 70.699379577950594
		 7 69.041783514390957 8 66.37683425292559 9 62.737074526484712 10 59.746366584410062
		 11 57.974242700231009 12 56.344662027063549 13 53.924572947518932 14 51.230734862784246
		 15 49.360142604464571 16 48.229594654832638 17 47.532047928655849 18 47.099066439630022
		 19 46.841845119309262 20 46.709455645233092 21 46.670384811474612 22 46.723077659035148
		 23 46.900927553756446 24 47.244839888163042 25 47.820015779395391 26 48.738773164636484
		 27 50.209220820635352 28 52.592092037007298 29 55.895929167480027 30 58.683940185501967
		 31 60.405430232596984 32 62.085625735600118 33 64.708373717144383 34 67.738144357310375
		 35 69.890804559713729 36 71.208508824001939 37 72.027842586147372 38 72.53911873693923
		 39 72.844066554100465 40 73.001467931239958 41 73.048045365715041;
createNode animCurveTA -n "QuickRigCharacter_Head_rotateY";
	rename -uid "7D4C06B3-4D28-35C3-AA8B-159ED5AB5450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 24.423385573720328 2 24.409361026636155
		 3 24.36201442873357 4 24.270372598553319 5 24.116929606679186 6 23.871450514553398
		 7 23.477699097133499 8 22.837193372279028 9 21.942844591486548 10 21.178862774340892
		 11 20.698559866132879 12 20.218247877682796 13 19.454248966533886 14 18.559948039605636
		 15 17.919544427853094 16 17.525868717719614 17 17.280470418165745 18 17.127060572520161
		 19 17.03545563560326 20 16.988113495217771 21 16.974091813042822 22 16.98463754383728
		 23 17.020408258468102 24 17.089974675288911 25 17.207183862939697 26 17.396326726649239
		 27 17.703513236510421 28 18.213600326830569 29 18.952739756194756 30 19.623173512968837
		 31 20.080137616878044 32 20.583832159960117 33 21.441450169992216 34 22.490981455224034
		 35 23.261779137477902 36 23.741978718881342 37 24.043691204423276 38 24.233303852986033
		 39 24.346976275749245 40 24.40589281221051 41 24.423385573720328;
createNode animCurveTA -n "QuickRigCharacter_Head_rotateZ";
	rename -uid "7599E132-4EE4-97C2-4FED-FCB6A650C01D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -3.1678477359147199 2 -3.1833980673985107
		 3 -3.2358743546929416 4 -3.337404794284121 5 -3.5074436870310781 6 -3.7794463666427598
		 7 -4.2158268082177592 8 -4.9257358686701211 9 -5.9171479978461594 10 -6.7642154656082987
		 11 -7.2968210037065573 12 -7.8294864553819243 13 -8.6768842646339994 14 -9.6689076548080486
		 15 -10.379341185332597 16 -10.816091233679639 17 -11.08835177320471 18 -11.258555331477936
		 19 -11.360183636711378 20 -11.412717885174319 21 -11.42826240719269 22 -11.416564326399362
		 23 -11.376881686048145 24 -11.29969146819189 25 -11.169639318618234 26 -10.959805312844212
		 27 -10.619016692402395 28 -10.053208063226961 29 -9.2334175782173027 30 -8.4899416466957138
		 31 -7.9832179464690904 32 -7.4246981947011621 33 -6.4737599922221563 34 -5.3101154557920704
		 35 -4.4555921119463981 36 -3.9232292419804784 37 -3.5887691091990104 38 -3.3785657870943155
		 39 -3.2525559845135943 40 -3.1872435088618927 41 -3.1678477359147199;
createNode animCurveTU -n "QuickRigCharacter_Head_scaleX";
	rename -uid "3DA0AFF7-4198-6F70-91D7-E8BE08CFC43F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1.0000000433549823 2 1.0000002450429846
		 3 1.0000000151221717 4 0.99999999008893947 5 1.0000001413298094 6 0.99999999560072939
		 7 0.99999997183282874 8 0.99999998136797663 9 0.99999998511440724 10 1.0000000453568898
		 11 1.0000001149463666 12 1.0000000528627053 13 1.0000000246780769 14 1.000000025611073
		 15 1.0000000718701247 16 1.0000002374330077 17 1.0000000396206012 18 1.000000145571935
		 19 1.0000000997433052 20 1.0000001000636005 21 1.00000012633337 22 1.0000000844540771
		 23 1.0000001009621475 24 0.99999985185217921 25 1.0000000646788321 26 0.9999999888418849
		 27 1.0000000188999996 28 1.0000000532621074 29 0.99999999264974904 30 1.0000001378451118
		 31 0.99999990849641751 32 1.0000001768739957 33 1.0000001169550787 34 0.99999999158061725
		 35 1.0000000364931754 36 0.99999999422367414 37 1.0000001795062305 38 1.0000000543025374
		 39 1.0000001801924963 40 1.0000002050888201 41 1.0000000433549823;
createNode animCurveTU -n "QuickRigCharacter_Head_scaleY";
	rename -uid "6710D2DD-4179-DD14-C7C0-87878E844A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.9999999887599168 2 1.0000001848699622
		 3 1.0000000164158269 4 1.0000000557747053 5 1.000000086843976 6 0.99999993588973446
		 7 0.99999994722055185 8 1.0000000635623996 9 1.0000000111486358 10 1.0000000504284832
		 11 1.0000000676758933 12 1.000000015786088 13 1.0000000052141589 14 1.0000000363411414
		 15 1.0000000075876174 16 1.000000192654148 17 0.99999996991669771 18 1.0000000835788037
		 19 0.99999998982530414 20 1.000000171301233 21 1.0000001415534254 22 1.0000001240169665
		 23 1.0000001365928888 24 0.99999999243823134 25 1.0000001449803804 26 0.99999989285112079
		 27 1.0000000410618453 28 1.0000000051256308 29 0.99999996157498716 30 1.0000001090070434
		 31 0.99999993835511125 32 1.0000001259017104 33 1.0000001107421506 34 0.99999997118348583
		 35 1.0000000579392738 36 0.99999995230957006 37 1.0000001975235377 38 1.0000000834104676
		 39 1.0000001488303321 40 1.0000002125198213 41 0.9999999887599168;
createNode animCurveTU -n "QuickRigCharacter_Head_scaleZ";
	rename -uid "5B1DF213-4984-F0F6-A328-3CBAE1B80513";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.99999993776318519 2 1.0000002188398198
		 3 1.0000001011315052 4 1.0000000614337987 5 1.000000224068788 6 1.0000000038877292
		 7 0.99999998293004211 8 1.0000000883596374 9 1.0000000120819341 10 1.000000126405227
		 11 1.0000001823033542 12 1.0000000211360613 13 0.99999998917553867 14 1.0000000060543763
		 15 1.0000000568816243 16 1.0000002193598276 17 1.0000000496465686 18 1.0000000398780979
		 19 1.0000000963045503 20 1.0000001325337251 21 1.0000001096474871 22 1.0000001005560779
		 23 1.0000001841328374 24 0.99999992979327823 25 1.0000001667785487 26 0.99999999529456951
		 27 1.0000000930794066 28 0.99999998820050862 29 0.9999999354199075 30 1.0000001269108976
		 31 0.99999995480776493 32 1.0000001782475274 33 1.0000001430337047 34 0.99999996957594861
		 35 1.0000000386160504 36 0.9999999966557872 37 1.0000001513593546 38 1.0000000839411349
		 39 1.0000002031881301 40 1.0000001861200338 41 0.99999993776318519;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Reference_translateX";
	rename -uid "40654814-44AF-7D36-B23F-D79B0BD4FEE0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -7.4505805969238281e-008;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Reference_translateY";
	rename -uid "B434929A-408B-44CD-A753-A4A5362B61A2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -0.0033457183744758368;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Reference_translateZ";
	rename -uid "4DFBCBC5-4DC5-D93F-5517-A1884EB1D64C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.015766620635986328;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Reference_rotateX";
	rename -uid "7F72BE35-49F9-C90F-5819-BA8374FD49E8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Reference_rotateY";
	rename -uid "621F67BC-4311-E424-6716-CD977A2320C2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Reference_rotateZ";
	rename -uid "0037E86D-4971-AF1F-1192-658ED6EB1115";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode HIKEffector2State -n "HIKEffector2State1";
	rename -uid "2E47EB4C-4173-8C8D-6636-1D8ADFB7B368";
	setAttr ".ihi" 0;
	setAttr ".EFF" -type "HIKEffectorState" ;
	setAttr ".EFFNA" -type "HIKEffectorState" ;
createNode HIKPinning2State -n "HIKPinning2State1";
	rename -uid "CE00A08E-4E2A-BFFE-6F5E-70B9E3F646F2";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
	setAttr ".OutputEffectorStateNoAux" -type "HIKEffectorState" ;
createNode keyingGroup -n "QuickRigCharacter_HipsBPKG2";
	rename -uid "FF6E0055-48B0-FBF7-89FF-B99B68FDA47D";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 2 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HipsEffector_translateX";
	rename -uid "F8E02454-4BE0-F376-D067-488B8893B61F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.024924528002738953 11 -0.024924504259859738
		 21 -0.024924631118774413 31 -0.024924449920654297 41 -0.024924528002738953 51 -0.024924504259859738
		 61 -0.024924631118774413 71 -0.024924449920654297 81 -0.024924528002738953;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HipsEffector_translateY";
	rename -uid "F579E95D-49BC-9EA8-6D4F-57A00CE23F92";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.82226905821822582 11 0.76907139809292002
		 21 0.84712108995125168 31 0.75131267930672041 41 0.82226905821822582 51 0.76907139809292002
		 61 0.84712108995125168 71 0.75131267930672041 81 0.82226905821822582;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HipsEffector_translateZ";
	rename -uid "E0950B1E-4785-1277-92E4-2BBFE7452AF5";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.0027439379692077636 11 0.0027438762784004213
		 21 0.0027438667416572571 31 0.0027438858151435852 41 0.0027439379692077636 51 0.0027438762784004213
		 61 0.0027438667416572571 71 0.0027438858151435852 81 0.0027439379692077636;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode HIKControlSetNode -n "QuickRigCharacter_ControlRig";
	rename -uid "8EA6AC77-4D8C-350E-E4FA-B789D7AC4466";
	setAttr ".ihi" 0;
createNode HIKState2Effector -n "HIKState2Effector1";
	rename -uid "47B7D794-436D-A71B-E7BE-5EADFFB63632";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 0.92037087678909302 0.1661415696144104 -0.35399794578552246 0
		 -0.157379150390625 0.98608148097991943 0.053621575236320496 0 0.35797953605651855 0.0063601657748222351 0.9337078332901001 0
		 -2.4924583435058594 81.892333984375 1.8510558605194092 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 0.98574608564376831 -0.073120132088661194 -0.15152120590209961 0
		 0.16799993813037872 0.47605639696121216 0.86321884393692017 0 0.0090139433741569519 -0.8763698935508728 0.48155477643013 0
		 3.9794416427612305 29.549129486083984 -59.526725769042969 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 0.9454948902130127 -0.13867057859897614 0.29463517665863037 0
		 -0.16028310358524323 0.58942019939422607 0.79176586866378784 0 -0.28345853090286255 -0.79583567380905151 0.53506720066070557 0
		 -18.006412506103516 35.181468963623047 0.82896804809570313 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" -0.8928413987159729 0.4495517909526825 -0.027155309915542603 0
		 0.24284717440605164 0.53133714199066162 0.81160736083984375 0 0.37928813695907593 0.71804213523864746 -0.5835719108581543 0
		 -0.251617431640625 133.49467468261719 43.885196685791016 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 0.87172377109527588 0.47540652751922607 0.11868542432785034 0
		 -0.30366122722625732 0.33404085040092468 0.89230406284332275 0 0.38456135988235474 -0.81388282775878906 0.4355539083480835 0
		 -54.322685241699219 115.30291748046875 -2.989600658416748 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 0.99565029144287109 -0.074978478252887726 0.055304780602455139 0
		 -0.0031790584325790405 0.56591284275054932 0.82445889711380005 0 -0.093114361166954041 -0.8210485577583313 0.56321293115615845 0
		 3.8319525718688965 55.804027557373047 -21.276865005493164 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 0.97637474536895752 -0.20167329907417297 0.077593483030796051 0
		 0.076632946729660034 0.65891659259796143 0.7483026385307312 0 -0.20204025506973267 -0.72467738389968872 0.65880417823791504 0
		 -14.451116561889648 65.75115966796875 35.545661926269531 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" -0.89283919334411621 0.4495561420917511 -0.027156688272953033 0
		 0.42030397057533264 0.81004428863525391 -0.40886795520782471 0 -0.16181096434593201 -0.37646740674972534 -0.91218942403793335 0
		 17.666187286376953 124.47282409667969 44.430187225341797 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 0.87172240018844604 0.47540998458862305 0.11868511140346527 0
		 -0.30366265773773193 0.33404096961021423 0.89230382442474365 0 0.38456439971923828 -0.81388115882873535 0.43555513024330139 0
		 -36.828659057617188 124.84361267089844 -0.60778141021728516 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 0.97953325510025024 -0.056839447468519211 0.19309164583683014 0
		 0.031321536749601364 0.9906582236289978 0.13272441923618317 0 -0.19883175194263458 -0.12396002560853958 0.97216272354125977 0
		 -3.677910327911377 92.242584228515625 3.626652717590332 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 0.77084285020828247 -0.27169623970985413 0.57617902755737305 0
		 -0.086403839290142059 0.85153180360794067 0.51713413000106812 0 -0.63113820552825928 -0.44841331243515015 0.63292169570922852 0
		 -2.4284818172454834 120.7410888671875 13.587202072143555 1;
	setAttr ".LeftFootEffectorGXM[0]" -type "matrix" 0.93369042873382568 -0.2127966582775116 -0.28799381852149963 0
		 0.31497463583946228 0.87064367532730103 0.37785086035728455 0 0.17033451795578003 -0.44350633025169373 0.87993687391281128 0
		 2.6576004028320312 17.091085433959961 -62.114311218261719 1;
	setAttr ".RightFootEffectorGXM[0]" -type "matrix" 0.9454951286315918 -0.13867011666297913 0.29463487863540649 0
		 -0.16028311848640442 0.5894201397895813 0.79176598787307739 0 -0.28345799446105957 -0.79583579301834106 0.53506731986999512 0
		 -19.401149749755859 22.550765991210938 -0.64269924163818359 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 0.45667374134063721 0.20051135122776031 0.86674350500106812 0
		 0.42030590772628784 0.81005263328552246 -0.40884923934936523 0 -0.78408676385879517 0.55100810527801514 0.28565368056297302 0
		 7.7183661460876465 120.10504150390625 25.549722671508789 1;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 0.94769477844238281 0.0093229860067367554 0.31904235482215881 0
		 -0.30367565155029297 0.334074467420578 0.89228671789169312 0 -0.098265089094638824 -0.94250065088272095 0.31943175196647644 0
		 -16.184810638427734 125.04669189453125 6.3419890403747559 1;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 0.99967497587203979 0.022947980090975761 -0.011132181622087955 0
		 -0.021827021613717079 0.99551248550415039 0.092082075774669647 0 0.013195320032536983 -0.09180913120508194 0.9956895112991333 0
		 -2.1828246116638184 138.37887573242187 22.981979370117188 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 0.98560225963592529 -0.13758382201194763 0.098280273377895355 0
		 0.054416459053754807 0.80844962596893311 0.58604449033737183 0 -0.16008488833904266 -0.57225865125656128 0.80429655313491821 0
		 5.6873359680175781 83.368919372558594 -1.2950998544692993 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 0.98560631275177002 -0.16336986422538757 0.043479029089212418 0
		 0.11081698536872864 0.43010929226875305 -0.89594954252243042 0 0.12767042219638824 0.88787180185317993 0.44202262163162231 0
		 -10.672252655029297 80.415756225585937 4.9972114562988281 1;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter1";
	rename -uid "A4E45266-4B61-AD31-490F-DE854A94C541";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode HIKState2Effector -n "HIKState2Effector2";
	rename -uid "2FF68152-4242-D4A6-4C39-DF8D4B8493A6";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 0.92037087678909302 0.1661415696144104 -0.35399794578552246 0
		 -0.157379150390625 0.98608148097991943 0.053621575236320496 0 0.35797953605651855 0.0063601657748222351 0.9337078332901001 0
		 -2.4924583435058594 81.892333984375 1.8510558605194092 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 0.98574608564376831 -0.073120132088661194 -0.15152120590209961 0
		 0.16799993813037872 0.47605639696121216 0.86321884393692017 0 0.0090139433741569519 -0.8763698935508728 0.48155477643013 0
		 3.9794416427612305 29.549129486083984 -59.526725769042969 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 0.9454948902130127 -0.13867057859897614 0.29463517665863037 0
		 -0.16028310358524323 0.58942019939422607 0.79176586866378784 0 -0.28345853090286255 -0.79583567380905151 0.53506720066070557 0
		 -18.006412506103516 35.181468963623047 0.82896804809570313 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" -0.8928413987159729 0.4495517909526825 -0.027155309915542603 0
		 0.24284717440605164 0.53133714199066162 0.81160736083984375 0 0.37928813695907593 0.71804213523864746 -0.5835719108581543 0
		 -0.251617431640625 133.49467468261719 43.885196685791016 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 0.87172377109527588 0.47540652751922607 0.11868542432785034 0
		 -0.30366122722625732 0.33404085040092468 0.89230406284332275 0 0.38456135988235474 -0.81388282775878906 0.4355539083480835 0
		 -54.322685241699219 115.30291748046875 -2.989600658416748 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 0.99565029144287109 -0.074978478252887726 0.055304780602455139 0
		 -0.0031790584325790405 0.56591284275054932 0.82445889711380005 0 -0.093114361166954041 -0.8210485577583313 0.56321293115615845 0
		 3.8319525718688965 55.804027557373047 -21.276865005493164 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 0.97637474536895752 -0.20167329907417297 0.077593483030796051 0
		 0.076632946729660034 0.65891659259796143 0.7483026385307312 0 -0.20204025506973267 -0.72467738389968872 0.65880417823791504 0
		 -14.451116561889648 65.75115966796875 35.545661926269531 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" -0.89283919334411621 0.4495561420917511 -0.027156688272953033 0
		 0.42030397057533264 0.81004428863525391 -0.40886795520782471 0 -0.16181096434593201 -0.37646740674972534 -0.91218942403793335 0
		 17.666187286376953 124.47282409667969 44.430187225341797 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 0.87172240018844604 0.47540998458862305 0.11868511140346527 0
		 -0.30366265773773193 0.33404096961021423 0.89230382442474365 0 0.38456439971923828 -0.81388115882873535 0.43555513024330139 0
		 -36.828659057617188 124.84361267089844 -0.60778141021728516 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 0.97953325510025024 -0.056839447468519211 0.19309164583683014 0
		 0.031321536749601364 0.9906582236289978 0.13272441923618317 0 -0.19883175194263458 -0.12396002560853958 0.97216272354125977 0
		 -3.677910327911377 92.242584228515625 3.626652717590332 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 0.77084285020828247 -0.27169623970985413 0.57617902755737305 0
		 -0.086403839290142059 0.85153180360794067 0.51713413000106812 0 -0.63113820552825928 -0.44841331243515015 0.63292169570922852 0
		 -2.4284818172454834 120.7410888671875 13.587202072143555 1;
	setAttr ".LeftFootEffectorGXM[0]" -type "matrix" 0.93369042873382568 -0.2127966582775116 -0.28799381852149963 0
		 0.31497463583946228 0.87064367532730103 0.37785086035728455 0 0.17033451795578003 -0.44350633025169373 0.87993687391281128 0
		 2.6576004028320312 17.091085433959961 -62.114311218261719 1;
	setAttr ".RightFootEffectorGXM[0]" -type "matrix" 0.9454951286315918 -0.13867011666297913 0.29463487863540649 0
		 -0.16028311848640442 0.5894201397895813 0.79176598787307739 0 -0.28345799446105957 -0.79583579301834106 0.53506731986999512 0
		 -19.401149749755859 22.550765991210938 -0.64269924163818359 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 0.45667374134063721 0.20051135122776031 0.86674350500106812 0
		 0.42030590772628784 0.81005263328552246 -0.40884923934936523 0 -0.78408676385879517 0.55100810527801514 0.28565368056297302 0
		 7.7183661460876465 120.10504150390625 25.549722671508789 1;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 0.94769477844238281 0.0093229860067367554 0.31904235482215881 0
		 -0.30367565155029297 0.334074467420578 0.89228671789169312 0 -0.098265089094638824 -0.94250065088272095 0.31943175196647644 0
		 -16.184810638427734 125.04669189453125 6.3419890403747559 1;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 0.99967497587203979 0.022947980090975761 -0.011132181622087955 0
		 -0.021827021613717079 0.99551248550415039 0.092082075774669647 0 0.013195320032536983 -0.09180913120508194 0.9956895112991333 0
		 -2.1828246116638184 138.37887573242187 22.981979370117188 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 0.98560225963592529 -0.13758382201194763 0.098280273377895355 0
		 0.054416459053754807 0.80844962596893311 0.58604449033737183 0 -0.16008488833904266 -0.57225865125656128 0.80429655313491821 0
		 5.6873359680175781 83.368919372558594 -1.2950998544692993 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 0.98560631275177002 -0.16336986422538757 0.043479029089212418 0
		 0.11081698536872864 0.43010929226875305 -0.89594954252243042 0 0.12767042219638824 0.88787180185317993 0.44202262163162231 0
		 -10.672252655029297 80.415756225585937 4.9972114562988281 1;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter2";
	rename -uid "5C4E6340-4435-5D66-714A-A9B20A407807";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HipsEffector_rotateX";
	rename -uid "D8F75605-4F6E-3E91-C32C-4ABBC09CBC0C";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 21.253617721180504 11 3.517519756472038
		 21 -28.27302501920807 31 -0.82885643376719476 41 21.253617721180504 51 3.517519756472038
		 61 -28.27302501920807 71 -0.82885643376719476 81 21.253617721180504;
	setAttr -s 9 ".kit[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  0.41666668653488159;
	setAttr -s 9 ".koy[8]"  -0.30955329537391663;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HipsEffector_rotateY";
	rename -uid "BB38449C-4318-F108-DB7B-D8913D344E77";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 9.0548052723846979 11 1.8155891867811866
		 21 -5.9296913284254513 31 0.71808670107181627 41 9.0548052723846979 51 1.8155891867811866
		 61 -5.9296913284254513 71 0.71808670107181627 81 9.0548052723846979;
	setAttr -s 9 ".kit[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  0.41666668653488159;
	setAttr -s 9 ".koy[8]"  -0.12634815275669098;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HipsEffector_rotateZ";
	rename -uid "0E00D551-4AD1-1D91-EC48-9BA26A195BBB";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 3.1125897240488509 11 0.49574646179909954
		 21 2.0905400047929783 31 0.4557805875281668 41 3.1125897240488509 51 0.49574646179909954
		 61 2.0905400047929783 71 0.4557805875281668 81 3.1125897240488509;
	setAttr -s 9 ".kit[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  2 18 18 18 2 18 18 18 
		1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  0.41666668653488159;
	setAttr -s 9 ".koy[8]"  -0.045672532171010971;
createNode keyingGroup -n "QuickRigCharacter_LeftLegBPKG2";
	rename -uid "1E17BA53-4D19-75BF-F3B4-25AAA6463614";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateX";
	rename -uid "A383FA3A-4E1B-02D6-F564-05B7FC4C45BD";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.039794459939002991 11 0.13469378292560577
		 21 0.13219224750995637 31 0.0057037192583084106 41 0.039794459939002991 51 0.13469378292560577
		 61 0.13219224750995637 71 0.0057037192583084106 81 0.039794459939002991;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateY";
	rename -uid "991225FA-4741-0074-0790-E79E38AAF13A";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.29883678435347977 11 0.79616157530806964
		 21 0.39639717101119459 31 0.16316406249068677 41 0.29883678435347977 51 0.79616157530806964
		 61 0.39639717101119459 71 0.16316406249068677 81 0.29883678435347977;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateZ";
	rename -uid "1BAFC3BE-4202-F979-A352-7FA2FB9478C6";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.61103387832641598 11 -0.44114473342895499
		 21 0.033851947784423818 31 0.54866102218627921 41 -0.61103387832641598 51 -0.44114473342895499
		 61 0.033851947784423818 71 0.54866102218627921 81 -0.61103387832641598;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateY";
	rename -uid "03B136A9-4C57-602C-4E35-0D9A7D5A436F";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 5.9309861841458904 11 7.0015728837781435
		 21 0.21748323192483424 31 -7.6728936102554508 41 5.9309861841458904 51 7.0015728837781435
		 61 0.21748323192483424 71 -7.6728936102554508 81 5.9309861841458904;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateX";
	rename -uid "70C325C7-40B8-9685-38E1-AE91C0FF7CE7";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -7.6709860231661038 11 6.8463380215353107
		 21 -9.6831236351019783 31 -5.9284846107848059 41 -7.6709860231661038 51 6.8463380215353107
		 61 -9.6831236351019783 71 -5.9284846107848059 81 -7.6709860231661038;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateZ";
	rename -uid "8CD80BD4-4423-4339-874D-7396519631C6";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 60.770057614868058 11 162.30365556509247
		 21 24.550141938969247 31 -28.850610387936104 41 60.770057614868058 51 162.30365556509247
		 61 24.550141938969247 71 -28.850610387936104 81 60.770057614868058;
createNode keyingGroup -n "QuickRigCharacter_RightLegBPKG2";
	rename -uid "ED76B219-4E69-6C14-11E8-7987FAA5CE86";
	setAttr ".ihi" 0;
	setAttr -s 36 ".dnsm";
	setAttr -s 8 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateX";
	rename -uid "D602EF70-433F-C076-7770-E2AA23F23E51";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.18006399154663086 11 -0.010894829630851746
		 21 -0.01991938292980194 31 -0.17983148574829103 41 -0.18006399154663086 51 -0.010894829630851746
		 61 -0.01991938292980194 71 -0.17983148574829103 81 -0.18006399154663086;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateY";
	rename -uid "5E576DFC-4586-49EC-2C63-F19F1D562F60";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.35516052629158368 11 0.16731567381881177
		 21 0.23186927794478834 31 0.81171406175300942 41 0.35516052629158368 51 0.16731567381881177
		 61 0.23186927794478834 71 0.81171406175300942 81 0.35516052629158368;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateZ";
	rename -uid "0231B636-467E-72F9-BB9F-C9B6FB5A260D";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.007476985156536102 11 0.47872083663940423
		 21 -0.53909650802612297 31 -0.35928801268339156 41 -0.007476985156536102 51 0.47872083663940423
		 61 -0.53909650802612297 71 -0.35928801268339156 81 -0.007476985156536102;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateZ";
	rename -uid "DA71EF2E-46DD-9D94-5BA0-CAB7A7F3D266";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 55.681848085016448 11 -2.4497843188732129
		 21 47.428560846062467 31 152.0369610538728 41 55.681848085016448 51 -2.4497843188732129
		 61 47.428560846062467 71 152.0369610538728 81 55.681848519208572;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateY";
	rename -uid "22E1B648-49BB-4345-A12F-D8938E8AC2CD";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 6.2572615489168379 11 4.9352140305131256
		 21 -0.59003488273376326 31 -18.601802977368141 41 6.2572615489168379 51 4.9352140305131256
		 61 -0.59003488273376326 71 -18.601802977368141 81 6.2572615256893922;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateX";
	rename -uid "CBF20A6E-4319-05AC-1288-B08B28929561";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 17.978114968055785 11 5.8091068177411138
		 21 2.7889818671064308 31 3.9490426136824848 41 17.978114968055785 51 5.8091068177411138
		 61 2.7889818671064308 71 3.9490426136824848 81 17.978115119357497;
createNode keyingGroup -n "QuickRigCharacter_LeftArmBPKG2";
	rename -uid "C96E2D16-4407-6F81-9D10-01838B429FA8";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateX";
	rename -uid "E44D9DF5-4519-0D05-DD2C-0E874EC9AFA6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -0.0025160616636276246 21 0.28565750122070316
		 41 -0.0025160616636276246 61 0.28565750122070316 81 -0.0025160616636276246;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateY";
	rename -uid "75B8DEE5-44B1-C815-993C-B68277077F62";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.3382924652006478 21 0.8755163231055485
		 41 1.3382924652006478 61 0.8755163231055485 81 1.3382924652006478;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateZ";
	rename -uid "044F795C-4F15-2726-D46D-6F9D52835AEB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.42308549880981439 21 -0.15028299063444137
		 41 0.42308549880981439 61 -0.15028299063444137 81 0.42308549880981439;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateZ";
	rename -uid "37E11C4B-45D4-C045-9A6B-C0A31909ED55";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -178.25793472150693 21 119.84949515616762
		 41 -178.25793472150693 61 119.84949515616762 81 -178.25793472150693;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  0.51009976863861084 0 0.51009976863861084 
		0 0.51009976863861084;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateX";
	rename -uid "29ADD272-4E44-37C3-3E4B-0BA7ACD4A34D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -53.499307376014364 21 -99.628628319972051
		 41 -53.499307376014364 61 -99.628628319972051 81 -53.499307376014364;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  1.8302493095397949 0 1.8302493095397949 
		0 1.8302493095397949;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateY";
	rename -uid "68D83C5D-4F88-9D19-27EC-F29501CD8DC9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 26.714928323138629 21 -74.857322719011123
		 41 26.714928323138629 61 -74.857322719011123 81 26.714928323138629;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  1.8612474203109741 0 1.8612474203109741 
		0 1.8612474203109741;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode keyingGroup -n "QuickRigCharacter_RightArmBPKG2";
	rename -uid "54A68D5D-4555-ED6C-34AE-A9BAFEB3438C";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightWristEffector_translateX";
	rename -uid "008019DB-41DA-F7C8-E906-AB9DB7F7C134";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.5432268923521042 2 -0.5432268923521042
		 21 -0.47110943019390106 41 -0.5432268923521042 42 -0.5432268923521042 61 -0.47110943019390106
		 81 -0.5432268923521042;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightWristEffector_translateY";
	rename -uid "70719E82-4EB4-88E7-C71C-AB806B02FD1A";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.1563748931791633 2 1.1563748931791633
		 21 0.96342689513228841 41 1.1563748931791633 42 1.1563748931791633 61 0.96342689513228841
		 81 1.1563748931791633;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightWristEffector_translateZ";
	rename -uid "8C218154-4E97-A275-6D52-57A9B33B1689";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.045662662982940666 2 -0.045662662982940666
		 21 -0.11284024238586424 41 -0.045662662982940666 42 -0.045662662982940666 61 -0.11284024238586424
		 81 -0.045662662982940666;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateZ";
	rename -uid "31453F19-4E94-4303-5B2E-77BF98FF07FD";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -7.7531615179152444 2 -7.7531615179152444
		 21 -28.095240461263565 41 -7.7531615179152444 42 -7.7531615179152444 61 -28.095240461263565
		 81 -7.7531615179152444;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 -0.35503625869750977 0 0 -0.35503625869750977 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0.35503625869750977 0 0 0.35503625869750977 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateY";
	rename -uid "89D63B73-4544-D3C9-1A42-B4A8F7350F81";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 28.385810673368347 2 28.385810673368347
		 21 39.020298298866408 41 28.385810673368347 42 28.385810673368347 61 39.020298298866408
		 81 28.385810673368347;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0.18560682237148285 0 0 0.18560682237148285 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 -0.18560682237148285 0 0 -0.18560682237148285 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateX";
	rename -uid "09306926-4AAE-D711-E472-AA842B3A424D";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -67.685329756395575 2 -67.685329756395575
		 21 -62.221228577353791 41 -67.685329756395575 42 -67.685329756395575 61 -62.221228577353791
		 81 -67.685329756395575;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0.09536655992269516 0 0 0.09536655992269516 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 -0.09536655992269516 0 0 -0.09536655992269516 
		0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateX";
	rename -uid "60B260A4-454E-6177-293B-648C8801798C";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.038312566876411436 11 0.12447670757770539
		 21 0.055649312138557436 31 0.039846017956733704 41 0.038312566876411436 51 0.12447670757770539
		 61 0.055649312138557436 71 0.039846017956733704 81 0.038312566876411436;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -4.2315349578857422 -0.46003520488739014 
		0 0 -4.2315359115600586 -0.4600350558757782 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -4.231534481048584 -0.46003532409667969 
		0 0 -4.2315330505371094 -0.46003532409667969 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateY";
	rename -uid "96FDC5EB-4045-B0BB-CA40-A39F59C56434";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.56138675688765949 11 0.4587103271391243
		 21 0.71469978331588213 31 0.51129558562301103 41 0.56138675688765949 51 0.4587103271391243
		 61 0.71469978331588213 71 0.51129558562301103 81 0.56138675688765949;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateZ";
	rename -uid "DC81D0A4-4EB3-3BF4-35DD-55BD41F77453";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.2285357284545898 11 -0.12292846679687498
		 21 0.36258348464965812 31 0.2439015197753906 41 -0.2285357284545898 51 -0.12292846679687498
		 61 0.36258348464965812 71 0.2439015197753906 81 -0.2285357284545898;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 29.555963516235352 0 -29.55595588684082 
		0 29.55595588684082 0 -29.555952072143555 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 29.555959701538086 0 -29.555965423583984 
		0 29.555965423583984 0 -29.55596923828125 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateZ";
	rename -uid "713FCD49-43F9-84BC-D15F-E99CFB8538D8";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 55.533944497244804 11 136.68036997771284
		 21 45.923408002415172 31 -41.199377665055145 41 55.533944497244804 51 136.68036997771284
		 61 45.923408002415172 71 -41.199377665055145 81 55.533944497244804;
	setAttr -s 9 ".kit[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kot[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  1.6883149147033691 1.4162722826004028 -1.5840078592300415 
		-1.52057945728302 1.6883149147033691 1.4162722826004028 -1.5840078592300415 -1.52057945728302 
		1.6883149147033691;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -1.5840078592300415 -1.52057945728302 
		1.6883149147033691 0 -1.5840078592300415 -1.52057945728302 1.6883149147033691 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateY";
	rename -uid "FF31A939-453A-D968-FA74-57BCA7F0D1FD";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 -0.18300984065271111 11 -1.2618954145028223
		 21 -9.4963450431013747 31 4.2203369825473835 41 -0.18300984065271111 51 -1.2618954145028223
		 61 -9.4963450431013747 71 4.2203369825473835 81 -0.18300984065271111;
	setAttr -s 9 ".kit[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kot[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  -0.076852902770042419 -0.018830105662345886 
		-0.14371825754642487 0.23940126597881317 -0.076852902770042419 -0.018830105662345886 
		-0.14371825754642487 0.23940126597881317 -0.076852902770042419;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.14371825754642487 0.23940126597881317 
		-0.076852902770042419 0 -0.14371825754642487 0.23940126597881317 -0.076852902770042419 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateX";
	rename -uid "5D78F307-4FE4-BC9E-7810-90B439D308B8";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 5.3428603299453918 11 1.9277232347051259
		 21 -4.9876431217154575 31 -6.2238128890290332 41 5.3428603299453918 51 1.9277232347051259
		 61 -4.9876431217154575 71 -6.2238128890290332 81 5.3428603299453918;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		2;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  0.20187653601169586 -0.090150654315948486 
		-0.064725704491138458 0 0.20187653601169586 -0.090150639414787292 -0.064725734293460846 
		0 0.20187653601169586;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.090150646865367889 -0.064725697040557861 
		0 0 -0.090150661766529083 -0.064725697040557861 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateZ";
	rename -uid "603D5E4D-4CEF-411A-8D5E-8A998EFFD780";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 79.40895703661721 11 -23.294424769268492
		 21 39.981433396329109 31 167.59098686369322 41 79.40895703661721 51 -23.294424769268492
		 61 39.981433396329109 71 167.59098686369322 81 79.408957212500141;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateY";
	rename -uid "55BE18C1-4F9E-2148-1F1A-B19F17666EC8";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 13.829895354736745 11 -8.6627579362062139
		 21 -5.6844604655843174 31 -5.8469526946124617 41 13.829895354736745 51 -8.6627579362062139
		 61 -5.6844604655843174 71 -5.8469526946124617 81 13.829895362974186;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateX";
	rename -uid "CA9015B5-42FF-5FA2-59D2-E4B0FA8DEF92";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 11.096537535586807 11 4.8654097609386913
		 21 -3.2176713184873216 31 -6.9289626060364373 41 11.096537535586807 51 4.8654097609386913
		 61 -3.2176713184873216 71 -6.9289626060364373 81 11.096537576907188;
	setAttr -s 9 ".kit[0:8]"  2 18 18 18 2 18 18 18 
		2;
	setAttr -s 9 ".kot[0:8]"  2 18 18 18 2 18 18 18 
		2;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateY";
	rename -uid "AC1F9EEB-4F82-1991-DDBB-469B608737DC";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.43370525743172039 11 0.58857563017867509
		 21 0.58561592101119464 31 0.38412777330086101 41 0.43370525743172039 51 0.58857563017867509
		 61 0.58561592101119464 71 0.38412777330086101 81 0.43370525743172039;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.88791275024414063 0 0 0 -0.88791275024414063 
		0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.88791269063949585 0 0 0 -0.88791221380233765 
		0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateX";
	rename -uid "FD841D6F-4998-414C-A54C-B0883FC79E44";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.074861445426940926 11 -0.080772582888603214
		 21 -0.065872499346733088 31 -0.22466556549072267 41 -0.074861445426940926 51 -0.080772582888603214
		 61 -0.065872499346733088 71 -0.22466556549072267 81 -0.074861445426940926;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateZ";
	rename -uid "063E5C68-41B6-DCBE-EB1E-ADB8DDE9E2B2";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.41258824616670609 11 0.29734609603881834
		 21 -0.24246324539184566 31 -0.26520649641752242 41 0.41258824616670609 51 0.29734609603881834
		 61 -0.24246324539184566 71 -0.26520649641752242 81 0.41258824616670609;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -32.752578735351562 -6.8229756355285645 
		0 0 -32.752571105957031 -6.8229794502258301 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -32.752574920654297 -6.8229751586914062 
		0 0 -32.752578735351562 -6.8229751586914062 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateZ";
	rename -uid "A7C0A763-43E1-010C-372B-C6A022671B10";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -178.25783870640331 21 119.84886687660338
		 41 -178.25783870640331 61 119.84886687660338 81 -178.25783870640331;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  0.51011079549789429 0 0.51011079549789429 
		0 0.51011079549789429;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateY";
	rename -uid "D686AA80-4D9C-5E40-A9E7-4A8CCF1AE314";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 26.715205146117313 21 -74.857449199351947
		 41 26.715205146117313 61 -74.857449199351947 81 26.715205146117313;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  1.8612548112869263 0 1.8612548112869263 
		0 1.8612548112869263;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateX";
	rename -uid "779C15D5-4D95-B806-270D-799A21AD0FCB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 24.926588309846707 21 -99.627957998137518
		 41 24.926588309846707 61 -99.627957998137518 81 24.926588309846707;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  1.8302375078201294 0 1.8302375078201294 
		0 1.8302375078201294;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateX";
	rename -uid "FCBDC1D8-4405-3B1A-76DC-FBAF7DEFB20B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.17666209995746612 21 0.31354040145874024
		 41 0.17666209995746612 61 0.31354040145874024 81 0.17666209995746612;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateY";
	rename -uid "D393BF8C-4EAD-479D-B6C1-3D9ACED1E810";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2480739593412726 21 1.0825315513770328
		 41 1.2480739593412726 61 1.0825315513770328 81 1.2480739593412726;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateZ";
	rename -uid "B1686F7A-4D03-9109-52C6-7CBE5DDC70F4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.42853540420532221 21 -0.19887318342924118
		 41 0.42853540420532221 61 -0.19887318342924118 81 0.42853540420532221;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateZ";
	rename -uid "C89EB5F2-4A0B-2D70-4973-32B6D6E2F62E";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -7.7531546739548149 2 -7.7531546739548149
		 21 -28.09520677260317 41 -7.7531546739548149 42 -7.7531546739548149 61 -28.09520677260317
		 81 -7.7531546739548149;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 -0.35503578186035156 0 0 -0.35503578186035156 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0.35503578186035156 0 0 0.35503578186035156 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateY";
	rename -uid "D38AB4E5-4F04-3E86-12B9-A281550924FE";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -28.386033113332662 2 -28.386033113332662
		 21 -39.020484988702592 41 -28.386033113332662 42 -28.386033113332662 61 -39.020484988702592
		 81 -28.386033113332662;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 -0.18560619652271271 0 0 -0.18560619652271271 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0.18560619652271271 0 0 0.18560619652271271 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateX";
	rename -uid "8B09D459-402F-F0F6-0209-208626BBEB91";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 67.68529839186877 2 67.68529839186877
		 21 62.221181492058626 41 67.68529839186877 42 67.68529839186877 61 62.221181492058626
		 81 67.68529839186877;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 -0.095366828143596649 0 0 -0.095366828143596649 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0.095366828143596649 0 0 0.095366828143596649 
		0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateX";
	rename -uid "7C045C60-45A2-DA17-C511-47920D81ED09";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.36828647792339325 2 -0.36828647792339325
		 21 -0.33356620967388156 41 -0.36828647792339325 42 -0.36828647792339325 61 -0.33356620967388156
		 81 -0.36828647792339325;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateY";
	rename -uid "D5181733-42FA-4003-DC43-97BEB0A289E1";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.2517818450834601 2 1.2517818450834601
		 21 1.0897769927885383 41 1.2517818450834601 42 1.2517818450834601 61 1.0897769927885383
		 81 1.2517818450834601;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateZ";
	rename -uid "A4829920-4E9D-3022-5949-EE91279A1074";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.021844477653503416 2 -0.021844477653503416
		 21 -0.039413714408874506 41 -0.021844477653503416 42 -0.021844477653503416 61 -0.039413714408874506
		 81 -0.021844477653503416;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode keyingGroup -n "QuickRigCharacter_ChestBPKG2";
	rename -uid "5C885E92-4390-40EE-E7E6-DB967E66B846";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dnsm";
	setAttr -s 5 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateX";
	rename -uid "CBC0142D-41FF-B18B-FECA-719136A399C1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -0.030819664001464846 21 -0.022943556308746338
		 41 -0.030819664001464846 61 -0.022943556308746338 81 -0.030819664001464846;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateY";
	rename -uid "954A0EBF-46D3-8C52-C00E-F59EFC45B8F4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.87134624864265786 21 0.87164905931160319
		 41 0.87134624864265786 61 0.87164905931160319 81 0.87134624864265786;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateZ";
	rename -uid "9E02236B-4CE9-CB11-9914-AEA87B6C1DEF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.023434422314167022 21 0.0226650932431221
		 41 0.023434422314167022 61 0.0226650932431221 81 0.023434422314167022;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateX";
	rename -uid "8E65AD41-4E4D-5018-410B-E28F3C379CF0";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 1.0689614562877137 21 -12.575539296789191
		 41 1.0689614562877137 61 -12.575539296789191 81 1.0689614562877132;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateY";
	rename -uid "53E999AF-4258-B3C9-2242-9FA335424DED";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 0.25808316064527181 21 -8.41305382258912
		 41 0.25808316064527181 61 -8.41305382258912 81 0.25808316064527176;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateZ";
	rename -uid "16906A40-43D9-61A4-5840-46BCDB2CB410";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 5.9861241080375382 21 1.4424560127081596
		 41 5.9861241080375382 61 1.4424560127081596 81 5.9861241080375382;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateX";
	rename -uid "33775509-4472-39A3-2CFB-F4B28588D663";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -0.016356639862060547 21 -0.01912590265274048
		 41 -0.016356639862060547 61 -0.01912590265274048 81 -0.016356639862060547;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateY";
	rename -uid "7102BA7A-41F8-A82A-7901-979C618A7935";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2700172844092594 21 1.2832841148535954
		 41 1.2700172844092594 61 1.2832841148535954 81 1.2700172844092594;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateZ";
	rename -uid "ACD745CC-4C4E-AC04-C17A-43B60E39EAEE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.13657494813203813 21 0.071392300426959987
		 41 0.13657494813203813 61 0.071392300426959987 81 0.13657494813203813;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateX";
	rename -uid "A21904C8-460D-5FF0-52E2-89A501E6B788";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 -27.037761032359139 21 9.6018966433593054
		 41 -27.037761032359139 61 9.6018966433593054 81 -27.037761032359139;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateY";
	rename -uid "A3A1E6EC-43A6-DB92-8BE1-F0B2555E7F8F";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 0.54439768588503012 21 2.7456999880137651
		 41 0.54439768588503012 61 2.7456999880137651 81 0.5443976858850309;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateZ";
	rename -uid "CD979A3F-4A38-681B-D503-F0B2BD1C6D61";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  1 31.115501695557057 21 21.01314932368345
		 41 31.115501695557057 61 21.01314932368345 81 31.115501695557057;
	setAttr -s 5 ".kit[1:4]"  18 2 18 2;
	setAttr -s 5 ".kot[1:4]"  18 2 18 2;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateZ";
	rename -uid "0266064F-4087-476D-6578-949B59F91DAF";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 26.749033952305101 11 -178.41316315084489
		 21 34.442985824719088 31 -29.390786009983838 41 26.749033952305101 51 -178.41316315084489
		 61 34.442985824719088 71 -29.390786009983838 81 26.749033952305101;
	setAttr -s 9 ".kit[1:8]"  2 9 9 9 2 9 9 9;
	setAttr -s 9 ".kot[1:8]"  2 9 9 9 2 9 9 9;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateY";
	rename -uid "3354C464-4558-6D12-EA1B-66A9CBF2C494";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -9.8072623456926689 11 15.785144527970468
		 21 0.44761958495664833 31 -6.4061927581274087 41 -9.8072623456926689 51 15.785144527970468
		 61 0.44761958495664833 71 -6.4061927581274087 81 -9.8072623456926689;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateX";
	rename -uid "62078180-42F4-82B7-CFB9-249B1081B600";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -18.641503678270869 11 -5.6431675277664688
		 21 -18.794013276886435 31 -10.52634149333794 41 -18.641503678270869 51 -5.6431675277664688
		 61 -18.794013276886435 71 -10.52634149333794 81 -18.641503678270869;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateX";
	rename -uid "92751761-43CC-248C-2926-A98741EE2740";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.026576030850410461 11 0.11910022556781769
		 21 0.13170674145221711 31 0.022783864140510559 41 0.026576030850410461 51 0.11910022556781769
		 61 0.13170674145221711 71 0.022783864140510559 81 0.026576030850410461;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateY";
	rename -uid "C21FE514-46F5-91C0-8631-43922A5A3AEA";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.17425632475875319 11 0.84631744383834306
		 21 0.27997922896407546 31 0.13656064986251296 41 0.17425632475875319 51 0.84631744383834306
		 61 0.27997922896407546 71 0.13656064986251296 81 0.17425632475875319;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateZ";
	rename -uid "02B7E4EA-41C8-95EE-F0D1-7B8253A56F50";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.63690965652465814 11 -0.55778856277465816
		 21 0.086872825622558575 31 0.67261693954467761 41 -0.63690965652465814 51 -0.55778856277465816
		 61 0.086872825622558575 71 0.67261693954467761 81 -0.63690965652465814;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateX";
	rename -uid "6D1DB0D1-465E-34BD-679B-F88C5E7E1B0E";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 9.6416343273052316 11 1.1412103458998062
		 21 0.73671131214961283 31 15.278387358183094 41 9.6416343273052316 51 1.1412103458998062
		 61 0.73671131214961283 71 15.278387358183094 81 9.6416340195574648;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightFootEffector_translateX";
	rename -uid "84286072-4ED6-CAAC-81FF-679FE76E4BC3";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.19716392517089845 11 -0.021908137202262878
		 21 -0.018607535958290101 31 -0.12979314804077149 41 -0.19716392517089845 51 -0.021908137202262878
		 61 -0.018607535958290101 71 -0.12979314804077149 81 -0.19716392517089845;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightFootEffector_translateY";
	rename -uid "3EC465D6-4D64-B41E-F6AC-FBBED215C14E";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 0.20028221513435709 11 0.087952613821253176
		 21 0.10400228499434888 31 0.84497654344246254 41 0.20028221513435709 51 0.087952613821253176
		 61 0.10400228499434888 71 0.84497654344246254 81 0.20028221513435709;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightFootEffector_translateZ";
	rename -uid "5ACE52CB-4C2F-72FA-FC9A-6A9DA8F1D12D";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 -0.025333087146282195 11 0.57844438552856436
		 21 -0.53550745010375966 31 -0.50416132658720014 41 -0.025333087146282195 51 0.57844438552856436
		 61 -0.53550745010375966 71 -0.50416132658720014 81 -0.025333087146282195;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateZ";
	rename -uid "E308A4F3-4A6C-FF61-005E-C08E9370E708";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 56.087672815603476 11 -2.6256024432727876
		 21 1.4111048020226555 31 151.14326234796943 41 56.087672815603476 51 -2.6256024432727876
		 61 1.4111048020226555 71 151.14326234796943 81 56.087671776401848;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateY";
	rename -uid "86A877E3-4D6A-D258-8C9C-02B52F09787B";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 16.455119195871507 11 7.5313310120042134
		 21 2.7568702808905301 31 -11.447260487137097 41 16.455119195871507 51 7.5313310120042134
		 61 2.7568702808905301 71 -11.447260487137097 81 16.455119013573011;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateZ";
	rename -uid "FD3D6A61-4844-5370-BB8D-0D959C192A82";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -62.215938571341844 21 70.949824271332517
		 41 -62.215938571341844 61 70.949824271332517 81 -62.215938571341844;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  -2.3061535358428955 0 -2.3061535358428955 
		0 -2.3061535358428955;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateY";
	rename -uid "226BB05D-46E8-FB41-1563-AF884F206057";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -11.566857073471992 21 30.677404988804028
		 41 -11.566857073471992 61 30.677404988804028 81 -11.566857073471992;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  -0.66520088911056519 0 -0.66520088911056519 
		0 -0.66520088911056519;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateX";
	rename -uid "412B72A0-43C5-751B-DFE2-588FA399D99B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -34.224029768650915 21 92.912155145682519
		 41 -34.224029768650915 61 92.912155145682519 81 -34.224029768650915;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  0.83333337306976318 0.83333331346511841 
		0.83333337306976318 0.83333337306976318 0.83333337306976318;
	setAttr -s 5 ".kiy[0:4]"  -2.1694331169128418 0 -2.1694331169128418 
		0 -2.1694331169128418;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateX";
	rename -uid "A090A689-4974-3D8F-504E-C3B8E61DCB22";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.077183716893196114 21 0.22695045471191408
		 41 0.077183716893196114 61 0.22695045471191408 81 0.077183716893196114;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateY";
	rename -uid "359298A6-4D34-B574-3426-EF928A876C19";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.2043961334135385 21 1.2399068870703922
		 41 1.2043961334135385 61 1.2399068870703922 81 1.2043961334135385;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateZ";
	rename -uid "02136153-4181-31D4-4941-A2AA87CDFCF2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.23973060607910154 21 0.051877816021442417
		 41 0.23973060607910154 61 0.051877816021442417 81 0.23973060607910154;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateZ";
	rename -uid "77993EAF-454F-8F74-C2F9-4A9F57B79EA0";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 18.605859862533723 2 18.605859862533723
		 21 28.159746102971312 41 18.605859862533723 42 18.605859862533723 61 28.159746102971312
		 81 18.605859862533723;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0.16674676537513733 0 0 0.16674676537513733 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 -0.16674676537513733 0 0 -0.16674676537513733 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateY";
	rename -uid "ACF0A221-4889-558F-3277-618ABE4EE34C";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0.53417210527546222 2 0.53417210527546222
		 21 38.92464346486318 41 0.53417210527546222 42 0.53417210527546222 61 38.92464346486318
		 81 0.53417210527546222;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0.67004013061523438 0 0 0.67004013061523438 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 -0.67004013061523438 0 0 -0.67004013061523438 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateX";
	rename -uid "A2521DDB-4E8A-49FA-65A8-478D2D91E227";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 70.482863394317334 2 70.482863394317334
		 21 62.259491203709025 41 70.482863394317334 42 70.482863394317334 61 62.259491203709025
		 81 70.482863394317334;
	setAttr -s 7 ".kit[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kot[0:6]"  18 1 2 18 1 2 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 0.79166668653488159 
		0.83333337306976318 0.83333331346511841 0.79166674613952637 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 -0.14352491497993469 0 0 -0.14352491497993469 
		0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 0.83333337306976318 
		0.041666626930236816 0.83333331346511841 0.83333325386047363 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0.14352491497993469 0 0 0.14352491497993469 
		0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateX";
	rename -uid "B27B4618-470F-893E-1BFF-87A016E855E1";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.16184799373149872 2 -0.16184799373149872
		 21 -0.18415819346904755 41 -0.16184799373149872 42 -0.16184799373149872 61 -0.18415819346904755
		 81 -0.16184799373149872;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateY";
	rename -uid "FC8477BD-4DD5-08C2-5DAF-3C92C6E0ACF5";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 1.2538126373197884 2 1.2538126373197884
		 21 1.2266403961088508 41 1.2538126373197884 42 1.2538126373197884 61 1.2266403961088508
		 81 1.2538126373197884;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateZ";
	rename -uid "0C7AB984-4BDA-F9B6-3584-B885588AC44B";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0.047653260231018062 2 0.047653260231018062
		 21 0.040564351081848138 41 0.047653260231018062 42 0.047653260231018062 61 0.040564351081848138
		 81 0.047653260231018062;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode keyingGroup -n "QuickRigCharacter_HeadBPKG2";
	rename -uid "C88EDE2D-4510-673F-4CC7-5E913C1E0517";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 3 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HeadEffector_rotateX";
	rename -uid "A80848DC-4316-5E7D-C8AA-CE811D1FB85F";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0.75621487142420885 11 -0.56038531468801323
		 21 0.94917204614800033 31 0.41250310097939985 41 0.75621487142420885 51 -0.56038531468801323
		 61 0.94917204614800033 71 1.003100600048382 75 0.56466029250761185 76 -1.1755482370715142
		 77 -1.4345423282540992 78 -0.22824696251727969 79 -0.21303471395315565 80 -0.52758564618764958
		 81 0.75621487142420885;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".ktl[2:14]" no yes yes yes no yes yes yes yes yes yes 
		yes yes;
	setAttr -s 15 ".kwl[2:14]" no yes yes yes no yes yes yes yes yes yes 
		yes yes;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 -0.022956680506467819 -0.013560976833105087 
		0 0.0007965114782564342 0 0 0;
	setAttr -s 15 ".kox[0:14]"  0.59450662136077881 0.4166666567325592 
		0.95095789432525635 0.41666674613952637 0.59450662136077881 0.41666674613952637 0.95095789432525635 
		0.16666674613952637 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		0.041666746139526367 0.041666507720947266 0.041666746139526367 0.59450662136077881;
	setAttr -s 15 ".koy[0:14]"  -0.0016637444496154785 0 0.0080140158534049988 
		0 -0.0016637444496154785 0 0.0080140158534049988 0 -0.0057391785085201263 -0.01356089860200882 
		0 0.0007965114782564342 0 0 -0.0016637444496154785;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HeadEffector_rotateY";
	rename -uid "B81D8903-4FF7-8F49-2C01-73A4AFBD4A55";
	setAttr ".tan" 9;
	setAttr -s 15 ".ktv[0:14]"  1 1.2507131781448628 11 2.3303125706733008
		 21 -0.5395921428308621 31 -0.045576315169074857 41 1.2507131781448628 51 2.3303125706733008
		 61 -0.5395921428308621 71 1.6132673533064816 75 0.26919193623512622 76 0.25850309523427378
		 77 0.67721782037572609 78 2.6235478899084903 79 1.9934777801596231 80 1.4317275482722442
		 81 1.2507131781448628;
	setAttr -s 15 ".kit[0:14]"  1 9 9 9 1 9 9 9 
		9 9 9 9 9 18 1;
	setAttr -s 15 ".kot[0:14]"  1 9 9 9 1 9 9 9 
		9 9 9 9 9 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		0.16666674613952637 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		0.041666746139526367 0.041666507720947266 1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.015623362734913826 -0.020733542740345001 
		0.015623359009623528 0 -0.015623359009623528 -0.006257401779294014 0.010082815773785114 
		-0.018916072323918343 0.0035607076715677977 0.020638849586248398 0.011486534960567951 
		-0.010400624014437199 -0.0064818253740668297 0;
	setAttr -s 15 ".kox[0:14]"  0.83333331346511841 0.4166666567325592 
		0.41666662693023682 0.41666674613952637 0.83333331346511841 0.41666674613952637 0.41666650772094727 
		0.16666674613952637 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		0.041666746139526367 0.041666507720947266 0.041666746139526367 0.83333331346511841;
	setAttr -s 15 ".koy[0:14]"  0.29078131914138794 -0.015623360872268677 
		-0.020733542740345001 0.015623363666236401 0.29078131914138794 -0.015623363666236401 
		-0.0062573980540037155 0.0040331296622753143 -0.004729024600237608 0.0035606874153017998 
		0.020638968795537949 0.011486534960567951 -0.010400564409792423 -0.0064818626269698143 
		0.29078131914138794;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_HeadEffector_rotateZ";
	rename -uid "96E38C35-4BE5-12F5-619D-049528FDC986";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 5.2846511434548029 11 4.3036383849131408
		 21 1.0859486234537179 31 5.0914953988129481 41 5.2846511434548029 51 4.3036383849131408
		 61 1.0859486234537179 71 4.0414632610272259 75 4.8812272972186976 76 4.1206358170410553
		 77 4.3634208704876709 78 4.6983693482437836 79 5.0250906097881298 80 5.2155896194960816
		 81 5.2846511434548029;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.036640595644712448 0 0.010113608092069626 
		0 -0.036640588194131851 0 0.047314353287220001 0 0 0.0050416616722941399 0.0057741575874388218 
		0.0045136110857129097 0.0022650863975286484 0;
	setAttr -s 15 ".kox[0:14]"  0.83333331346511841 0.4166666567325592 
		0.83333331346511841 0.41666674613952637 0.83333331346511841 0.41666674613952637 0.83333331346511841 
		0.16666674613952637 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		0.041666746139526367 0.041666507720947266 0.041666746139526367 0.83333331346511841;
	setAttr -s 15 ".koy[0:14]"  0.16195814311504364 -0.03664059191942215 
		0.16195814311504364 0.01011361088603735 0.16195814311504364 -0.036640595644712448 
		0.16195814311504364 0.018925756216049194 0 0 0.0050416905432939529 0.0057741575874388218 
		0.0045135854743421078 0.002265099436044693 0.16195814311504364;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HeadEffector_translateX";
	rename -uid "1D0762D8-47BA-483A-5982-06AF218D59AE";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -0.021828264594078065 11 -0.026648580431938171
		 21 -0.030924784541130068 31 -0.024285389780998229 41 -0.021828264594078065 51 -0.026648580431938171
		 61 -0.030924784541130068 71 -0.02891439139842987 75 -0.025567342638969422 76 -0.025363757014274596
		 77 -0.024711865782737732 78 -0.024708701968193053 79 -0.023455321192741393 80 -0.022571527361869813
		 81 -0.021828264594078065;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.45482602715492249 0 0.45482593774795532 
		0 -0.45482593774795532 0 0.38267433643341064 0.2443024069070816 0.042773965746164322 
		0.00094913895009085536 0.00094914436340332031 0.10685903578996658 0.081352598965167999 
		0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.4548259973526001 0 0.45482605695724487 
		0 -0.45482605695724487 0 0.153069868683815 0.061075687408447266 0.042773719877004623 
		0.00094914436340332031 0.00094914436340332031 0.10685842484235764 0.081353060901165009 
		0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HeadEffector_translateY";
	rename -uid "38B40A25-4D3D-6BD0-1791-B78802E16DB8";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 1.3871344756986945 11 1.3534159088041633
		 21 1.4403054046537727 31 1.3350853729154915 41 1.3871344756986945 51 1.3534159088041633
		 61 1.4403054046537727 71 1.3400484466459603 75 1.3708589935209603 76 1.3787384796049447
		 77 1.3830416107084602 78 1.3854524993803352 79 1.3865677642729133 80 1.3870183563139289
		 81 1.3871344756986945;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 3.0952017307281494 0.60913258790969849 
		0.33570003509521484 0.17630767822265625 0.078293070197105408 0.028335489332675934 
		0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0.77380156517028809 0.60912913084030151 
		0.33570194244384766 0.17630767822265625 0.078292623162269592 0.028335653245449066 
		0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_HeadEffector_translateZ";
	rename -uid "B482C9D3-4B97-EC02-AC44-4F9970734321";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 0.21405321121215817 11 0.15879144668579098
		 21 0.11784487724304198 31 0.15993494033813474 41 0.21405321121215817 51 0.15879144668579098
		 61 0.11784487724304198 71 0.15234523773193356 75 0.1929413795471191 76 0.19866758346557614
		 77 0.20406850814819333 78 0.20834051132202144 79 0.21154012680053708 80 0.21347570419311521
		 81 0.21405321121215817;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -4.8104171752929687 0 4.8104162216186523 
		0 -4.8104162216186523 0 5.3640346527099609 3.7057867050170898 0.55635803937911987 
		0.48364502191543579 0.3735809326171875 0.25676038861274719 0.12565386295318604 0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -4.8104166984558105 0 4.8104171752929687 
		0 -4.8104171752929687 0 2.1456155776977539 0.92644798755645752 0.556354820728302 
		0.48364776372909546 0.3735809326171875 0.25675889849662781 0.12565457820892334 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateZ";
	rename -uid "A2FA35B9-4606-DE02-EDF3-B49E9E2B71E6";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 35.934864282839968 11 21.001702222755277
		 21 -68.888342106539525 31 -44.85020276550852 41 35.934864282839968 51 21.001702222755277
		 61 -68.888342106539525 71 -44.85020276550852 81 35.934864282839968;
	setAttr -s 9 ".kit[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kot[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  1.4099653959274292 -0.26063284277915955 
		-1.5688772201538086 0.41954466700553894 1.4099653959274292 -0.26063284277915955 -1.5688772201538086 
		0.41954466700553894 1.4099653959274292;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -1.5688772201538086 0.41954466700553894 
		1.4099653959274292 0 -1.5688772201538086 0.41954466700553894 1.4099653959274292 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateY";
	rename -uid "24D2B469-469B-FDB8-84E9-B5BDB1D47726";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 3.1190567943824274 11 -10.261355552218088
		 21 -0.45698943860200014 31 4.0512182085759338 41 3.1190567943824274 51 -10.261355552218088
		 61 -0.45698943860200014 71 4.0512182085759338 81 3.1190567943824274;
	setAttr -s 9 ".kit[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kot[0:8]"  1 2 2 2 1 2 2 2 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  -0.01626928523182869 -0.23353224992752075 
		0.17111846804618835 0.078683063387870789 -0.01626928523182869 -0.23353224992752075 
		0.17111846804618835 0.078683063387870789 -0.01626928523182869;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0.17111846804618835 0.078683063387870789 
		-0.01626928523182869 0 0.17111846804618835 0.078683063387870789 -0.01626928523182869 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateX";
	rename -uid "7FF0B035-406E-03EA-6AF6-FD812F9EABA5";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 9.2256053911143958 11 6.2607017528010456
		 21 10.646455027810791 31 -2.7931380687426048 41 9.2256053911143958 51 6.2607017528010456
		 61 10.646455027810791 71 -2.7931380687426048 81 9.2256053911143958;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		2;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		2;
	setAttr -s 9 ".kix[0:8]"  0.41666674613952637 0.41666668653488159 
		0.4166666567325592 0.41666662693023682 0.41666674613952637 0.41666662693023682 0.41666674613952637 
		0.41666650772094727 0.41666674613952637;
	setAttr -s 9 ".kiy[0:8]"  0.20976664125919342 0 0 0 0.20976664125919342 
		0 0 0 0.20976664125919342;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateX";
	rename -uid "F7CD484D-4E7D-5ED3-7E75-C6A855CA4E54";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.056873453259468076 11 0.063738601803779604
		 21 0.052928789258003234 31 0.063934238553047182 41 0.056873453259468076 51 0.063738601803779604
		 61 0.052928789258003234 71 0.063934238553047182 81 0.056873453259468076;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateY";
	rename -uid "93EFFF82-4F3E-76FE-A4A4-3E81CE1646B8";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.83703491210006176 11 0.77192901610396802
		 21 0.83750465392135087 31 0.75241615294478836 41 0.83703491210006176 51 0.77192901610396802
		 61 0.83750465392135087 71 0.75241615294478836 81 0.83703491210006176;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateZ";
	rename -uid "11A77E9A-43E1-1AE3-A167-FCB7D799EF72";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.028717621564865108 11 -0.0026844167709350586
		 21 0.044518604278564446 31 0.0040383517742156984 41 -0.028717621564865108 51 -0.0026844167709350586
		 61 0.044518604278564446 71 0.0040383517742156984 81 -0.028717621564865108;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 3.6618115901947021 0 -3.6618108749389648 
		0 3.6618108749389648 0 -3.6618101596832275 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 3.661811351776123 0 -3.6618118286132813 
		0 3.6618118286132813 0 -3.6618123054504395 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateZ";
	rename -uid "96DDA0CF-4EDB-81A9-FEF5-6A98B0C14B17";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 -47.939502190123385 11 -58.437210767770523
		 21 36.88278051513079 31 34.784213290413895 41 -47.939502190123385 51 -58.437210767770523
		 61 36.88278051513079 71 34.784213290413895 81 -47.93950076462189;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightHipEffector_translateX";
	rename -uid "1DBD2AE7-468B-9AD3-B8EB-F492FC17C6B4";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.10623183250427247 11 -0.11358755290508271
		 21 -0.10277806460857392 31 -0.124946928024292 41 -0.10623183250427247 51 -0.11358755290508271
		 61 -0.10277806460857392 71 -0.124946928024292 81 -0.10623183250427247;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightHipEffector_translateY";
	rename -uid "BCE43A03-4DDA-DEF5-108A-E0BB2B36C1C1";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.75304737474129069 11 0.76621383666060872
		 21 0.85673751830123368 31 0.76777439500496258 41 0.75304737474129069 51 0.76621383666060872
		 61 0.85673751830123368 71 0.76777439500496258 81 0.75304737474129069;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 3.9499385356903076 0 -4.4181046485900879 
		0 3.9499385356903076 0 -4.4181036949157715 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 3.9499382972717285 0 -4.4181060791015625 
		0 3.9499397277832031 0 -4.4181060791015625 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_RightHipEffector_translateZ";
	rename -uid "731BF8E0-43A1-D23D-C8D7-69A9E38764DF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.058785775005817414 11 0.0081721782684326151
		 21 -0.039030859470367427 31 0.0012723281979560852 41 0.058785775005817414 51 0.0081721782684326151
		 61 -0.039030859470367427 71 0.0012723281979560852 81 0.058785775005817414;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -4.8908319473266602 0 4.8908309936523437 
		0 -4.8908309936523437 0 4.8908305168151855 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -4.8908319473266602 0 4.8908324241638184 
		0 -4.8908324241638184 0 4.8908329010009766 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateY";
	rename -uid "1CB5AE5C-4E08-43B7-A7A8-6CBDF8FD97B0";
	setAttr ".tan" 2;
	setAttr -s 9 ".ktv[0:8]"  1 -3.7275399412662522 11 -5.5228564961152147
		 21 -6.2138820005589386 31 12.050506500367678 41 -3.7275399412662522 51 -5.5228564961152147
		 61 -6.2138820005589386 71 12.050506500367678 81 -3.7275396533033662;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateX";
	rename -uid "95D00287-4667-9E3B-561B-C9BB6824340F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -14.51605880256874 11 7.2228545905165573
		 21 -9.5855808252199743 31 -3.2564219338543419 41 -14.51605880256874 51 7.2228545905165573
		 61 -9.5855808252199743 71 -3.2564219338543419 81 -14.516058437201997;
	setAttr -s 9 ".kit[0:8]"  2 18 18 18 2 18 18 18 
		2;
	setAttr -s 9 ".kot[0:8]"  2 18 18 18 2 18 18 18 
		2;
createNode HIKState2FK -n "HIKState2FK1";
	rename -uid "64C69A37-47C4-F995-2B5B-B2A67753B7E9";
	setAttr ".ihi" 0;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.3132257461547852e-010 0 1;
	setAttr ".HipsGX" -type "matrix" 0.92037087678909302 0.1661415696144104 -0.35399794578552246 0
		 -0.157379150390625 0.98608148097991943 0.053621575236320496 0 0.35797953605651855 0.0063601657748222351 0.9337078332901001 0
		 -3.1789321899414062 83.807296752929688 0.96502101421356201 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.98560225963592529 -0.13758382201194763 0.098280273377895355 0
		 0.054416455328464508 0.80844956636428833 0.58604443073272705 0 -0.16008488833904266 -0.57225865125656128 0.80429655313491821 0
		 5.6873359680175781 83.368919372558594 -1.2950998544692993 1;
	setAttr ".LeftLegGX" -type "matrix" 0.99565023183822632 -0.074978470802307129 0.055304776877164841 0
		 -0.0031790584325790405 0.56591284275054932 0.82445889711380005 0 -0.093114361166954041 -0.8210485577583313 0.56321293115615845 0
		 3.8319525718688965 55.804027557373047 -21.276865005493164 1;
	setAttr ".LeftFootGX" -type "matrix" 0.98574602603912354 -0.073120124638080597 -0.15152119100093842 0
		 0.16799992322921753 0.47605636715888977 0.86321878433227539 0 0.0090139433741569519 -0.8763698935508728 0.48155477643013 0
		 3.9794416427612305 29.549129486083984 -59.526725769042969 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.98560631275177002 -0.16336986422538757 0.043479029089212418 0
		 0.11081697791814804 0.43010926246643066 -0.89594948291778564 0 0.12767042219638824 0.88787180185317993 0.44202262163162231 0
		 -10.672252655029297 80.415756225585937 4.9972114562988281 1;
	setAttr ".RightLegGX" -type "matrix" 0.97637468576431274 -0.20167328417301178 0.077593475580215454 0
		 0.076632946729660034 0.65891659259796143 0.7483026385307312 0 -0.20204025506973267 -0.72467738389968872 0.65880417823791504 0
		 -14.451116561889648 65.75115966796875 35.545661926269531 1;
	setAttr ".RightFootGX" -type "matrix" 0.9454948902130127 -0.13867057859897614 0.29463517665863037 0
		 -0.16028310358524323 0.58942019939422607 0.79176586866378784 0 -0.28345853090286255 -0.79583567380905151 0.53506720066070557 0
		 -18.006412506103516 35.181468963623047 0.82896804809570313 1;
	setAttr ".SpineGX" -type "matrix" 0.97953319549560547 -0.056839443743228912 0.19309163093566895 0
		 0.031321533024311066 0.99065816402435303 0.13272440433502197 0 -0.19883175194263458 -0.12396002560853958 0.97216272354125977 0
		 -3.677910327911377 92.242584228515625 3.626652717590332 1;
	setAttr ".LeftArmGX" -type "matrix" 0.45667374134063721 0.20051135122776031 0.86674350500106812 0
		 0.42030590772628784 0.81005263328552246 -0.40884923934936523 0 -0.78408676385879517 0.55100810527801514 0.28565368056297302 0
		 7.7183661460876465 120.10504150390625 25.549722671508789 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.89283919334411621 0.4495561420917511 -0.027156688272953033 0
		 0.42030397057533264 0.81004428863525391 -0.40886795520782471 0 -0.16181094944477081 -0.37646737694740295 -0.91218936443328857 0
		 17.666187286376953 124.47282409667969 44.430187225341797 1;
	setAttr ".LeftHandGX" -type "matrix" -0.89284133911132813 0.44955176115036011 -0.027155308052897453 0
		 0.24284717440605164 0.53133714199066162 0.81160736083984375 0 0.37928810715675354 0.71804207563400269 -0.58357185125350952 0
		 -0.251617431640625 133.49467468261719 43.885196685791016 1;
	setAttr ".RightArmGX" -type "matrix" 0.94769471883773804 0.0093229850754141808 0.31904232501983643 0
		 -0.30367565155029297 0.334074467420578 0.89228671789169312 0 -0.098265089094638824 -0.94250065088272095 0.31943175196647644 0
		 -16.184810638427734 125.04669189453125 6.3419890403747559 1;
	setAttr ".RightForeArmGX" -type "matrix" 0.87172240018844604 0.47540998458862305 0.11868511140346527 0
		 -0.30366265773773193 0.33404096961021423 0.89230382442474365 0 0.38456439971923828 -0.81388115882873535 0.43555513024330139 0
		 -36.828659057617188 124.84361267089844 -0.60778141021728516 1;
	setAttr ".RightHandGX" -type "matrix" 0.8717237114906311 0.47540649771690369 0.11868541687726974 0
		 -0.30366122722625732 0.33404085040092468 0.89230406284332275 0 0.38456135988235474 -0.81388282775878906 0.4355539083480835 0
		 -54.322685241699219 115.30291748046875 -2.989600658416748 1;
	setAttr ".HeadGX" -type "matrix" 0.99967497587203979 0.022947980090975761 -0.011132181622087955 0
		 -0.02182701975107193 0.99551242589950562 0.09208206832408905 0 0.013195319101214409 -0.091809123754501343 0.99568945169448853 0
		 -2.1828246116638184 138.37887573242187 22.981979370117188 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 0.93369042873382568 -0.2127966582775116 -0.28799381852149963 0
		 0.31497463583946228 0.87064367532730103 0.37785086035728455 0 0.17033451795578003 -0.44350633025169373 0.87993687391281128 0
		 2.6576004028320312 17.091085433959961 -62.114311218261719 1;
	setAttr ".RightToeBaseGX" -type "matrix" 0.9454951286315918 -0.13867011666297913 0.29463487863540649 0
		 -0.16028311848640442 0.5894201397895813 0.79176598787307739 0 -0.28345799446105957 -0.79583579301834106 0.53506731986999512 0
		 -19.401149749755859 22.550765991210938 -0.64269924163818359 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.52638435363769531 0.11592148244380951 0.84230756759643555 0
		 -0.3078424334526062 0.94943380355834961 0.061715751886367798 0 -0.79256093502044678 -0.29178419709205627 0.53545254468917847 0
		 2.5840363502502441 118.97434234619141 17.333889007568359 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.89643692970275879 -0.26029086112976074 0.35867759585380554 0
		 0.20669040083885193 0.96148687601089478 0.18116916716098785 0 -0.39202043414115906 -0.08827151358127594 0.91571187973022461 0
		 -7.4409999847412109 122.50782775878906 9.8405160903930664 1;
	setAttr ".NeckGX" -type "matrix" 0.28591573238372803 -0.48586401343345642 0.82594692707061768 0
		 0.053512305021286011 0.86867880821228027 0.4924769401550293 0 -0.95675939321517944 -0.096608586609363556 0.27436861395835876 0
		 -2.6675283908843994 130.44683837890625 18.483728408813477 1;
	setAttr ".Spine1GX" -type "matrix" 0.8564113974571228 -0.221152663230896 0.4665316641330719 0
		 0.046721912920475006 0.93310481309890747 0.35655754804611206 0 -0.51417636871337891 -0.28356254100799561 0.80945390462875366 0
		 -3.580113410949707 100.59584045410156 5.5894451141357422 1;
	setAttr ".Spine2GX" -type "matrix" 0.7708427906036377 -0.27169620990753174 0.57617896795272827 0
		 -0.086403839290142059 0.85153180360794067 0.51713413000106812 0 -0.63113820552825928 -0.44841331243515015 0.63292169570922852 0
		 -3.6198806762695313 108.32147216796875 9.3246726989746094 1;
createNode HIKState2FK -n "HIKState2FK2";
	rename -uid "90070049-4B8C-45BE-FBE0-6D828311C1B7";
	setAttr ".ihi" 0;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 9.3132257461547852e-010 0 1;
	setAttr ".HipsGX" -type "matrix" 0.92037087678909302 0.1661415696144104 -0.35399794578552246 0
		 -0.157379150390625 0.98608148097991943 0.053621575236320496 0 0.35797953605651855 0.0063601657748222351 0.9337078332901001 0
		 -3.1789321899414062 83.807296752929688 0.96502101421356201 1;
	setAttr ".LeftUpLegGX" -type "matrix" 0.98560225963592529 -0.13758382201194763 0.098280273377895355 0
		 0.054416455328464508 0.80844956636428833 0.58604443073272705 0 -0.16008488833904266 -0.57225865125656128 0.80429655313491821 0
		 5.6873359680175781 83.368919372558594 -1.2950998544692993 1;
	setAttr ".LeftLegGX" -type "matrix" 0.99565023183822632 -0.074978470802307129 0.055304776877164841 0
		 -0.0031790584325790405 0.56591284275054932 0.82445889711380005 0 -0.093114361166954041 -0.8210485577583313 0.56321293115615845 0
		 3.8319525718688965 55.804027557373047 -21.276865005493164 1;
	setAttr ".LeftFootGX" -type "matrix" 0.98574602603912354 -0.073120124638080597 -0.15152119100093842 0
		 0.16799992322921753 0.47605636715888977 0.86321878433227539 0 0.0090139433741569519 -0.8763698935508728 0.48155477643013 0
		 3.9794416427612305 29.549129486083984 -59.526725769042969 1;
	setAttr ".RightUpLegGX" -type "matrix" 0.98560631275177002 -0.16336986422538757 0.043479029089212418 0
		 0.11081697791814804 0.43010926246643066 -0.89594948291778564 0 0.12767042219638824 0.88787180185317993 0.44202262163162231 0
		 -10.672252655029297 80.415756225585937 4.9972114562988281 1;
	setAttr ".RightLegGX" -type "matrix" 0.97637468576431274 -0.20167328417301178 0.077593475580215454 0
		 0.076632946729660034 0.65891659259796143 0.7483026385307312 0 -0.20204025506973267 -0.72467738389968872 0.65880417823791504 0
		 -14.451116561889648 65.75115966796875 35.545661926269531 1;
	setAttr ".RightFootGX" -type "matrix" 0.9454948902130127 -0.13867057859897614 0.29463517665863037 0
		 -0.16028310358524323 0.58942019939422607 0.79176586866378784 0 -0.28345853090286255 -0.79583567380905151 0.53506720066070557 0
		 -18.006412506103516 35.181468963623047 0.82896804809570313 1;
	setAttr ".SpineGX" -type "matrix" 0.97953319549560547 -0.056839443743228912 0.19309163093566895 0
		 0.031321533024311066 0.99065816402435303 0.13272440433502197 0 -0.19883175194263458 -0.12396002560853958 0.97216272354125977 0
		 -3.677910327911377 92.242584228515625 3.626652717590332 1;
	setAttr ".LeftArmGX" -type "matrix" 0.45667374134063721 0.20051135122776031 0.86674350500106812 0
		 0.42030590772628784 0.81005263328552246 -0.40884923934936523 0 -0.78408676385879517 0.55100810527801514 0.28565368056297302 0
		 7.7183661460876465 120.10504150390625 25.549722671508789 1;
	setAttr ".LeftForeArmGX" -type "matrix" -0.89283919334411621 0.4495561420917511 -0.027156688272953033 0
		 0.42030397057533264 0.81004428863525391 -0.40886795520782471 0 -0.16181094944477081 -0.37646737694740295 -0.91218936443328857 0
		 17.666187286376953 124.47282409667969 44.430187225341797 1;
	setAttr ".LeftHandGX" -type "matrix" -0.89284133911132813 0.44955176115036011 -0.027155308052897453 0
		 0.24284717440605164 0.53133714199066162 0.81160736083984375 0 0.37928810715675354 0.71804207563400269 -0.58357185125350952 0
		 -0.251617431640625 133.49467468261719 43.885196685791016 1;
	setAttr ".RightArmGX" -type "matrix" 0.94769471883773804 0.0093229850754141808 0.31904232501983643 0
		 -0.30367565155029297 0.334074467420578 0.89228671789169312 0 -0.098265089094638824 -0.94250065088272095 0.31943175196647644 0
		 -16.184810638427734 125.04669189453125 6.3419890403747559 1;
	setAttr ".RightForeArmGX" -type "matrix" 0.87172240018844604 0.47540998458862305 0.11868511140346527 0
		 -0.30366265773773193 0.33404096961021423 0.89230382442474365 0 0.38456439971923828 -0.81388115882873535 0.43555513024330139 0
		 -36.828659057617188 124.84361267089844 -0.60778141021728516 1;
	setAttr ".RightHandGX" -type "matrix" 0.8717237114906311 0.47540649771690369 0.11868541687726974 0
		 -0.30366122722625732 0.33404085040092468 0.89230406284332275 0 0.38456135988235474 -0.81388282775878906 0.4355539083480835 0
		 -54.322685241699219 115.30291748046875 -2.989600658416748 1;
	setAttr ".HeadGX" -type "matrix" 0.99967497587203979 0.022947980090975761 -0.011132181622087955 0
		 -0.02182701975107193 0.99551242589950562 0.09208206832408905 0 0.013195319101214409 -0.091809123754501343 0.99568945169448853 0
		 -2.1828246116638184 138.37887573242187 22.981979370117188 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 0.93369042873382568 -0.2127966582775116 -0.28799381852149963 0
		 0.31497463583946228 0.87064367532730103 0.37785086035728455 0 0.17033451795578003 -0.44350633025169373 0.87993687391281128 0
		 2.6576004028320312 17.091085433959961 -62.114311218261719 1;
	setAttr ".RightToeBaseGX" -type "matrix" 0.9454951286315918 -0.13867011666297913 0.29463487863540649 0
		 -0.16028311848640442 0.5894201397895813 0.79176598787307739 0 -0.28345799446105957 -0.79583579301834106 0.53506731986999512 0
		 -19.401149749755859 22.550765991210938 -0.64269924163818359 1;
	setAttr ".LeftShoulderGX" -type "matrix" 0.52638435363769531 0.11592148244380951 0.84230756759643555 0
		 -0.3078424334526062 0.94943380355834961 0.061715751886367798 0 -0.79256093502044678 -0.29178419709205627 0.53545254468917847 0
		 2.5840363502502441 118.97434234619141 17.333889007568359 1;
	setAttr ".RightShoulderGX" -type "matrix" 0.89643692970275879 -0.26029086112976074 0.35867759585380554 0
		 0.20669040083885193 0.96148687601089478 0.18116916716098785 0 -0.39202043414115906 -0.08827151358127594 0.91571187973022461 0
		 -7.4409999847412109 122.50782775878906 9.8405160903930664 1;
	setAttr ".NeckGX" -type "matrix" 0.28591573238372803 -0.48586401343345642 0.82594692707061768 0
		 0.053512305021286011 0.86867880821228027 0.4924769401550293 0 -0.95675939321517944 -0.096608586609363556 0.27436861395835876 0
		 -2.6675283908843994 130.44683837890625 18.483728408813477 1;
	setAttr ".Spine1GX" -type "matrix" 0.8564113974571228 -0.221152663230896 0.4665316641330719 0
		 0.046721912920475006 0.93310481309890747 0.35655754804611206 0 -0.51417636871337891 -0.28356254100799561 0.80945390462875366 0
		 -3.580113410949707 100.59584045410156 5.5894451141357422 1;
	setAttr ".Spine2GX" -type "matrix" 0.7708427906036377 -0.27169620990753174 0.57617896795272827 0
		 -0.086403839290142059 0.85153180360794067 0.51713413000106812 0 -0.63113820552825928 -0.44841331243515015 0.63292169570922852 0
		 -3.6198806762695313 108.32147216796875 9.3246726989746094 1;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Hips_rotateX";
	rename -uid "10772F74-4D52-2CB1-FBAE-1FB1372D98FF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 21.253617721180518 11 5.6509903716248768
		 21 -28.273024850544189 31 -0.82885643407948395 41 21.253617721180518 51 5.6509903716248768
		 61 -28.273024850544189 71 -0.82885643407948395 81 21.253617721180518;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.43220153450965881 0 0.43220141530036926 
		0 -0.43220141530036926 0 0.43220135569572449 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.43220150470733643 0 0.4322015643119812 
		0 -0.4322015643119812 0 0.43220162391662598 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Hips_rotateY";
	rename -uid "43E890E7-4D1B-F5D7-428C-799FF4A57E33";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 9.054805272384705 11 2.1534864652138719
		 21 -5.9296912971053688 31 0.71808670134453412 41 9.054805272384705 51 2.1534864652138719
		 61 -5.9296912971053688 71 0.71808670134453412 81 9.054805272384705;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.13076440989971161 0 0.13076438009738922 
		0 -0.13076438009738922 0 0.13076436519622803 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.13076439499855042 0 0.1307644248008728 
		0 -0.1307644248008728 0 0.130764439702034 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Hips_rotateZ";
	rename -uid "7927F065-4D4D-FC72-F472-D8A9185A8DE3";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 3.1125897240488531 11 2.6418679717478089
		 21 2.0905399839173082 31 0.45578058769890195 41 3.1125897240488531 51 2.6418679717478089
		 61 2.0905399839173082 71 0.45578058769890195 81 3.1125897240488531;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.0089190667495131493 -0.019077213481068611 
		0 0 -0.008919064886868 -0.01907721720635891 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.0089190667495131493 -0.019077211618423462 
		0 0 -0.0089190676808357239 -0.019077206030488014 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Hips_translateX";
	rename -uid "CBB140A3-4824-2F86-41EA-FFAC8A59CD07";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.031789247393608097 11 -0.025559795989781326
		 21 -0.020995900630950928 31 -0.024737207889556884 41 -0.031789247393608097 51 -0.025559795989781326
		 61 -0.020995900630950928 71 -0.024737207889556884 81 -0.031789247393608097;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0.53966736793518066 0 -0.53966724872589111 
		0 0.53966724872589111 0 -0.53966718912124634 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0.53966736793518066 0 -0.53966742753982544 
		0 0.53966742753982544 0 -0.53966748714447021 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Hips_translateY";
	rename -uid "5B28E607-4C74-935D-22A4-FC9FF9931B67";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.84141860960982739 11 0.76457624530627144
		 21 0.84274692918465011 31 0.74714428331062666 41 0.84141860960982739 51 0.76457624530627144
		 61 0.84274692918465011 71 0.74714428331062666 81 0.84141860960982739;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "player_QuickRigCharacter_Ctrl_Hips_translateZ";
	rename -uid "315CF4C0-4819-3A70-9001-55BD18B0C2A2";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.0061164224147796618 11 -0.0053481232564915179
		 21 -0.0055847904086112976 31 -0.0065579864382743838 41 -0.0061164224147796618 51 -0.0053481232564915179
		 61 -0.0055847904086112976 71 -0.0065579864382743838 81 -0.0061164224147796618;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.060493163764476776 0 0 0 -0.060493174940347672 
		0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.060493160039186478 0 0 0 -0.060493141412734985 
		0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateX";
	rename -uid "31A620F8-4635-8C48-204F-0B9653C003EA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 31.821637066866803 11 10.249003953824889
		 21 6.1645613574329259 31 -3.8891628192232828 41 31.821637066866803 51 10.249003953824889
		 61 6.1645613574329259 71 -3.8891628192232828 81 31.821637066866803;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.21386092901229858 -0.12337879091501236 
		0 0 -0.21386085450649261 -0.12337881326675415 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.21386091411113739 -0.12337878346443176 
		0 0 -0.21386091411113739 -0.12337874621152878 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateY";
	rename -uid "021A611B-4773-6002-E26B-9CA1BFF8AD83";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -1.3202155467421459 11 -9.7713622562370581
		 21 -28.975457139414111 31 3.9662670787223266 41 -1.3202155467421459 51 -9.7713622562370581
		 61 -28.975457139414111 71 3.9662670787223266 81 -1.3202155467421459;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.24133752286434174 0 0 0 -0.24133747816085815 
		0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.24133750796318054 0 0 0 -0.24133753776550293 
		0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateZ";
	rename -uid "6621A135-4B25-2A0D-872A-FD878CDABDEE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 34.884273729197716 11 19.8677471833463
		 21 -68.308884879437628 31 -45.387803173928255 41 34.884273729197716 51 19.8677471833463
		 61 -68.308884879437628 71 -45.387803173928255 81 34.884273729197716;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.78626346588134766 0 0.90053004026412964 
		0 -0.78626346588134766 0 0.90052992105484009 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -0.78626340627670288 0 0.90053033828735352 
		0 -0.78626370429992676 0 0.90053045749664307 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftLeg_rotateX";
	rename -uid "D3FEB6E4-46E9-A90C-4702-78A20C8C63FB";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -4.3896714854537899 11 13.865123448222192
		 21 -0.13217871282035204 31 -3.6940687560759375 41 -4.3896714854537899 51 13.865123448222192
		 61 -0.13217871282035204 71 -3.6940687560759375 81 -4.3896714854537899;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.1532328724861145 -0.03642166405916214 
		0 0 -0.15323290228843689 -0.036421652883291245 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.15323285758495331 -0.036421675235033035 
		0 0 -0.15323281288146973 -0.036421675235033035 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftLeg_rotateY";
	rename -uid "2A9D6094-4DE0-617B-6E73-B494C62ABD5B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.001967216050285965 11 0.00028026184073993163
		 21 0.00072061442514501854 31 -0.00020258673722435688 41 0.001967216050285965 51 0.00028026184073993163
		 61 0.00072061442514501854 71 -0.00020258673722435688 81 0.001967216050285965;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftLeg_rotateZ";
	rename -uid "EFF51449-4253-1955-01BC-B38EA58F32EF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 19.866210291330074 11 114.98406846435526
		 21 114.36565684672526 31 3.6452387067504866 41 19.866210291330074 51 114.98406846435526
		 61 114.36565684672526 71 3.6452387067504866 81 19.866210291330074;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.032379955053329468 0 0 0 -0.032379955053329468 
		0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.032379955053329468 0 0 0 -0.032379936426877975 
		0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFoot_rotateZ";
	rename -uid "2AFCBCDA-48FD-D117-0A22-518C0A8DAC91";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 4.93959873690003 11 25.315300186724336
		 21 -21.489066968643531 31 11.134586137636079 41 4.93959873690003 51 25.315300186724336
		 61 -21.489066968643531 71 11.134586137636079 81 4.93959873690003;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFoot_rotateX";
	rename -uid "043EDD45-4189-1C40-A010-499C9684150F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -11.65435907046094 11 4.5569695263273697
		 21 -16.977040299084159 31 1.6393877017023069 41 -11.65435907046094 51 4.5569695263273697
		 61 -16.977040299084159 71 1.6393877017023069 81 -11.65435907046094;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftFoot_rotateY";
	rename -uid "CB10D635-42E5-0651-7077-E6A3854168E6";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 2.3532206628861596 11 7.3875095231792587
		 21 8.090998028435159 31 -7.2569907191796776 41 2.3532206628861596 51 7.3875095231792587
		 61 8.090998028435159 71 -7.2569907191796776 81 2.3532206628861596;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0.036834575235843658 0 0 0 0.036834560334682465 
		0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0.03683457151055336 0 0 0 0.03683457151055336 
		0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateZ";
	rename -uid "637F8753-4E4C-D09D-2C4D-C099F9C7C979";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -35.335270262818412 11 18.95476353178373
		 21 10.293702947323888 31 -0.12541852314029459 41 -35.335270262818412 51 18.95476353178373
		 61 10.293702947323888 71 -0.12541852314029459 81 -35.335270262818412;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.16650600731372833 -0.39818784594535828 
		0 0 -0.16650605201721191 -0.3981877863407135 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.16650599241256714 -0.39818796515464783 
		0 0 -0.16650594770908356 -0.3981880247592926 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateY";
	rename -uid "409C691E-4284-8A11-1475-C3B3EF478879";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -3.8420774942209555 11 6.7463136157411023
		 21 5.2384376207584333 31 3.2600845275581247 41 -3.8420774942209555 51 6.7463136157411023
		 61 5.2384376207584333 71 3.2600845275581247 81 -3.8420774942209555;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.030423089861869812 -0.079242430627346039 
		0 0 -0.030423097312450409 -0.079242423176765442 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.030423087999224663 -0.07924245297908783 
		0 0 -0.030423078685998917 -0.079242467880249023 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateX";
	rename -uid "824AD744-45AE-9AB9-A53C-CFA9DBF997B0";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -10.952663993022149 11 -9.4574679913406339
		 21 -10.363422551277615 31 -11.137661568435259 41 -10.952663993022149 51 -9.4574679913406339
		 61 -10.363422551277615 71 -11.137661568435259 81 -10.952663993022149;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.014662455767393112 0 0 0 -0.014662459492683411 
		0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.014662454836070538 0 0 0 -0.014662451110780239 
		0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateY";
	rename -uid "E7DD8BE5-4A65-D7EC-1C35-C8A23C47026E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 27.98651126054774 11 -1.5735853689665433
		 21 5.7156123128560683 31 13.141319213393833 41 27.98651126054774 51 -1.5735853689665433
		 61 5.7156123128560683 71 13.141319213393833 81 27.98651126054774;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.12841176986694336 0.1943502277135849 
		0 0 0.12841179966926575 0.19435019791126251 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.12841176986694336 0.19435028731822968 
		0 0 0.12841172516345978 0.19435031712055206 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateZ";
	rename -uid "E948DE65-4F9D-69D4-D76E-64A8011DD581";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -58.584742725054376 11 -58.893434980281484
		 21 36.403997995433606 31 20.062430080445157 41 -58.584742725054376 51 -58.893434980281484
		 61 36.403997995433606 71 20.062430080445157 81 -58.584742725054376;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.8289330005645752 0 0 0 -0.82893288135528564 
		0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.8289332389831543 0 0 0 -0.82893335819244385 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateX";
	rename -uid "E1C11C1E-4457-F676-A65D-CAB324516EBD";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 2.3598541391391215 11 7.4849803627023554
		 21 -35.888286576110346 31 -3.5320456928347017 41 2.3598541391391215 51 7.4849803627023554
		 61 -35.888286576110346 71 -3.5320456928347017 81 2.3598541391391215;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0.30849906802177429 0 0 0 0.30849897861480713 
		0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.30849915742874146 0 0 0 0.30849915742874146 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightLeg_rotateX";
	rename -uid "FE9A5F58-4611-6078-89AF-8A88E517339B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 5.2404256281155162 11 2.1227409911243451
		 21 6.6892074357106814 31 -17.970400880691916 41 5.2404256281155162 51 2.1227409911243451
		 61 6.6892074357106814 71 -17.970400880691916 81 5.2404256281155162;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightLeg_rotateY";
	rename -uid "C4FC0BE4-4416-D7AF-9071-DCB277370E45";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.020917866930303623 11 8.8576708408292653e-005
		 21 -0.00017242415793556912 31 -0.0011546658392165804 41 0.020917866930303623 51 8.8576708408292653e-005
		 61 -0.00017242415793556912 71 -0.0011546658392165804 81 0.020917866930303623;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -1.3665974620380439e-005 -1.0849338650587015e-005 
		0 0 -1.3665969163412228e-005 -1.084934137907112e-005 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -1.3665973710885737e-005 -1.0849337741092313e-005 
		0 0 -1.3665973710885737e-005 -1.0849335012608208e-005 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightLeg_rotateZ";
	rename -uid "24153FE2-4458-3F47-AE71-328B3D000FA3";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 127.11147378527598 11 35.00171064121777
		 21 3.1270796468199333 31 133.02869750297162 41 127.11147378527598 51 35.00171064121777
		 61 3.1270796468199333 71 133.02869750297162 81 127.11147378527598;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 -1.0819680690765381 0 0 0 -1.081967830657959 
		0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 -1.0819679498672485 0 0 0 -1.0819680690765381 
		0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFoot_rotateX";
	rename -uid "B7CF5882-4A9F-BC0A-46F7-2E951C25829E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 27.721934680183367 11 -2.7021975307796109
		 21 1.4282494996319199 31 1.6387984605949575 41 27.721934680183367 51 -2.7021975307796109
		 61 1.4282494996319199 71 1.6387984605949575 81 27.721934680183367;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.011024318635463715 0.01102431770414114 
		0 0 0.011024324223399162 0.01102431770414114 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.01102431770414114 0.011024321429431438 
		0 0 0.01102431770414114 0.011024324223399162 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFoot_rotateY";
	rename -uid "F31BCB77-4D04-9BF0-E0A1-46A4598352EA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -8.4986637772828946 11 10.172126397853894
		 21 5.7947933061831343 31 -9.8327293095433124 41 -8.4986637772828946 51 10.172126397853894
		 61 5.7947933061831343 71 -9.8327293095433124 81 -8.4986637772828946;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.1745753139257431 0 0 0 -0.17457534372806549 
		0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.17457529902458191 0 0 0 -0.17457525432109833 
		0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightFoot_rotateZ";
	rename -uid "1B4CD19C-401C-89E3-FE17-D497A2983DF6";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -22.569139076386033 11 19.353289189960812
		 21 7.5447861349243013 31 -14.63067248202692 41 -22.569139076386033 51 19.353289189960812
		 61 7.5447861349243013 71 -14.63067248202692 81 -22.569139076386033;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.29656603932380676 -0.26279354095458984 
		0 0 -0.29656609892845154 -0.26279351115226746 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.29656600952148438 -0.26279360055923462 
		0 0 -0.29656592011451721 -0.26279366016387939 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightToeBase_rotateX";
	rename -uid "AB2FF943-493B-7ABF-5E55-B59A5A31846E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 11 1.2687130795719286e-005 21 3.8258351696250985e-005
		 31 -3.8455597102598814e-006 41 0 51 1.2687130795719286e-005 61 3.8258351696250985e-005
		 71 -3.8455597102598814e-006 81 0;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightToeBase_rotateY";
	rename -uid "2065108D-4F3F-4B49-7AF5-3284F312840D";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -3.6586504768770434e-005 11 -4.7196863722070326e-005
		 21 -9.8287339890524626e-006 31 -4.456740530873532e-005 41 -3.6586504768770434e-005
		 51 -4.7196863722070326e-005 61 -9.8287339890524626e-006 71 -4.456740530873532e-005
		 81 -3.6586504768770434e-005;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightToeBase_rotateZ";
	rename -uid "CD0930B0-4D47-14CB-CAC6-FF86511FB281";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 11 7.2317440787278336e-028 21 -46.049385391135061
		 31 5.184310051344008e-021 41 0 51 7.2317440787278336e-028 61 -46.049385391135061
		 71 5.184310051344008e-021 81 4.4805545957070176e-021;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 1 18 18 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.41666668653488159 0.4166666567325592 
		0.41666662693023682 1 0.41666662693023682 0.41666674613952637 0.41666650772094727 
		1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.4166666567325592 0.41666662693023682 
		0.41666674613952637 1 0.41666674613952637 0.41666650772094727 0.41666674613952637 
		1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine_rotateX";
	rename -uid "DDA7CCEB-4A0D-F1E8-A122-69A7027654C4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -34.189152666576049 21 15.714034363708564
		 41 -34.189152666576049 61 15.714034363708564 81 -34.189152666576049;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine_rotateY";
	rename -uid "903924F4-4D5B-08D6-A9BF-68A3A391E45F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -5.2352721513729854 21 -2.1624502092656877
		 41 -5.2352721513729854 61 -2.1624502092656877 81 -5.2352721513729854;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine_rotateZ";
	rename -uid "680F8F6E-40CF-44E3-7974-8092EB5C73E3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 7.283246248581019 21 -1.8182633897714802
		 41 7.283246248581019 61 -1.8182633897714802 81 7.283246248581019;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine1_rotateX";
	rename -uid "6453D667-4751-6C92-36FB-11A9531C61EA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -19.624384902383376 21 16.133871842139257
		 41 -19.624384902383376 61 16.133871842139257 81 -19.624384902383376;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine1_rotateY";
	rename -uid "98C70A8B-41D1-4658-7F64-01BB8525B4E9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -1.6237956706166554 21 5.4229595661076289
		 41 -1.6237956706166554 61 5.4229595661076289 81 -1.6237956706166554;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine1_rotateZ";
	rename -uid "8660002F-44EA-4858-339F-D395C4608BB8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 12.50995149707375 21 8.1875220714831212
		 41 12.50995149707375 61 8.1875220714831212 81 12.50995149707375;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine2_rotateX";
	rename -uid "B6A354DB-4709-7219-6D33-2A92C50B13E9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -8.4737915039571483 21 7.2026755735942469
		 41 -8.4737915039571483 61 7.2026755735942469 81 -8.4737915039571483;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine2_rotateY";
	rename -uid "4E4A3546-4665-633D-7DA8-C4B341FA0F61";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -0.4674527950320691 21 4.3739452705525839
		 41 -0.4674527950320691 61 4.3739452705525839 81 -0.4674527950320691;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Spine2_rotateZ";
	rename -uid "9B49CF09-499F-B8B7-C338-63A84FD2E82B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 12.926825800104492 21 12.625882834704063
		 41 12.926825800104492 61 12.625882834704063 81 12.926825800104492;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateX";
	rename -uid "710F134C-4EE8-ABBA-AAA8-749CBAAB1C72";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -11.218761668550519 21 19.209786613829621
		 41 -11.218761668550519 61 19.209786613829621 81 -11.218761668550519;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateY";
	rename -uid "C7AFF602-4F32-8BF3-8ABF-BD9F586DFC56";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -8.5639334393734607 21 37.583946907796246
		 41 -8.5639334393734607 61 37.583946907796246 81 -8.5639334393734607;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateZ";
	rename -uid "F1516466-4D44-7632-15C6-8680C439685D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 29.625365776687065 21 -23.495178854482191
		 41 29.625365776687065 61 -23.495178854482191 81 29.625365776687065;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftArm_rotateX";
	rename -uid "6D3AC82F-4649-5DEB-CBCD-67A8818F308E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -51.84619741116849 21 20.31088292418718
		 41 -51.84619741116849 61 20.31088292418718 81 -51.84619741116849;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftArm_rotateY";
	rename -uid "A92F1591-4385-DD98-99AB-5EB0E6DE481B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -5.9280932770932688 21 44.604135849584644
		 41 -5.9280932770932688 61 44.604135849584644 81 -5.9280932770932688;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftArm_rotateZ";
	rename -uid "15B2DF30-4EE7-C197-9836-F7B76905C96F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -2.5153217288597847 21 0.76536530000940417
		 41 -2.5153217288597847 61 0.76536530000940417 81 -2.5153217288597847;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateX";
	rename -uid "C9AC4E98-487C-D829-AC56-45B3FC17D96E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.0011705351841964371 21 0.011998214464783883
		 41 0.0011705351841964371 61 0.011998214464783883 81 0.0011705351841964371;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateY";
	rename -uid "E71C010B-4C91-AECA-88EB-6889F9B58312";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 8.6098684911367829e-005 21 -0.0028683317430302875
		 41 8.6098684911367829e-005 61 -0.0028683317430302875 81 8.6098684911367829e-005;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateZ";
	rename -uid "D900D23B-4529-DAA6-D5F9-A5BDEE43B31D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 109.94591620588939 21 74.228419625568677
		 41 109.94591620588939 61 74.228419625568677 81 109.94591620588939;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHand_rotateX";
	rename -uid "2641143E-4C8C-80EB-C3B6-56A9C144AF1B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -78.425866383586623 21 -6.3867741594258784e-005
		 41 -78.425866383586623 61 -6.3867741594258784e-005 81 -78.425866383586623;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHand_rotateY";
	rename -uid "9CB0D84C-425A-161F-F42F-009CAC8A3C07";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 -0.0002871829877454639 21 -0.00018274734073969235
		 41 -0.0002871829877454639 61 -0.00018274734073969235 81 -0.0002871829877454639;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_LeftHand_rotateZ";
	rename -uid "0B624C58-41B4-BDAD-3053-3B92870B1B45";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 3.8892197950213546e-005 21 9.7185548141103849e-005
		 41 3.8892197950213546e-005 61 9.7185548141103849e-005 81 3.8892197950213546e-005;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 0.83333331346511841 1 0.83333337306976318 
		1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.83333337306976318 1 0.83333325386047363 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulder_rotateZ";
	rename -uid "892F0B6E-4014-D607-48E9-92A98597769E";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -6.6916506746711235 2 -6.6916506746711235
		 21 11.507889500728963 41 -6.6916506746711235 42 -6.6916506746711235 61 11.507889500728963
		 81 -6.6916506746711235;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulder_rotateY";
	rename -uid "03261FE0-46A4-4C42-E2E8-DBAD59C7DD04";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 12.829047399856176 2 12.829047399856176
		 21 -22.036147363610993 41 12.829047399856176 42 12.829047399856176 61 -22.036147363610993
		 81 12.829047399856176;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightShoulder_rotateX";
	rename -uid "05EB6D97-4FE6-E361-3F1A-069A5F2EAFE2";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -27.28198018234345 2 -27.28198018234345
		 21 -28.825877720706028 41 -27.28198018234345 42 -27.28198018234345 61 -28.825877720706028
		 81 -27.28198018234345;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightArm_rotateZ";
	rename -uid "299B817B-454E-476F-E543-5FA40539CA58";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -4.7670867887987765 2 -4.7670867887987765
		 21 12.685718374476629 41 -4.7670867887987765 42 -4.7670867887987765 61 12.685718374476629
		 81 -4.7670867887987765;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightArm_rotateY";
	rename -uid "C8AF4AD4-40DC-1EF3-B2F4-7EB5B7F08146";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 15.226999497809702 2 15.226999497809702
		 21 29.053971634217426 41 15.226999497809702 42 15.226999497809702 61 29.053971634217426
		 81 15.226999497809702;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightArm_rotateX";
	rename -uid "0A8F0DD9-4FC2-C16D-F6A0-A4B8A7BA9AD6";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 64.190456528258807 2 64.190456528258807
		 21 64.092652419255188 41 64.190456528258807 42 64.190456528258807 61 64.092652419255188
		 81 64.190456528258807;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightForeArm_rotateZ";
	rename -uid "0C4A75F3-4DE2-634F-1D27-BB901445A7CA";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 29.723976557993662 2 29.723976557993662
		 21 0.10818088404714894 41 29.723976557993662 42 29.723976557993662 61 0.10818088404714894
		 81 29.723976557993662;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightForeArm_rotateY";
	rename -uid "E03E37F6-49BB-2962-7317-00A29A72BEEE";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.00014096673005157813 2 -0.00014096673005157813
		 21 -0.00024049822709483403 41 -0.00014096673005157813 42 -0.00014096673005157813
		 61 -0.00024049822709483403 81 -0.00014096673005157813;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightForeArm_rotateX";
	rename -uid "1D26F432-478A-3343-AAE6-9581BD7FA1A0";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 0.0022654482179812409 2 0.0022654482179812409
		 21 0.0022819748372076595 41 0.0022654482179812409 42 0.0022654482179812409 61 0.0022819748372076595
		 81 0.0022654482179812409;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHand_rotateZ";
	rename -uid "640BE508-4805-F091-2DD4-6BB0A6F81B48";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -0.00020795863569868971 2 -0.00020795863569868971
		 21 -0.00017710397336317333 41 -0.00020795863569868971 42 -0.00020795863569868971
		 61 -0.00017710397336317333 81 -0.00020795863569868971;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHand_rotateY";
	rename -uid "33232178-42EF-2544-EA29-07AB7B5CB903";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -7.8803117717733006e-005 2 -7.8803117717733006e-005
		 21 -6.382509984604035e-005 41 -7.8803117717733006e-005 42 -7.8803117717733006e-005
		 61 -6.382509984604035e-005 81 -7.8803117717733006e-005;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_RightHand_rotateX";
	rename -uid "7C3A718C-4107-D2E8-33AA-13BF27BF54D8";
	setAttr ".tan" 1;
	setAttr -s 7 ".ktv[0:6]"  1 -2.8110708202947851e-005 2 -2.8110708202947851e-005
		 21 -2.5677307123678274e-005 41 -2.8110708202947851e-005 42 -2.8110708202947851e-005
		 61 -2.5677307123678274e-005 81 -2.8110708202947851e-005;
	setAttr -s 7 ".kit[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kot[0:6]"  18 1 1 18 1 1 1;
	setAttr -s 7 ".kix[1:6]"  0.83333331346511841 1 0.83333337306976318 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.83333331346511841 1 0.041666626930236816 
		0.83333331346511841 1 0.83333331346511841;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Neck_rotateX";
	rename -uid "0CDFF666-4871-DE64-8B8C-F59A747AFAC0";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -33.738896989372954 11 -48.069953396724003
		 21 -58.916954468316767 31 -45.795193269323796 41 -33.738896989372954 51 -48.069953396724003
		 61 -58.916954468316767 71 -47.491029997519874 75 -40.327911289329194 76 -39.610821593759034
		 77 -38.110490953075129 78 -35.84572412192319 79 -34.925788339915322 80 -34.528682168950255
		 81 -33.738896989372954;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.2197200208902359 0 0.21971997618675232 
		0 -0.21971997618675232 0 0.23174279928207397 0.11002843081951141 0.019350698217749596 
		0.03285657986998558 0.027791773900389671 0.011493392288684845 0.010357551276683807 
		0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.21972000598907471 0 0.21972003579139709 
		0 -0.21972003579139709 0 0.092697203159332275 0.027507148683071136 0.019350588321685791 
		0.032856766134500504 0.027791773900389671 0.011493326164782047 0.010357610881328583 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Neck_rotateY";
	rename -uid "0A1CD5F6-4CB5-2C23-E80C-A7BB96EABA90";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -5.0909695015997425 11 -5.708079924620808
		 21 -7.2595382164655593 31 -7.443897186530366 41 -5.0909695015997425 51 -5.708079924620808
		 61 -7.2595382164655593 71 -6.8360338983207818 75 -6.2568970319015298 76 -5.5633188146255552
		 77 -5.1910408618194879 78 -4.528171623594214 79 -4.7056246392781711 80 -4.855827714665284
		 81 -5.0909695015997425;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.018924333155155182 0 0 0 -0.018924329429864883 
		0 0.012499561533331871 0.017770450562238693 0.0093013765290379524 0.0090333372354507446 
		0 -0.0028593470342457294 -0.0033627587836235762 0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.018924331292510033 0 0 0 -0.018924335017800331 
		0 0.0049998285248875618 0.0044426186941564083 0.0093013234436511993 0.0090333893895149231 
		0 -0.0028593307361006737 -0.0033627778757363558 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Neck_rotateZ";
	rename -uid "819AD02D-4DB6-7641-124F-6A9F3666CE18";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -6.4375274757311578 11 -1.2686688489447673
		 21 2.3367851083886042 31 -1.2226132457704242 41 -6.4375274757311578 51 -1.2686688489447673
		 61 2.3367851083886042 71 -0.96843822330204088 75 -4.8875908260578624 76 -5.764863799060775
		 77 -5.9534018767037749 78 -5.7868988280216938 79 -5.998253028192245 80 -6.1691481204827632
		 81 -6.4375274757311578;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 0.076570324599742889 0 -0.076570309698581696 
		0 0.076570309698581696 0 -0.090063653886318207 -0.066970713436603546 -0.0093009825795888901 
		0 0 -0.0033357639331370592 -0.0038333816919475794 0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 0.076570324599742889 0 -0.076570332050323486 
		0 0.076570332050323486 0 -0.036025494337081909 -0.016742702573537827 -0.009300929494202137 
		0 0 -0.0033357448410242796 -0.0038334035780280828 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Head_rotateZ";
	rename -uid "AB9F7A82-402F-0289-4BD3-649F3BCDEE0F";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 -3.150269850080083 11 -7.2856141491725781
		 21 -11.420956191770889 31 -7.9709554194138583 41 -3.150269850080083 51 -7.2856141491725781
		 61 -11.420956191770889 71 -7.9709720624192748 75 -6.1053755091824984 76 -5.5819713670093689
		 77 -4.7705768886915774 78 -3.226408917175954 79 -3.1510799488842647 80 -3.1498741337339542
		 81 -3.150269850080083;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.072175361216068268 0 0.072175346314907074 
		0 -0.072175346314907074 0 0.066267400979995728 0.033356733620166779 0.011648348532617092 
		0.020556101575493813 0.0039442153647542 6.3136692915577441e-005 0 0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.072175353765487671 0 0.072175361216068268 
		0 -0.072175361216068268 0 0.026506982743740082 0.0083391955122351646 0.011648282408714294 
		0.020556218922138214 0.0039442153647542 6.3136336393654346e-005 0 0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Head_rotateX";
	rename -uid "731E7B70-4BC4-2811-17A8-849CEDC8E6B7";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 73.044627449029392 11 57.969063562868733
		 21 46.66496511133073 31 60.400748343118181 41 73.044627449029392 51 57.969063562868733
		 61 46.66496511133073 71 58.611136665980524 75 66.06915601059265 76 66.751893378693396
		 77 68.33199477779803 78 70.788500133039648 79 71.77657114295252 80 72.200813176410321
		 81 73.044627449029392;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.23020599782466888 0 0.2302059531211853 
		0 -0.2302059531211853 0 0.24190495908260345 0.11366637051105499 0.019747050479054451 
		0.035225939005613327 0.030059600248932838 0.01232479140162468 0.011065847240388393 
		0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.23020598292350769 0 0.23020601272583008 
		0 -0.23020601272583008 0 0.096762068569660187 0.028416633605957031 0.019746936857700348 
		0.035226140171289444 0.030059600248932838 0.012324720621109009 0.011065910570323467 
		0;
createNode animCurveTA -n "player_QuickRigCharacter_Ctrl_Head_rotateY";
	rename -uid "70C76AA5-4BF2-EEC1-2387-97A8DD8DC282";
	setAttr ".tan" 18;
	setAttr -s 15 ".ktv[0:14]"  1 24.44813321195015 11 20.720496733513368
		 21 16.992914779076294 31 20.10263596611453 41 24.44813321195015 51 20.720496733513368
		 61 16.992914779076294 71 20.102549207280425 75 22.582709355113536 76 23.394431367719786
		 77 23.862572916061158 78 24.423694399370447 79 24.447350210282131 80 24.447584352719591
		 81 24.44813321195015;
	setAttr -s 15 ".kit[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kot[0:14]"  1 18 1 18 1 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 15 ".kix[0:14]"  1 0.41666668653488159 1 0.41666662693023682 
		1 0.41666662693023682 1 0.41666650772094727 0.16666674613952637 0.041666746139526367 
		0.041666507720947266 0.041666746139526367 0.041666746139526367 0.041666507720947266 
		1;
	setAttr -s 15 ".kiy[0:14]"  0 -0.065059058368206024 0 0.06505904346704483 
		0 -0.06505904346704483 0 0.069685928523540497 0.045963332056999207 0.011168948374688625 
		0.0089819887652993202 0.0012386153684929013 1.2259739378350787e-005 0 0;
	setAttr -s 15 ".kox[0:14]"  1 0.4166666567325592 1 0.41666674613952637 
		1 0.41666674613952637 1 0.16666674613952637 0.041666746139526367 0.041666507720947266 
		0.041666746139526367 0.041666746139526367 0.041666507720947266 0.041666746139526367 
		1;
	setAttr -s 15 ".koy[0:14]"  0 -0.065059050917625427 0 0.065059065818786621 
		0 -0.065059065818786621 0 0.02787439338862896 0.011490849778056145 0.011168885044753551 
		0.0089820399880409241 0.0012386153684929013 1.225966934725875e-005 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.20190844 0.12718201 0.45100001 ;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "player_QuickRigCharacter_Reference_rotateZ.o" "QuickRigCharacter_Reference.rz"
		;
connectAttr "player_QuickRigCharacter_Reference_rotateY.o" "QuickRigCharacter_Reference.ry"
		;
connectAttr "player_QuickRigCharacter_Reference_rotateX.o" "QuickRigCharacter_Reference.rx"
		;
connectAttr "player_QuickRigCharacter_Reference_translateZ.o" "QuickRigCharacter_Reference.tz"
		;
connectAttr "player_QuickRigCharacter_Reference_translateY.o" "QuickRigCharacter_Reference.ty"
		;
connectAttr "player_QuickRigCharacter_Reference_translateX.o" "QuickRigCharacter_Reference.tx"
		;
connectAttr "QuickRigCharacter_Reference_scaleX.o" "QuickRigCharacter_Reference.sx"
		;
connectAttr "QuickRigCharacter_Reference_scaleY.o" "QuickRigCharacter_Reference.sy"
		;
connectAttr "QuickRigCharacter_Reference_scaleZ.o" "QuickRigCharacter_Reference.sz"
		;
connectAttr "QuickRigCharacter_Hips_scaleX.o" "QuickRigCharacter_Hips.sx";
connectAttr "QuickRigCharacter_Hips_scaleY.o" "QuickRigCharacter_Hips.sy";
connectAttr "QuickRigCharacter_Hips_scaleZ.o" "QuickRigCharacter_Hips.sz";
connectAttr "QuickRigCharacter_Hips_translateX.o" "QuickRigCharacter_Hips.tx";
connectAttr "QuickRigCharacter_Hips_translateY.o" "QuickRigCharacter_Hips.ty";
connectAttr "QuickRigCharacter_Hips_translateZ.o" "QuickRigCharacter_Hips.tz";
connectAttr "QuickRigCharacter_Hips_rotateX.o" "QuickRigCharacter_Hips.rx";
connectAttr "QuickRigCharacter_Hips_rotateY.o" "QuickRigCharacter_Hips.ry";
connectAttr "QuickRigCharacter_Hips_rotateZ.o" "QuickRigCharacter_Hips.rz";
connectAttr "QuickRigCharacter_Hips.s" "QuickRigCharacter_LeftUpLeg.is";
connectAttr "QuickRigCharacter_LeftUpLeg_scaleX.o" "QuickRigCharacter_LeftUpLeg.sx"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_scaleY.o" "QuickRigCharacter_LeftUpLeg.sy"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_scaleZ.o" "QuickRigCharacter_LeftUpLeg.sz"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_translateX.o" "QuickRigCharacter_LeftUpLeg.tx"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_translateY.o" "QuickRigCharacter_LeftUpLeg.ty"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_translateZ.o" "QuickRigCharacter_LeftUpLeg.tz"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_rotateX.o" "QuickRigCharacter_LeftUpLeg.rx"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_rotateY.o" "QuickRigCharacter_LeftUpLeg.ry"
		;
connectAttr "QuickRigCharacter_LeftUpLeg_rotateZ.o" "QuickRigCharacter_LeftUpLeg.rz"
		;
connectAttr "QuickRigCharacter_LeftUpLeg.s" "QuickRigCharacter_LeftLeg.is";
connectAttr "QuickRigCharacter_LeftLeg_scaleX.o" "QuickRigCharacter_LeftLeg.sx";
connectAttr "QuickRigCharacter_LeftLeg_scaleY.o" "QuickRigCharacter_LeftLeg.sy";
connectAttr "QuickRigCharacter_LeftLeg_scaleZ.o" "QuickRigCharacter_LeftLeg.sz";
connectAttr "QuickRigCharacter_LeftLeg_translateX.o" "QuickRigCharacter_LeftLeg.tx"
		;
connectAttr "QuickRigCharacter_LeftLeg_translateY.o" "QuickRigCharacter_LeftLeg.ty"
		;
connectAttr "QuickRigCharacter_LeftLeg_translateZ.o" "QuickRigCharacter_LeftLeg.tz"
		;
connectAttr "QuickRigCharacter_LeftLeg_rotateX.o" "QuickRigCharacter_LeftLeg.rx"
		;
connectAttr "QuickRigCharacter_LeftLeg_rotateY.o" "QuickRigCharacter_LeftLeg.ry"
		;
connectAttr "QuickRigCharacter_LeftLeg_rotateZ.o" "QuickRigCharacter_LeftLeg.rz"
		;
connectAttr "QuickRigCharacter_LeftLeg.s" "QuickRigCharacter_LeftFoot.is";
connectAttr "QuickRigCharacter_LeftFoot_scaleX.o" "QuickRigCharacter_LeftFoot.sx"
		;
connectAttr "QuickRigCharacter_LeftFoot_scaleY.o" "QuickRigCharacter_LeftFoot.sy"
		;
connectAttr "QuickRigCharacter_LeftFoot_scaleZ.o" "QuickRigCharacter_LeftFoot.sz"
		;
connectAttr "QuickRigCharacter_LeftFoot_translateX.o" "QuickRigCharacter_LeftFoot.tx"
		;
connectAttr "QuickRigCharacter_LeftFoot_translateY.o" "QuickRigCharacter_LeftFoot.ty"
		;
connectAttr "QuickRigCharacter_LeftFoot_translateZ.o" "QuickRigCharacter_LeftFoot.tz"
		;
connectAttr "QuickRigCharacter_LeftFoot_rotateX.o" "QuickRigCharacter_LeftFoot.rx"
		;
connectAttr "QuickRigCharacter_LeftFoot_rotateY.o" "QuickRigCharacter_LeftFoot.ry"
		;
connectAttr "QuickRigCharacter_LeftFoot_rotateZ.o" "QuickRigCharacter_LeftFoot.rz"
		;
connectAttr "QuickRigCharacter_LeftFoot.s" "QuickRigCharacter_LeftToeBase.is";
connectAttr "QuickRigCharacter_LeftToeBase_translateX.o" "QuickRigCharacter_LeftToeBase.tx"
		;
connectAttr "QuickRigCharacter_LeftToeBase_translateY.o" "QuickRigCharacter_LeftToeBase.ty"
		;
connectAttr "QuickRigCharacter_LeftToeBase_translateZ.o" "QuickRigCharacter_LeftToeBase.tz"
		;
connectAttr "QuickRigCharacter_LeftToeBase_rotateX.o" "QuickRigCharacter_LeftToeBase.rx"
		;
connectAttr "QuickRigCharacter_LeftToeBase_rotateY.o" "QuickRigCharacter_LeftToeBase.ry"
		;
connectAttr "QuickRigCharacter_LeftToeBase_rotateZ.o" "QuickRigCharacter_LeftToeBase.rz"
		;
connectAttr "QuickRigCharacter_LeftToeBase_scaleX.o" "QuickRigCharacter_LeftToeBase.sx"
		;
connectAttr "QuickRigCharacter_LeftToeBase_scaleY.o" "QuickRigCharacter_LeftToeBase.sy"
		;
connectAttr "QuickRigCharacter_LeftToeBase_scaleZ.o" "QuickRigCharacter_LeftToeBase.sz"
		;
connectAttr "QuickRigCharacter_Hips.s" "QuickRigCharacter_RightUpLeg.is";
connectAttr "QuickRigCharacter_RightUpLeg_scaleX.o" "QuickRigCharacter_RightUpLeg.sx"
		;
connectAttr "QuickRigCharacter_RightUpLeg_scaleY.o" "QuickRigCharacter_RightUpLeg.sy"
		;
connectAttr "QuickRigCharacter_RightUpLeg_scaleZ.o" "QuickRigCharacter_RightUpLeg.sz"
		;
connectAttr "QuickRigCharacter_RightUpLeg_translateX.o" "QuickRigCharacter_RightUpLeg.tx"
		;
connectAttr "QuickRigCharacter_RightUpLeg_translateY.o" "QuickRigCharacter_RightUpLeg.ty"
		;
connectAttr "QuickRigCharacter_RightUpLeg_translateZ.o" "QuickRigCharacter_RightUpLeg.tz"
		;
connectAttr "QuickRigCharacter_RightUpLeg_rotateX.o" "QuickRigCharacter_RightUpLeg.rx"
		;
connectAttr "QuickRigCharacter_RightUpLeg_rotateY.o" "QuickRigCharacter_RightUpLeg.ry"
		;
connectAttr "QuickRigCharacter_RightUpLeg_rotateZ.o" "QuickRigCharacter_RightUpLeg.rz"
		;
connectAttr "QuickRigCharacter_RightUpLeg.s" "QuickRigCharacter_RightLeg.is";
connectAttr "QuickRigCharacter_RightLeg_scaleX.o" "QuickRigCharacter_RightLeg.sx"
		;
connectAttr "QuickRigCharacter_RightLeg_scaleY.o" "QuickRigCharacter_RightLeg.sy"
		;
connectAttr "QuickRigCharacter_RightLeg_scaleZ.o" "QuickRigCharacter_RightLeg.sz"
		;
connectAttr "QuickRigCharacter_RightLeg_translateX.o" "QuickRigCharacter_RightLeg.tx"
		;
connectAttr "QuickRigCharacter_RightLeg_translateY.o" "QuickRigCharacter_RightLeg.ty"
		;
connectAttr "QuickRigCharacter_RightLeg_translateZ.o" "QuickRigCharacter_RightLeg.tz"
		;
connectAttr "QuickRigCharacter_RightLeg_rotateX.o" "QuickRigCharacter_RightLeg.rx"
		;
connectAttr "QuickRigCharacter_RightLeg_rotateY.o" "QuickRigCharacter_RightLeg.ry"
		;
connectAttr "QuickRigCharacter_RightLeg_rotateZ.o" "QuickRigCharacter_RightLeg.rz"
		;
connectAttr "QuickRigCharacter_RightLeg.s" "QuickRigCharacter_RightFoot.is";
connectAttr "QuickRigCharacter_RightFoot_scaleX.o" "QuickRigCharacter_RightFoot.sx"
		;
connectAttr "QuickRigCharacter_RightFoot_scaleY.o" "QuickRigCharacter_RightFoot.sy"
		;
connectAttr "QuickRigCharacter_RightFoot_scaleZ.o" "QuickRigCharacter_RightFoot.sz"
		;
connectAttr "QuickRigCharacter_RightFoot_translateX.o" "QuickRigCharacter_RightFoot.tx"
		;
connectAttr "QuickRigCharacter_RightFoot_translateY.o" "QuickRigCharacter_RightFoot.ty"
		;
connectAttr "QuickRigCharacter_RightFoot_translateZ.o" "QuickRigCharacter_RightFoot.tz"
		;
connectAttr "QuickRigCharacter_RightFoot_rotateX.o" "QuickRigCharacter_RightFoot.rx"
		;
connectAttr "QuickRigCharacter_RightFoot_rotateY.o" "QuickRigCharacter_RightFoot.ry"
		;
connectAttr "QuickRigCharacter_RightFoot_rotateZ.o" "QuickRigCharacter_RightFoot.rz"
		;
connectAttr "QuickRigCharacter_RightFoot.s" "QuickRigCharacter_RightToeBase.is";
connectAttr "QuickRigCharacter_RightToeBase_translateX.o" "QuickRigCharacter_RightToeBase.tx"
		;
connectAttr "QuickRigCharacter_RightToeBase_translateY.o" "QuickRigCharacter_RightToeBase.ty"
		;
connectAttr "QuickRigCharacter_RightToeBase_translateZ.o" "QuickRigCharacter_RightToeBase.tz"
		;
connectAttr "QuickRigCharacter_RightToeBase_rotateX.o" "QuickRigCharacter_RightToeBase.rx"
		;
connectAttr "QuickRigCharacter_RightToeBase_rotateY.o" "QuickRigCharacter_RightToeBase.ry"
		;
connectAttr "QuickRigCharacter_RightToeBase_rotateZ.o" "QuickRigCharacter_RightToeBase.rz"
		;
connectAttr "QuickRigCharacter_RightToeBase_scaleX.o" "QuickRigCharacter_RightToeBase.sx"
		;
connectAttr "QuickRigCharacter_RightToeBase_scaleY.o" "QuickRigCharacter_RightToeBase.sy"
		;
connectAttr "QuickRigCharacter_RightToeBase_scaleZ.o" "QuickRigCharacter_RightToeBase.sz"
		;
connectAttr "QuickRigCharacter_Hips.s" "QuickRigCharacter_Spine.is";
connectAttr "QuickRigCharacter_Spine_scaleX.o" "QuickRigCharacter_Spine.sx";
connectAttr "QuickRigCharacter_Spine_scaleY.o" "QuickRigCharacter_Spine.sy";
connectAttr "QuickRigCharacter_Spine_scaleZ.o" "QuickRigCharacter_Spine.sz";
connectAttr "QuickRigCharacter_Spine_translateX.o" "QuickRigCharacter_Spine.tx";
connectAttr "QuickRigCharacter_Spine_translateY.o" "QuickRigCharacter_Spine.ty";
connectAttr "QuickRigCharacter_Spine_translateZ.o" "QuickRigCharacter_Spine.tz";
connectAttr "QuickRigCharacter_Spine_rotateX.o" "QuickRigCharacter_Spine.rx";
connectAttr "QuickRigCharacter_Spine_rotateY.o" "QuickRigCharacter_Spine.ry";
connectAttr "QuickRigCharacter_Spine_rotateZ.o" "QuickRigCharacter_Spine.rz";
connectAttr "QuickRigCharacter_Spine.s" "QuickRigCharacter_Spine1.is";
connectAttr "QuickRigCharacter_Spine1_scaleX.o" "QuickRigCharacter_Spine1.sx";
connectAttr "QuickRigCharacter_Spine1_scaleY.o" "QuickRigCharacter_Spine1.sy";
connectAttr "QuickRigCharacter_Spine1_scaleZ.o" "QuickRigCharacter_Spine1.sz";
connectAttr "QuickRigCharacter_Spine1_translateX.o" "QuickRigCharacter_Spine1.tx"
		;
connectAttr "QuickRigCharacter_Spine1_translateY.o" "QuickRigCharacter_Spine1.ty"
		;
connectAttr "QuickRigCharacter_Spine1_translateZ.o" "QuickRigCharacter_Spine1.tz"
		;
connectAttr "QuickRigCharacter_Spine1_rotateX.o" "QuickRigCharacter_Spine1.rx";
connectAttr "QuickRigCharacter_Spine1_rotateY.o" "QuickRigCharacter_Spine1.ry";
connectAttr "QuickRigCharacter_Spine1_rotateZ.o" "QuickRigCharacter_Spine1.rz";
connectAttr "QuickRigCharacter_Spine1.s" "QuickRigCharacter_Spine2.is";
connectAttr "QuickRigCharacter_Spine2_scaleX.o" "QuickRigCharacter_Spine2.sx";
connectAttr "QuickRigCharacter_Spine2_scaleY.o" "QuickRigCharacter_Spine2.sy";
connectAttr "QuickRigCharacter_Spine2_scaleZ.o" "QuickRigCharacter_Spine2.sz";
connectAttr "QuickRigCharacter_Spine2_translateX.o" "QuickRigCharacter_Spine2.tx"
		;
connectAttr "QuickRigCharacter_Spine2_translateY.o" "QuickRigCharacter_Spine2.ty"
		;
connectAttr "QuickRigCharacter_Spine2_translateZ.o" "QuickRigCharacter_Spine2.tz"
		;
connectAttr "QuickRigCharacter_Spine2_rotateX.o" "QuickRigCharacter_Spine2.rx";
connectAttr "QuickRigCharacter_Spine2_rotateY.o" "QuickRigCharacter_Spine2.ry";
connectAttr "QuickRigCharacter_Spine2_rotateZ.o" "QuickRigCharacter_Spine2.rz";
connectAttr "QuickRigCharacter_Spine2.s" "QuickRigCharacter_LeftShoulder.is";
connectAttr "QuickRigCharacter_LeftShoulder_scaleX.o" "QuickRigCharacter_LeftShoulder.sx"
		;
connectAttr "QuickRigCharacter_LeftShoulder_scaleY.o" "QuickRigCharacter_LeftShoulder.sy"
		;
connectAttr "QuickRigCharacter_LeftShoulder_scaleZ.o" "QuickRigCharacter_LeftShoulder.sz"
		;
connectAttr "QuickRigCharacter_LeftShoulder_translateX.o" "QuickRigCharacter_LeftShoulder.tx"
		;
connectAttr "QuickRigCharacter_LeftShoulder_translateY.o" "QuickRigCharacter_LeftShoulder.ty"
		;
connectAttr "QuickRigCharacter_LeftShoulder_translateZ.o" "QuickRigCharacter_LeftShoulder.tz"
		;
connectAttr "QuickRigCharacter_LeftShoulder_rotateX.o" "QuickRigCharacter_LeftShoulder.rx"
		;
connectAttr "QuickRigCharacter_LeftShoulder_rotateY.o" "QuickRigCharacter_LeftShoulder.ry"
		;
connectAttr "QuickRigCharacter_LeftShoulder_rotateZ.o" "QuickRigCharacter_LeftShoulder.rz"
		;
connectAttr "QuickRigCharacter_LeftShoulder.s" "QuickRigCharacter_LeftArm.is";
connectAttr "QuickRigCharacter_LeftArm_scaleX.o" "QuickRigCharacter_LeftArm.sx";
connectAttr "QuickRigCharacter_LeftArm_scaleY.o" "QuickRigCharacter_LeftArm.sy";
connectAttr "QuickRigCharacter_LeftArm_scaleZ.o" "QuickRigCharacter_LeftArm.sz";
connectAttr "QuickRigCharacter_LeftArm_translateX.o" "QuickRigCharacter_LeftArm.tx"
		;
connectAttr "QuickRigCharacter_LeftArm_translateY.o" "QuickRigCharacter_LeftArm.ty"
		;
connectAttr "QuickRigCharacter_LeftArm_translateZ.o" "QuickRigCharacter_LeftArm.tz"
		;
connectAttr "QuickRigCharacter_LeftArm_rotateX.o" "QuickRigCharacter_LeftArm.rx"
		;
connectAttr "QuickRigCharacter_LeftArm_rotateY.o" "QuickRigCharacter_LeftArm.ry"
		;
connectAttr "QuickRigCharacter_LeftArm_rotateZ.o" "QuickRigCharacter_LeftArm.rz"
		;
connectAttr "QuickRigCharacter_LeftArm.s" "QuickRigCharacter_LeftForeArm.is";
connectAttr "QuickRigCharacter_LeftForeArm_scaleX.o" "QuickRigCharacter_LeftForeArm.sx"
		;
connectAttr "QuickRigCharacter_LeftForeArm_scaleY.o" "QuickRigCharacter_LeftForeArm.sy"
		;
connectAttr "QuickRigCharacter_LeftForeArm_scaleZ.o" "QuickRigCharacter_LeftForeArm.sz"
		;
connectAttr "QuickRigCharacter_LeftForeArm_translateX.o" "QuickRigCharacter_LeftForeArm.tx"
		;
connectAttr "QuickRigCharacter_LeftForeArm_translateY.o" "QuickRigCharacter_LeftForeArm.ty"
		;
connectAttr "QuickRigCharacter_LeftForeArm_translateZ.o" "QuickRigCharacter_LeftForeArm.tz"
		;
connectAttr "QuickRigCharacter_LeftForeArm_rotateX.o" "QuickRigCharacter_LeftForeArm.rx"
		;
connectAttr "QuickRigCharacter_LeftForeArm_rotateY.o" "QuickRigCharacter_LeftForeArm.ry"
		;
connectAttr "QuickRigCharacter_LeftForeArm_rotateZ.o" "QuickRigCharacter_LeftForeArm.rz"
		;
connectAttr "QuickRigCharacter_LeftForeArm.s" "QuickRigCharacter_LeftHand.is";
connectAttr "QuickRigCharacter_LeftHand_translateX.o" "QuickRigCharacter_LeftHand.tx"
		;
connectAttr "QuickRigCharacter_LeftHand_translateY.o" "QuickRigCharacter_LeftHand.ty"
		;
connectAttr "QuickRigCharacter_LeftHand_translateZ.o" "QuickRigCharacter_LeftHand.tz"
		;
connectAttr "QuickRigCharacter_LeftHand_rotateX.o" "QuickRigCharacter_LeftHand.rx"
		;
connectAttr "QuickRigCharacter_LeftHand_rotateY.o" "QuickRigCharacter_LeftHand.ry"
		;
connectAttr "QuickRigCharacter_LeftHand_rotateZ.o" "QuickRigCharacter_LeftHand.rz"
		;
connectAttr "QuickRigCharacter_LeftHand_scaleX.o" "QuickRigCharacter_LeftHand.sx"
		;
connectAttr "QuickRigCharacter_LeftHand_scaleY.o" "QuickRigCharacter_LeftHand.sy"
		;
connectAttr "QuickRigCharacter_LeftHand_scaleZ.o" "QuickRigCharacter_LeftHand.sz"
		;
connectAttr "QuickRigCharacter_Spine2.s" "QuickRigCharacter_RightShoulder.is";
connectAttr "QuickRigCharacter_RightShoulder_scaleX.o" "QuickRigCharacter_RightShoulder.sx"
		;
connectAttr "QuickRigCharacter_RightShoulder_scaleY.o" "QuickRigCharacter_RightShoulder.sy"
		;
connectAttr "QuickRigCharacter_RightShoulder_scaleZ.o" "QuickRigCharacter_RightShoulder.sz"
		;
connectAttr "QuickRigCharacter_RightShoulder_translateX.o" "QuickRigCharacter_RightShoulder.tx"
		;
connectAttr "QuickRigCharacter_RightShoulder_translateY.o" "QuickRigCharacter_RightShoulder.ty"
		;
connectAttr "QuickRigCharacter_RightShoulder_translateZ.o" "QuickRigCharacter_RightShoulder.tz"
		;
connectAttr "QuickRigCharacter_RightShoulder_rotateX.o" "QuickRigCharacter_RightShoulder.rx"
		;
connectAttr "QuickRigCharacter_RightShoulder_rotateY.o" "QuickRigCharacter_RightShoulder.ry"
		;
connectAttr "QuickRigCharacter_RightShoulder_rotateZ.o" "QuickRigCharacter_RightShoulder.rz"
		;
connectAttr "QuickRigCharacter_RightShoulder.s" "QuickRigCharacter_RightArm.is";
connectAttr "QuickRigCharacter_RightArm_scaleX.o" "QuickRigCharacter_RightArm.sx"
		;
connectAttr "QuickRigCharacter_RightArm_scaleY.o" "QuickRigCharacter_RightArm.sy"
		;
connectAttr "QuickRigCharacter_RightArm_scaleZ.o" "QuickRigCharacter_RightArm.sz"
		;
connectAttr "QuickRigCharacter_RightArm_translateX.o" "QuickRigCharacter_RightArm.tx"
		;
connectAttr "QuickRigCharacter_RightArm_translateY.o" "QuickRigCharacter_RightArm.ty"
		;
connectAttr "QuickRigCharacter_RightArm_translateZ.o" "QuickRigCharacter_RightArm.tz"
		;
connectAttr "QuickRigCharacter_RightArm_rotateX.o" "QuickRigCharacter_RightArm.rx"
		;
connectAttr "QuickRigCharacter_RightArm_rotateY.o" "QuickRigCharacter_RightArm.ry"
		;
connectAttr "QuickRigCharacter_RightArm_rotateZ.o" "QuickRigCharacter_RightArm.rz"
		;
connectAttr "QuickRigCharacter_RightArm.s" "QuickRigCharacter_RightForeArm.is";
connectAttr "QuickRigCharacter_RightForeArm_scaleX.o" "QuickRigCharacter_RightForeArm.sx"
		;
connectAttr "QuickRigCharacter_RightForeArm_scaleY.o" "QuickRigCharacter_RightForeArm.sy"
		;
connectAttr "QuickRigCharacter_RightForeArm_scaleZ.o" "QuickRigCharacter_RightForeArm.sz"
		;
connectAttr "QuickRigCharacter_RightForeArm_translateX.o" "QuickRigCharacter_RightForeArm.tx"
		;
connectAttr "QuickRigCharacter_RightForeArm_translateY.o" "QuickRigCharacter_RightForeArm.ty"
		;
connectAttr "QuickRigCharacter_RightForeArm_translateZ.o" "QuickRigCharacter_RightForeArm.tz"
		;
connectAttr "QuickRigCharacter_RightForeArm_rotateX.o" "QuickRigCharacter_RightForeArm.rx"
		;
connectAttr "QuickRigCharacter_RightForeArm_rotateY.o" "QuickRigCharacter_RightForeArm.ry"
		;
connectAttr "QuickRigCharacter_RightForeArm_rotateZ.o" "QuickRigCharacter_RightForeArm.rz"
		;
connectAttr "QuickRigCharacter_RightForeArm.s" "QuickRigCharacter_RightHand.is";
connectAttr "QuickRigCharacter_RightHand_translateX.o" "QuickRigCharacter_RightHand.tx"
		;
connectAttr "QuickRigCharacter_RightHand_translateY.o" "QuickRigCharacter_RightHand.ty"
		;
connectAttr "QuickRigCharacter_RightHand_translateZ.o" "QuickRigCharacter_RightHand.tz"
		;
connectAttr "QuickRigCharacter_RightHand_rotateX.o" "QuickRigCharacter_RightHand.rx"
		;
connectAttr "QuickRigCharacter_RightHand_rotateY.o" "QuickRigCharacter_RightHand.ry"
		;
connectAttr "QuickRigCharacter_RightHand_rotateZ.o" "QuickRigCharacter_RightHand.rz"
		;
connectAttr "QuickRigCharacter_RightHand_scaleX.o" "QuickRigCharacter_RightHand.sx"
		;
connectAttr "QuickRigCharacter_RightHand_scaleY.o" "QuickRigCharacter_RightHand.sy"
		;
connectAttr "QuickRigCharacter_RightHand_scaleZ.o" "QuickRigCharacter_RightHand.sz"
		;
connectAttr "QuickRigCharacter_Spine2.s" "QuickRigCharacter_Neck.is";
connectAttr "QuickRigCharacter_Neck_scaleX.o" "QuickRigCharacter_Neck.sx";
connectAttr "QuickRigCharacter_Neck_scaleY.o" "QuickRigCharacter_Neck.sy";
connectAttr "QuickRigCharacter_Neck_scaleZ.o" "QuickRigCharacter_Neck.sz";
connectAttr "QuickRigCharacter_Neck_translateX.o" "QuickRigCharacter_Neck.tx";
connectAttr "QuickRigCharacter_Neck_translateY.o" "QuickRigCharacter_Neck.ty";
connectAttr "QuickRigCharacter_Neck_translateZ.o" "QuickRigCharacter_Neck.tz";
connectAttr "QuickRigCharacter_Neck_rotateX.o" "QuickRigCharacter_Neck.rx";
connectAttr "QuickRigCharacter_Neck_rotateY.o" "QuickRigCharacter_Neck.ry";
connectAttr "QuickRigCharacter_Neck_rotateZ.o" "QuickRigCharacter_Neck.rz";
connectAttr "QuickRigCharacter_Neck.s" "QuickRigCharacter_Head.is";
connectAttr "QuickRigCharacter_Head_translateX.o" "QuickRigCharacter_Head.tx";
connectAttr "QuickRigCharacter_Head_translateY.o" "QuickRigCharacter_Head.ty";
connectAttr "QuickRigCharacter_Head_translateZ.o" "QuickRigCharacter_Head.tz";
connectAttr "QuickRigCharacter_Head_rotateX.o" "QuickRigCharacter_Head.rx";
connectAttr "QuickRigCharacter_Head_rotateY.o" "QuickRigCharacter_Head.ry";
connectAttr "QuickRigCharacter_Head_rotateZ.o" "QuickRigCharacter_Head.rz";
connectAttr "QuickRigCharacter_Head_scaleX.o" "QuickRigCharacter_Head.sx";
connectAttr "QuickRigCharacter_Head_scaleY.o" "QuickRigCharacter_Head.sy";
connectAttr "QuickRigCharacter_Head_scaleZ.o" "QuickRigCharacter_Head.sz";
connectAttr "player_QuickRigCharacter_Ctrl_Reference_rotateZ.o" "QuickRigCharacter_Ctrl_Reference.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Reference_rotateY.o" "QuickRigCharacter_Ctrl_Reference.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Reference_rotateX.o" "QuickRigCharacter_Ctrl_Reference.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Reference_translateZ.o" "QuickRigCharacter_Ctrl_Reference.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Reference_translateY.o" "QuickRigCharacter_Ctrl_Reference.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Reference_translateX.o" "QuickRigCharacter_Ctrl_Reference.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_HipsEffector.uagx"
		;
connectAttr "HIKState2Effector1.HipsEffectorGXM[0]" "QuickRigCharacter_Ctrl_HipsEffector.agx"
		;
connectAttr "HIKState2Effector2.HipsEffectorGXM[0]" "QuickRigCharacter_Ctrl_HipsEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_rotateZ.o" "QuickRigCharacter_Ctrl_HipsEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_rotateY.o" "QuickRigCharacter_Ctrl_HipsEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_rotateX.o" "QuickRigCharacter_Ctrl_HipsEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_translateZ.o" "QuickRigCharacter_Ctrl_HipsEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_translateY.o" "QuickRigCharacter_Ctrl_HipsEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HipsEffector_translateX.o" "QuickRigCharacter_Ctrl_HipsEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftAnkleEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftAnkleEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftAnkleEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftAnkleEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftAnkleEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightAnkleEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightAnkleEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightAnkleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightAnkleEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightAnkleEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateY.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightAnkleEffector_translateX.o" "QuickRigCharacter_Ctrl_RightAnkleEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftWristEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftWristEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftWristEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftWristEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftWristEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftWristEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftWristEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftWristEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftWristEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftWristEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftWristEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightWristEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightWristEffector.agx"
		;
connectAttr "HIKState2Effector2.RightWristEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightWristEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightWristEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightWristEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightWristEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightWristEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_translateY.o" "QuickRigCharacter_Ctrl_RightWristEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightWristEffector_translateX.o" "QuickRigCharacter_Ctrl_RightWristEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftKneeEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftKneeEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftKneeEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftKneeEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftKneeEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightKneeEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.RightKneeEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightKneeEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightKneeEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightKneeEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightKneeEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightKneeEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateY.o" "QuickRigCharacter_Ctrl_RightKneeEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightKneeEffector_translateX.o" "QuickRigCharacter_Ctrl_RightKneeEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftElbowEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftElbowEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftElbowEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftElbowEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftElbowEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightElbowEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.RightElbowEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightElbowEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightElbowEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightElbowEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightElbowEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightElbowEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateY.o" "QuickRigCharacter_Ctrl_RightElbowEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightElbowEffector_translateX.o" "QuickRigCharacter_Ctrl_RightElbowEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_ChestOriginEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestOriginEffectorGXM[0]" "QuickRigCharacter_Ctrl_ChestOriginEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestOriginEffectorGXM[0]" "QuickRigCharacter_Ctrl_ChestOriginEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateZ.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateY.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_rotateX.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateZ.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateY.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestOriginEffector_translateX.o" "QuickRigCharacter_Ctrl_ChestOriginEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_ChestEndEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestEndEffectorGXM[0]" "QuickRigCharacter_Ctrl_ChestEndEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestEndEffectorGXM[0]" "QuickRigCharacter_Ctrl_ChestEndEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateZ.o" "QuickRigCharacter_Ctrl_ChestEndEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateY.o" "QuickRigCharacter_Ctrl_ChestEndEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_rotateX.o" "QuickRigCharacter_Ctrl_ChestEndEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateZ.o" "QuickRigCharacter_Ctrl_ChestEndEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateY.o" "QuickRigCharacter_Ctrl_ChestEndEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_ChestEndEffector_translateX.o" "QuickRigCharacter_Ctrl_ChestEndEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftFootEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftFootEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftFootEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftFootEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftFootEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftFootEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftFootEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftFootEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftFootEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftFootEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFootEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftFootEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightFootEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightFootEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightFootEffector.agx"
		;
connectAttr "HIKState2Effector2.RightFootEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightFootEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightFootEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightFootEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightFootEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightFootEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_translateY.o" "QuickRigCharacter_Ctrl_RightFootEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFootEffector_translateX.o" "QuickRigCharacter_Ctrl_RightFootEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftShoulderEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftShoulderEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftShoulderEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulderEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftShoulderEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightShoulderEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.RightShoulderEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightShoulderEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateY.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulderEffector_translateX.o" "QuickRigCharacter_Ctrl_RightShoulderEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_HeadEffector.uagx"
		;
connectAttr "HIKState2Effector1.HeadEffectorGXM[0]" "QuickRigCharacter_Ctrl_HeadEffector.agx"
		;
connectAttr "HIKState2Effector2.HeadEffectorGXM[0]" "QuickRigCharacter_Ctrl_HeadEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_rotateZ.o" "QuickRigCharacter_Ctrl_HeadEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_rotateY.o" "QuickRigCharacter_Ctrl_HeadEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_rotateX.o" "QuickRigCharacter_Ctrl_HeadEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_translateZ.o" "QuickRigCharacter_Ctrl_HeadEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_translateY.o" "QuickRigCharacter_Ctrl_HeadEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_HeadEffector_translateX.o" "QuickRigCharacter_Ctrl_HeadEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftHipEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHipEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftHipEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHipEffectorGXM[0]" "QuickRigCharacter_Ctrl_LeftHipEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateZ.o" "QuickRigCharacter_Ctrl_LeftHipEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateY.o" "QuickRigCharacter_Ctrl_LeftHipEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_rotateX.o" "QuickRigCharacter_Ctrl_LeftHipEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateZ.o" "QuickRigCharacter_Ctrl_LeftHipEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateY.o" "QuickRigCharacter_Ctrl_LeftHipEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHipEffector_translateX.o" "QuickRigCharacter_Ctrl_LeftHipEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightHipEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHipEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightHipEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHipEffectorGXM[0]" "QuickRigCharacter_Ctrl_RightHipEffector.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateZ.o" "QuickRigCharacter_Ctrl_RightHipEffector.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateY.o" "QuickRigCharacter_Ctrl_RightHipEffector.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_rotateX.o" "QuickRigCharacter_Ctrl_RightHipEffector.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_translateZ.o" "QuickRigCharacter_Ctrl_RightHipEffector.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_translateY.o" "QuickRigCharacter_Ctrl_RightHipEffector.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHipEffector_translateX.o" "QuickRigCharacter_Ctrl_RightHipEffector.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Hips.uagx"
		;
connectAttr "HIKState2FK1.HipsGX" "QuickRigCharacter_Ctrl_Hips.agx";
connectAttr "HIKState2FK2.HipsGX" "QuickRigCharacter_Ctrl_Hips.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Hips_rotateZ.o" "QuickRigCharacter_Ctrl_Hips.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Hips_rotateY.o" "QuickRigCharacter_Ctrl_Hips.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Hips_rotateX.o" "QuickRigCharacter_Ctrl_Hips.rx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Hips_translateZ.o" "QuickRigCharacter_Ctrl_Hips.tz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Hips_translateY.o" "QuickRigCharacter_Ctrl_Hips.ty"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Hips_translateX.o" "QuickRigCharacter_Ctrl_Hips.tx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftUpLeg.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Hips.s" "QuickRigCharacter_Ctrl_LeftUpLeg.is"
		;
connectAttr "HIKState2FK1.LeftUpLegGX" "QuickRigCharacter_Ctrl_LeftUpLeg.agx";
connectAttr "HIKState2FK2.LeftUpLegGX" "QuickRigCharacter_Ctrl_LeftUpLeg.atx";
connectAttr "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateZ.o" "QuickRigCharacter_Ctrl_LeftUpLeg.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateY.o" "QuickRigCharacter_Ctrl_LeftUpLeg.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftUpLeg_rotateX.o" "QuickRigCharacter_Ctrl_LeftUpLeg.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftLeg.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.s" "QuickRigCharacter_Ctrl_LeftLeg.is"
		;
connectAttr "HIKState2FK1.LeftLegGX" "QuickRigCharacter_Ctrl_LeftLeg.agx";
connectAttr "HIKState2FK2.LeftLegGX" "QuickRigCharacter_Ctrl_LeftLeg.atx";
connectAttr "player_QuickRigCharacter_Ctrl_LeftLeg_rotateZ.o" "QuickRigCharacter_Ctrl_LeftLeg.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftLeg_rotateY.o" "QuickRigCharacter_Ctrl_LeftLeg.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftLeg_rotateX.o" "QuickRigCharacter_Ctrl_LeftLeg.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftFoot.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.s" "QuickRigCharacter_Ctrl_LeftFoot.is"
		;
connectAttr "HIKState2FK1.LeftFootGX" "QuickRigCharacter_Ctrl_LeftFoot.agx";
connectAttr "HIKState2FK2.LeftFootGX" "QuickRigCharacter_Ctrl_LeftFoot.atx";
connectAttr "player_QuickRigCharacter_Ctrl_LeftFoot_rotateZ.o" "QuickRigCharacter_Ctrl_LeftFoot.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFoot_rotateY.o" "QuickRigCharacter_Ctrl_LeftFoot.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftFoot_rotateX.o" "QuickRigCharacter_Ctrl_LeftFoot.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftToeBase.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.s" "QuickRigCharacter_Ctrl_LeftToeBase.is"
		;
connectAttr "HIKState2FK1.LeftToeBaseGX" "QuickRigCharacter_Ctrl_LeftToeBase.agx"
		;
connectAttr "HIKState2FK2.LeftToeBaseGX" "QuickRigCharacter_Ctrl_LeftToeBase.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateZ.o" "QuickRigCharacter_Ctrl_LeftToeBase.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateY.o" "QuickRigCharacter_Ctrl_LeftToeBase.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftToeBase_rotateX.o" "QuickRigCharacter_Ctrl_LeftToeBase.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightUpLeg.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Hips.s" "QuickRigCharacter_Ctrl_RightUpLeg.is"
		;
connectAttr "HIKState2FK1.RightUpLegGX" "QuickRigCharacter_Ctrl_RightUpLeg.agx";
connectAttr "HIKState2FK2.RightUpLegGX" "QuickRigCharacter_Ctrl_RightUpLeg.atx";
connectAttr "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateZ.o" "QuickRigCharacter_Ctrl_RightUpLeg.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateY.o" "QuickRigCharacter_Ctrl_RightUpLeg.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightUpLeg_rotateX.o" "QuickRigCharacter_Ctrl_RightUpLeg.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightLeg.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.s" "QuickRigCharacter_Ctrl_RightLeg.is"
		;
connectAttr "HIKState2FK1.RightLegGX" "QuickRigCharacter_Ctrl_RightLeg.agx";
connectAttr "HIKState2FK2.RightLegGX" "QuickRigCharacter_Ctrl_RightLeg.atx";
connectAttr "player_QuickRigCharacter_Ctrl_RightLeg_rotateZ.o" "QuickRigCharacter_Ctrl_RightLeg.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightLeg_rotateY.o" "QuickRigCharacter_Ctrl_RightLeg.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightLeg_rotateX.o" "QuickRigCharacter_Ctrl_RightLeg.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightFoot.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.s" "QuickRigCharacter_Ctrl_RightFoot.is"
		;
connectAttr "HIKState2FK1.RightFootGX" "QuickRigCharacter_Ctrl_RightFoot.agx";
connectAttr "HIKState2FK2.RightFootGX" "QuickRigCharacter_Ctrl_RightFoot.atx";
connectAttr "player_QuickRigCharacter_Ctrl_RightFoot_rotateZ.o" "QuickRigCharacter_Ctrl_RightFoot.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFoot_rotateY.o" "QuickRigCharacter_Ctrl_RightFoot.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightFoot_rotateX.o" "QuickRigCharacter_Ctrl_RightFoot.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightToeBase.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.s" "QuickRigCharacter_Ctrl_RightToeBase.is"
		;
connectAttr "HIKState2FK1.RightToeBaseGX" "QuickRigCharacter_Ctrl_RightToeBase.agx"
		;
connectAttr "HIKState2FK2.RightToeBaseGX" "QuickRigCharacter_Ctrl_RightToeBase.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightToeBase_rotateZ.o" "QuickRigCharacter_Ctrl_RightToeBase.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightToeBase_rotateY.o" "QuickRigCharacter_Ctrl_RightToeBase.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightToeBase_rotateX.o" "QuickRigCharacter_Ctrl_RightToeBase.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Spine.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Hips.s" "QuickRigCharacter_Ctrl_Spine.is";
connectAttr "HIKState2FK1.SpineGX" "QuickRigCharacter_Ctrl_Spine.agx";
connectAttr "HIKState2FK2.SpineGX" "QuickRigCharacter_Ctrl_Spine.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Spine_rotateZ.o" "QuickRigCharacter_Ctrl_Spine.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine_rotateY.o" "QuickRigCharacter_Ctrl_Spine.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine_rotateX.o" "QuickRigCharacter_Ctrl_Spine.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Spine1.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine.s" "QuickRigCharacter_Ctrl_Spine1.is";
connectAttr "HIKState2FK1.Spine1GX" "QuickRigCharacter_Ctrl_Spine1.agx";
connectAttr "HIKState2FK2.Spine1GX" "QuickRigCharacter_Ctrl_Spine1.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Spine1_rotateZ.o" "QuickRigCharacter_Ctrl_Spine1.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine1_rotateY.o" "QuickRigCharacter_Ctrl_Spine1.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine1_rotateX.o" "QuickRigCharacter_Ctrl_Spine1.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Spine2.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine1.s" "QuickRigCharacter_Ctrl_Spine2.is"
		;
connectAttr "HIKState2FK1.Spine2GX" "QuickRigCharacter_Ctrl_Spine2.agx";
connectAttr "HIKState2FK2.Spine2GX" "QuickRigCharacter_Ctrl_Spine2.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Spine2_rotateZ.o" "QuickRigCharacter_Ctrl_Spine2.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine2_rotateY.o" "QuickRigCharacter_Ctrl_Spine2.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Spine2_rotateX.o" "QuickRigCharacter_Ctrl_Spine2.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftShoulder.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.s" "QuickRigCharacter_Ctrl_LeftShoulder.is"
		;
connectAttr "HIKState2FK1.LeftShoulderGX" "QuickRigCharacter_Ctrl_LeftShoulder.agx"
		;
connectAttr "HIKState2FK2.LeftShoulderGX" "QuickRigCharacter_Ctrl_LeftShoulder.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateZ.o" "QuickRigCharacter_Ctrl_LeftShoulder.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateY.o" "QuickRigCharacter_Ctrl_LeftShoulder.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftShoulder_rotateX.o" "QuickRigCharacter_Ctrl_LeftShoulder.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftArm.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.s" "QuickRigCharacter_Ctrl_LeftArm.is"
		;
connectAttr "HIKState2FK1.LeftArmGX" "QuickRigCharacter_Ctrl_LeftArm.agx";
connectAttr "HIKState2FK2.LeftArmGX" "QuickRigCharacter_Ctrl_LeftArm.atx";
connectAttr "player_QuickRigCharacter_Ctrl_LeftArm_rotateZ.o" "QuickRigCharacter_Ctrl_LeftArm.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftArm_rotateY.o" "QuickRigCharacter_Ctrl_LeftArm.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftArm_rotateX.o" "QuickRigCharacter_Ctrl_LeftArm.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftForeArm.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.s" "QuickRigCharacter_Ctrl_LeftForeArm.is"
		;
connectAttr "HIKState2FK1.LeftForeArmGX" "QuickRigCharacter_Ctrl_LeftForeArm.agx"
		;
connectAttr "HIKState2FK2.LeftForeArmGX" "QuickRigCharacter_Ctrl_LeftForeArm.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateZ.o" "QuickRigCharacter_Ctrl_LeftForeArm.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateY.o" "QuickRigCharacter_Ctrl_LeftForeArm.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftForeArm_rotateX.o" "QuickRigCharacter_Ctrl_LeftForeArm.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_LeftHand.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.s" "QuickRigCharacter_Ctrl_LeftHand.is"
		;
connectAttr "HIKState2FK1.LeftHandGX" "QuickRigCharacter_Ctrl_LeftHand.agx";
connectAttr "HIKState2FK2.LeftHandGX" "QuickRigCharacter_Ctrl_LeftHand.atx";
connectAttr "player_QuickRigCharacter_Ctrl_LeftHand_rotateZ.o" "QuickRigCharacter_Ctrl_LeftHand.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHand_rotateY.o" "QuickRigCharacter_Ctrl_LeftHand.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_LeftHand_rotateX.o" "QuickRigCharacter_Ctrl_LeftHand.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightShoulder.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.s" "QuickRigCharacter_Ctrl_RightShoulder.is"
		;
connectAttr "HIKState2FK1.RightShoulderGX" "QuickRigCharacter_Ctrl_RightShoulder.agx"
		;
connectAttr "HIKState2FK2.RightShoulderGX" "QuickRigCharacter_Ctrl_RightShoulder.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulder_rotateZ.o" "QuickRigCharacter_Ctrl_RightShoulder.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulder_rotateY.o" "QuickRigCharacter_Ctrl_RightShoulder.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightShoulder_rotateX.o" "QuickRigCharacter_Ctrl_RightShoulder.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightArm.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.s" "QuickRigCharacter_Ctrl_RightArm.is"
		;
connectAttr "HIKState2FK1.RightArmGX" "QuickRigCharacter_Ctrl_RightArm.agx";
connectAttr "HIKState2FK2.RightArmGX" "QuickRigCharacter_Ctrl_RightArm.atx";
connectAttr "player_QuickRigCharacter_Ctrl_RightArm_rotateZ.o" "QuickRigCharacter_Ctrl_RightArm.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightArm_rotateY.o" "QuickRigCharacter_Ctrl_RightArm.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightArm_rotateX.o" "QuickRigCharacter_Ctrl_RightArm.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightForeArm.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightArm.s" "QuickRigCharacter_Ctrl_RightForeArm.is"
		;
connectAttr "HIKState2FK1.RightForeArmGX" "QuickRigCharacter_Ctrl_RightForeArm.agx"
		;
connectAttr "HIKState2FK2.RightForeArmGX" "QuickRigCharacter_Ctrl_RightForeArm.atx"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightForeArm_rotateZ.o" "QuickRigCharacter_Ctrl_RightForeArm.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightForeArm_rotateY.o" "QuickRigCharacter_Ctrl_RightForeArm.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightForeArm_rotateX.o" "QuickRigCharacter_Ctrl_RightForeArm.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_RightHand.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.s" "QuickRigCharacter_Ctrl_RightHand.is"
		;
connectAttr "HIKState2FK1.RightHandGX" "QuickRigCharacter_Ctrl_RightHand.agx";
connectAttr "HIKState2FK2.RightHandGX" "QuickRigCharacter_Ctrl_RightHand.atx";
connectAttr "player_QuickRigCharacter_Ctrl_RightHand_rotateZ.o" "QuickRigCharacter_Ctrl_RightHand.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHand_rotateY.o" "QuickRigCharacter_Ctrl_RightHand.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_RightHand_rotateX.o" "QuickRigCharacter_Ctrl_RightHand.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Neck.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.s" "QuickRigCharacter_Ctrl_Neck.is";
connectAttr "HIKState2FK1.NeckGX" "QuickRigCharacter_Ctrl_Neck.agx";
connectAttr "HIKState2FK2.NeckGX" "QuickRigCharacter_Ctrl_Neck.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Neck_rotateZ.o" "QuickRigCharacter_Ctrl_Neck.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Neck_rotateY.o" "QuickRigCharacter_Ctrl_Neck.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Neck_rotateX.o" "QuickRigCharacter_Ctrl_Neck.rx"
		;
connectAttr "QuickRigCharacter_ControlRig.rao" "QuickRigCharacter_Ctrl_Head.uagx"
		;
connectAttr "QuickRigCharacter_Ctrl_Neck.s" "QuickRigCharacter_Ctrl_Head.is";
connectAttr "HIKState2FK1.HeadGX" "QuickRigCharacter_Ctrl_Head.agx";
connectAttr "HIKState2FK2.HeadGX" "QuickRigCharacter_Ctrl_Head.atx";
connectAttr "player_QuickRigCharacter_Ctrl_Head_rotateZ.o" "QuickRigCharacter_Ctrl_Head.rz"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Head_rotateY.o" "QuickRigCharacter_Ctrl_Head.ry"
		;
connectAttr "player_QuickRigCharacter_Ctrl_Head_rotateX.o" "QuickRigCharacter_Ctrl_Head.rx"
		;
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hand_face:initialShadingGroup1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hand_face:initialShadingGroup3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "obj_head:initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hand_face:initialShadingGroup1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hand_face:initialShadingGroup3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "obj_head:initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "body.id";
connectAttr "layerManager.dli[2]" "img.id";
connectAttr "layerManager.dli[3]" "apose.id";
connectAttr "hand_face:initialShadingGroup2.oc" "hand_face:initialShadingGroup1.ss"
		;
connectAttr "hand_face:initialShadingGroup1.msg" "hand_face:materialInfo1.sg";
connectAttr "hand_face:initialShadingGroup2.msg" "hand_face:materialInfo1.m";
connectAttr "hand_face:initialShadingGroup4.oc" "hand_face:initialShadingGroup3.ss"
		;
connectAttr "hand_face:initialShadingGroup3.msg" "hand_face:materialInfo2.sg";
connectAttr "hand_face:initialShadingGroup4.msg" "hand_face:materialInfo2.m";
connectAttr "layerManager.dli[4]" "layer1.id";
connectAttr "layerManager.dli[5]" "layer2.id";
connectAttr "layerManager.dli[6]" "layer3.id";
connectAttr "obj_head:initialShadingGroup1.oc" "obj_head:initialShadingGroup.ss"
		;
connectAttr "obj_head:initialShadingGroup.msg" "obj_head:materialInfo1.sg";
connectAttr "obj_head:initialShadingGroup1.msg" "obj_head:materialInfo1.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "HIKproperties1.msg" "QuickRigCharacter.propertyState";
connectAttr "QuickRigCharacter_Reference.msg" "QuickRigCharacter.skeleton";
connectAttr "QuickRigCharacter_Reference.ch" "QuickRigCharacter.Reference";
connectAttr "QuickRigCharacter_Hips.ch" "QuickRigCharacter.Hips";
connectAttr "QuickRigCharacter_LeftUpLeg.ch" "QuickRigCharacter.LeftUpLeg";
connectAttr "QuickRigCharacter_LeftLeg.ch" "QuickRigCharacter.LeftLeg";
connectAttr "QuickRigCharacter_LeftFoot.ch" "QuickRigCharacter.LeftFoot";
connectAttr "QuickRigCharacter_RightUpLeg.ch" "QuickRigCharacter.RightUpLeg";
connectAttr "QuickRigCharacter_RightLeg.ch" "QuickRigCharacter.RightLeg";
connectAttr "QuickRigCharacter_RightFoot.ch" "QuickRigCharacter.RightFoot";
connectAttr "QuickRigCharacter_Spine.ch" "QuickRigCharacter.Spine";
connectAttr "QuickRigCharacter_LeftArm.ch" "QuickRigCharacter.LeftArm";
connectAttr "QuickRigCharacter_LeftForeArm.ch" "QuickRigCharacter.LeftForeArm";
connectAttr "QuickRigCharacter_LeftHand.ch" "QuickRigCharacter.LeftHand";
connectAttr "QuickRigCharacter_RightArm.ch" "QuickRigCharacter.RightArm";
connectAttr "QuickRigCharacter_RightForeArm.ch" "QuickRigCharacter.RightForeArm"
		;
connectAttr "QuickRigCharacter_RightHand.ch" "QuickRigCharacter.RightHand";
connectAttr "QuickRigCharacter_Head.ch" "QuickRigCharacter.Head";
connectAttr "QuickRigCharacter_LeftToeBase.ch" "QuickRigCharacter.LeftToeBase";
connectAttr "QuickRigCharacter_RightToeBase.ch" "QuickRigCharacter.RightToeBase"
		;
connectAttr "QuickRigCharacter_LeftShoulder.ch" "QuickRigCharacter.LeftShoulder"
		;
connectAttr "QuickRigCharacter_RightShoulder.ch" "QuickRigCharacter.RightShoulder"
		;
connectAttr "QuickRigCharacter_Neck.ch" "QuickRigCharacter.Neck";
connectAttr "QuickRigCharacter_Spine1.ch" "QuickRigCharacter.Spine1";
connectAttr "QuickRigCharacter_Spine2.ch" "QuickRigCharacter.Spine2";
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.pull" "HIKproperties1.CtrlResistHipsPosition"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.stiffness" "HIKproperties1.CtrlResistHipsOrientation"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.pull" "HIKproperties1.CtrlPullLeftFoot"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.pull" "HIKproperties1.CtrlPullRightFoot"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.pull" "HIKproperties1.CtrlChestPullLeftHand"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.pull" "HIKproperties1.CtrlChestPullRightHand"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.pull" "HIKproperties1.CtrlPullLeftKnee"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.stiffness" "HIKproperties1.CtrlResistLeftKnee"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.pull" "HIKproperties1.CtrlPullRightKnee"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.stiffness" "HIKproperties1.CtrlResistRightKnee"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.pull" "HIKproperties1.CtrlPullLeftElbow"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.stiffness" "HIKproperties1.CtrlResistLeftElbow"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.pull" "HIKproperties1.CtrlPullRightElbow"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.stiffness" "HIKproperties1.CtrlResistRightElbow"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.stiffness" "HIKproperties1.ParamCtrlSpineStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.pull" "HIKproperties1.CtrlResistChestPosition"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.stiffness" "HIKproperties1.CtrlResistChestOrientation"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.pull" "HIKproperties1.CtrlPullLeftToeBase"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.pull" "HIKproperties1.CtrlPullRightToeBase"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.stiffness" "HIKproperties1.CtrlResistLeftCollar"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.stiffness" "HIKproperties1.CtrlResistRightCollar"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.pull" "HIKproperties1.CtrlPullHead"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.stiffness" "HIKproperties1.ParamCtrlNeckStiffness"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "HIKFK2State1.OutputCharacterState" "HIKSolverNode1.InputCharacterState"
		;
connectAttr "HIKPinning2State1.OutputEffectorState" "HIKSolverNode1.InputEffectorState"
		;
connectAttr "HIKPinning2State1.OutputEffectorStateNoAux" "HIKSolverNode1.InputEffectorStateNoAux"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "QuickRigCharacter_Hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "QuickRigCharacter_Hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "QuickRigCharacter_Hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "QuickRigCharacter_Hips.is" "HIKState2SK1.HipsIS";
connectAttr "QuickRigCharacter_Hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "QuickRigCharacter_Hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "QuickRigCharacter_LeftUpLeg.pm" "HIKState2SK1.LeftUpLegPGX";
connectAttr "QuickRigCharacter_LeftUpLeg.jo" "HIKState2SK1.LeftUpLegPreR";
connectAttr "QuickRigCharacter_LeftUpLeg.ssc" "HIKState2SK1.LeftUpLegSC";
connectAttr "QuickRigCharacter_LeftUpLeg.is" "HIKState2SK1.LeftUpLegIS";
connectAttr "QuickRigCharacter_LeftUpLeg.ro" "HIKState2SK1.LeftUpLegROrder";
connectAttr "QuickRigCharacter_LeftUpLeg.ra" "HIKState2SK1.LeftUpLegPostR";
connectAttr "QuickRigCharacter_LeftLeg.pm" "HIKState2SK1.LeftLegPGX";
connectAttr "QuickRigCharacter_LeftLeg.jo" "HIKState2SK1.LeftLegPreR";
connectAttr "QuickRigCharacter_LeftLeg.ssc" "HIKState2SK1.LeftLegSC";
connectAttr "QuickRigCharacter_LeftLeg.is" "HIKState2SK1.LeftLegIS";
connectAttr "QuickRigCharacter_LeftLeg.ro" "HIKState2SK1.LeftLegROrder";
connectAttr "QuickRigCharacter_LeftLeg.ra" "HIKState2SK1.LeftLegPostR";
connectAttr "QuickRigCharacter_LeftFoot.pm" "HIKState2SK1.LeftFootPGX";
connectAttr "QuickRigCharacter_LeftFoot.jo" "HIKState2SK1.LeftFootPreR";
connectAttr "QuickRigCharacter_LeftFoot.ssc" "HIKState2SK1.LeftFootSC";
connectAttr "QuickRigCharacter_LeftFoot.is" "HIKState2SK1.LeftFootIS";
connectAttr "QuickRigCharacter_LeftFoot.ro" "HIKState2SK1.LeftFootROrder";
connectAttr "QuickRigCharacter_LeftFoot.ra" "HIKState2SK1.LeftFootPostR";
connectAttr "QuickRigCharacter_RightUpLeg.pm" "HIKState2SK1.RightUpLegPGX";
connectAttr "QuickRigCharacter_RightUpLeg.jo" "HIKState2SK1.RightUpLegPreR";
connectAttr "QuickRigCharacter_RightUpLeg.ssc" "HIKState2SK1.RightUpLegSC";
connectAttr "QuickRigCharacter_RightUpLeg.is" "HIKState2SK1.RightUpLegIS";
connectAttr "QuickRigCharacter_RightUpLeg.ro" "HIKState2SK1.RightUpLegROrder";
connectAttr "QuickRigCharacter_RightUpLeg.ra" "HIKState2SK1.RightUpLegPostR";
connectAttr "QuickRigCharacter_RightLeg.pm" "HIKState2SK1.RightLegPGX";
connectAttr "QuickRigCharacter_RightLeg.jo" "HIKState2SK1.RightLegPreR";
connectAttr "QuickRigCharacter_RightLeg.ssc" "HIKState2SK1.RightLegSC";
connectAttr "QuickRigCharacter_RightLeg.is" "HIKState2SK1.RightLegIS";
connectAttr "QuickRigCharacter_RightLeg.ro" "HIKState2SK1.RightLegROrder";
connectAttr "QuickRigCharacter_RightLeg.ra" "HIKState2SK1.RightLegPostR";
connectAttr "QuickRigCharacter_RightFoot.pm" "HIKState2SK1.RightFootPGX";
connectAttr "QuickRigCharacter_RightFoot.jo" "HIKState2SK1.RightFootPreR";
connectAttr "QuickRigCharacter_RightFoot.ssc" "HIKState2SK1.RightFootSC";
connectAttr "QuickRigCharacter_RightFoot.is" "HIKState2SK1.RightFootIS";
connectAttr "QuickRigCharacter_RightFoot.ro" "HIKState2SK1.RightFootROrder";
connectAttr "QuickRigCharacter_RightFoot.ra" "HIKState2SK1.RightFootPostR";
connectAttr "QuickRigCharacter_Spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "QuickRigCharacter_Spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "QuickRigCharacter_Spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "QuickRigCharacter_Spine.is" "HIKState2SK1.SpineIS";
connectAttr "QuickRigCharacter_Spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "QuickRigCharacter_Spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "QuickRigCharacter_LeftArm.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "QuickRigCharacter_LeftArm.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "QuickRigCharacter_LeftArm.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "QuickRigCharacter_LeftArm.is" "HIKState2SK1.LeftArmIS";
connectAttr "QuickRigCharacter_LeftArm.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "QuickRigCharacter_LeftArm.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "QuickRigCharacter_LeftForeArm.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "QuickRigCharacter_LeftForeArm.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "QuickRigCharacter_LeftForeArm.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "QuickRigCharacter_LeftForeArm.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "QuickRigCharacter_LeftForeArm.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "QuickRigCharacter_LeftForeArm.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "QuickRigCharacter_LeftHand.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "QuickRigCharacter_LeftHand.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "QuickRigCharacter_LeftHand.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "QuickRigCharacter_LeftHand.is" "HIKState2SK1.LeftHandIS";
connectAttr "QuickRigCharacter_LeftHand.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "QuickRigCharacter_LeftHand.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "QuickRigCharacter_RightArm.pm" "HIKState2SK1.RightArmPGX";
connectAttr "QuickRigCharacter_RightArm.jo" "HIKState2SK1.RightArmPreR";
connectAttr "QuickRigCharacter_RightArm.ssc" "HIKState2SK1.RightArmSC";
connectAttr "QuickRigCharacter_RightArm.is" "HIKState2SK1.RightArmIS";
connectAttr "QuickRigCharacter_RightArm.ro" "HIKState2SK1.RightArmROrder";
connectAttr "QuickRigCharacter_RightArm.ra" "HIKState2SK1.RightArmPostR";
connectAttr "QuickRigCharacter_RightForeArm.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "QuickRigCharacter_RightForeArm.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "QuickRigCharacter_RightForeArm.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "QuickRigCharacter_RightForeArm.is" "HIKState2SK1.RightForeArmIS";
connectAttr "QuickRigCharacter_RightForeArm.ro" "HIKState2SK1.RightForeArmROrder"
		;
connectAttr "QuickRigCharacter_RightForeArm.ra" "HIKState2SK1.RightForeArmPostR"
		;
connectAttr "QuickRigCharacter_RightHand.pm" "HIKState2SK1.RightHandPGX";
connectAttr "QuickRigCharacter_RightHand.jo" "HIKState2SK1.RightHandPreR";
connectAttr "QuickRigCharacter_RightHand.ssc" "HIKState2SK1.RightHandSC";
connectAttr "QuickRigCharacter_RightHand.is" "HIKState2SK1.RightHandIS";
connectAttr "QuickRigCharacter_RightHand.ro" "HIKState2SK1.RightHandROrder";
connectAttr "QuickRigCharacter_RightHand.ra" "HIKState2SK1.RightHandPostR";
connectAttr "QuickRigCharacter_Head.pm" "HIKState2SK1.HeadPGX";
connectAttr "QuickRigCharacter_Head.jo" "HIKState2SK1.HeadPreR";
connectAttr "QuickRigCharacter_Head.ssc" "HIKState2SK1.HeadSC";
connectAttr "QuickRigCharacter_Head.is" "HIKState2SK1.HeadIS";
connectAttr "QuickRigCharacter_Head.ro" "HIKState2SK1.HeadROrder";
connectAttr "QuickRigCharacter_Head.ra" "HIKState2SK1.HeadPostR";
connectAttr "QuickRigCharacter_LeftToeBase.pm" "HIKState2SK1.LeftToeBasePGX";
connectAttr "QuickRigCharacter_LeftToeBase.jo" "HIKState2SK1.LeftToeBasePreR";
connectAttr "QuickRigCharacter_LeftToeBase.ssc" "HIKState2SK1.LeftToeBaseSC";
connectAttr "QuickRigCharacter_LeftToeBase.is" "HIKState2SK1.LeftToeBaseIS";
connectAttr "QuickRigCharacter_LeftToeBase.ro" "HIKState2SK1.LeftToeBaseROrder";
connectAttr "QuickRigCharacter_LeftToeBase.ra" "HIKState2SK1.LeftToeBasePostR";
connectAttr "QuickRigCharacter_RightToeBase.pm" "HIKState2SK1.RightToeBasePGX";
connectAttr "QuickRigCharacter_RightToeBase.jo" "HIKState2SK1.RightToeBasePreR";
connectAttr "QuickRigCharacter_RightToeBase.ssc" "HIKState2SK1.RightToeBaseSC";
connectAttr "QuickRigCharacter_RightToeBase.is" "HIKState2SK1.RightToeBaseIS";
connectAttr "QuickRigCharacter_RightToeBase.ro" "HIKState2SK1.RightToeBaseROrder"
		;
connectAttr "QuickRigCharacter_RightToeBase.ra" "HIKState2SK1.RightToeBasePostR"
		;
connectAttr "QuickRigCharacter_LeftShoulder.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "QuickRigCharacter_LeftShoulder.jo" "HIKState2SK1.LeftShoulderPreR";
connectAttr "QuickRigCharacter_LeftShoulder.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "QuickRigCharacter_LeftShoulder.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "QuickRigCharacter_LeftShoulder.ro" "HIKState2SK1.LeftShoulderROrder"
		;
connectAttr "QuickRigCharacter_LeftShoulder.ra" "HIKState2SK1.LeftShoulderPostR"
		;
connectAttr "QuickRigCharacter_RightShoulder.pm" "HIKState2SK1.RightShoulderPGX"
		;
connectAttr "QuickRigCharacter_RightShoulder.jo" "HIKState2SK1.RightShoulderPreR"
		;
connectAttr "QuickRigCharacter_RightShoulder.ssc" "HIKState2SK1.RightShoulderSC"
		;
connectAttr "QuickRigCharacter_RightShoulder.is" "HIKState2SK1.RightShoulderIS";
connectAttr "QuickRigCharacter_RightShoulder.ro" "HIKState2SK1.RightShoulderROrder"
		;
connectAttr "QuickRigCharacter_RightShoulder.ra" "HIKState2SK1.RightShoulderPostR"
		;
connectAttr "QuickRigCharacter_Neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "QuickRigCharacter_Neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "QuickRigCharacter_Neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "QuickRigCharacter_Neck.is" "HIKState2SK1.NeckIS";
connectAttr "QuickRigCharacter_Neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "QuickRigCharacter_Neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "QuickRigCharacter_Spine1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "QuickRigCharacter_Spine1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "QuickRigCharacter_Spine1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "QuickRigCharacter_Spine1.is" "HIKState2SK1.Spine1IS";
connectAttr "QuickRigCharacter_Spine1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "QuickRigCharacter_Spine1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "QuickRigCharacter_Spine2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "QuickRigCharacter_Spine2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "QuickRigCharacter_Spine2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "QuickRigCharacter_Spine2.is" "HIKState2SK1.Spine2IS";
connectAttr "QuickRigCharacter_Spine2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "QuickRigCharacter_Spine2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "QuickRigCharacter_HipsBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_ChestBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftArmBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightArmBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftLegBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightLegBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_HeadBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG.msg" "QuickRigCharacter_FullBodyKG.dnsm"
		 -na;
connectAttr "QuickRigCharacter_HipsBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_ChestBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftArmBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightArmBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftLegBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightLegBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_HeadBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG1.msg" "QuickRigCharacter_FullBodyKG1.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG2.msg" "QuickRigCharacter_FullBodyKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG2.msg" "QuickRigCharacter_FullBodyKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG2.msg" "QuickRigCharacter_FullBodyKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightFootBPKG2.msg" "QuickRigCharacter_FullBodyKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG3.msg" "QuickRigCharacter_FullBodyKG3.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG3.msg" "QuickRigCharacter_FullBodyKG3.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG3.msg" "QuickRigCharacter_FullBodyKG3.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightFootBPKG3.msg" "QuickRigCharacter_FullBodyKG3.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG4.msg" "QuickRigCharacter_FullBodyKG4.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG4.msg" "QuickRigCharacter_FullBodyKG4.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG4.msg" "QuickRigCharacter_FullBodyKG4.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightFootBPKG4.msg" "QuickRigCharacter_FullBodyKG4.dnsm"
		 -na;
connectAttr "QuickRigCharacter_HipsBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_ChestBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftArmBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightArmBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftLegBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightLegBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_HeadBPKG2.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftHandBPKG5.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightHandBPKG5.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_LeftFootBPKG5.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_RightFootBPKG5.msg" "QuickRigCharacter_FullBodyKG5.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Hips.msg" "QuickRigCharacter_FullBodyKG5.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.msg" "QuickRigCharacter_FullBodyKG5.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.msg" "QuickRigCharacter_FullBodyKG5.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.msg" "QuickRigCharacter_FullBodyKG5.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.msg" "QuickRigCharacter_FullBodyKG5.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.msg" "QuickRigCharacter_FullBodyKG5.act[5]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.msg" "QuickRigCharacter_FullBodyKG5.act[6]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine.msg" "QuickRigCharacter_FullBodyKG5.act[7]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.msg" "QuickRigCharacter_FullBodyKG5.act[8]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.msg" "QuickRigCharacter_FullBodyKG5.act[9]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.msg" "QuickRigCharacter_FullBodyKG5.act[10]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightArm.msg" "QuickRigCharacter_FullBodyKG5.act[11]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.msg" "QuickRigCharacter_FullBodyKG5.act[12]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHand.msg" "QuickRigCharacter_FullBodyKG5.act[13]"
		;
connectAttr "QuickRigCharacter_Ctrl_Head.msg" "QuickRigCharacter_FullBodyKG5.act[14]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.msg" "QuickRigCharacter_FullBodyKG5.act[15]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.msg" "QuickRigCharacter_FullBodyKG5.act[16]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.msg" "QuickRigCharacter_FullBodyKG5.act[17]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.msg" "QuickRigCharacter_FullBodyKG5.act[18]"
		;
connectAttr "QuickRigCharacter_Ctrl_Neck.msg" "QuickRigCharacter_FullBodyKG5.act[19]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine1.msg" "QuickRigCharacter_FullBodyKG5.act[20]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.msg" "QuickRigCharacter_FullBodyKG5.act[21]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.msg" "QuickRigCharacter_FullBodyKG5.act[22]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.msg" "QuickRigCharacter_FullBodyKG5.act[23]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.msg" "QuickRigCharacter_FullBodyKG5.act[24]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.msg" "QuickRigCharacter_FullBodyKG5.act[25]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.msg" "QuickRigCharacter_FullBodyKG5.act[26]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.msg" "QuickRigCharacter_FullBodyKG5.act[27]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.msg" "QuickRigCharacter_FullBodyKG5.act[28]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.msg" "QuickRigCharacter_FullBodyKG5.act[29]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.msg" "QuickRigCharacter_FullBodyKG5.act[30]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.msg" "QuickRigCharacter_FullBodyKG5.act[31]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.msg" "QuickRigCharacter_FullBodyKG5.act[32]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.msg" "QuickRigCharacter_FullBodyKG5.act[33]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.msg" "QuickRigCharacter_FullBodyKG5.act[34]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.msg" "QuickRigCharacter_FullBodyKG5.act[35]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.msg" "QuickRigCharacter_FullBodyKG5.act[36]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.msg" "QuickRigCharacter_FullBodyKG5.act[37]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.msg" "QuickRigCharacter_FullBodyKG5.act[38]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.msg" "QuickRigCharacter_FullBodyKG5.act[39]"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKFK2State1.InputCharacterDefinition"
		;
connectAttr "QuickRigCharacter_Ctrl_Reference.wm" "HIKFK2State1.ReferenceGX";
connectAttr "QuickRigCharacter_Ctrl_Hips.wm" "HIKFK2State1.HipsGX";
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.wm" "HIKFK2State1.LeftUpLegGX";
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.wm" "HIKFK2State1.LeftLegGX";
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.wm" "HIKFK2State1.LeftFootGX";
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.wm" "HIKFK2State1.RightUpLegGX";
connectAttr "QuickRigCharacter_Ctrl_RightLeg.wm" "HIKFK2State1.RightLegGX";
connectAttr "QuickRigCharacter_Ctrl_RightFoot.wm" "HIKFK2State1.RightFootGX";
connectAttr "QuickRigCharacter_Ctrl_Spine.wm" "HIKFK2State1.SpineGX";
connectAttr "QuickRigCharacter_Ctrl_LeftArm.wm" "HIKFK2State1.LeftArmGX";
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.wm" "HIKFK2State1.LeftForeArmGX"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.wm" "HIKFK2State1.LeftHandGX";
connectAttr "QuickRigCharacter_Ctrl_RightArm.wm" "HIKFK2State1.RightArmGX";
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.wm" "HIKFK2State1.RightForeArmGX"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHand.wm" "HIKFK2State1.RightHandGX";
connectAttr "QuickRigCharacter_Ctrl_Head.wm" "HIKFK2State1.HeadGX";
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.wm" "HIKFK2State1.LeftToeBaseGX"
		;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.wm" "HIKFK2State1.RightToeBaseGX"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.wm" "HIKFK2State1.LeftShoulderGX"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.wm" "HIKFK2State1.RightShoulderGX"
		;
connectAttr "QuickRigCharacter_Ctrl_Neck.wm" "HIKFK2State1.NeckGX";
connectAttr "QuickRigCharacter_Ctrl_Spine1.wm" "HIKFK2State1.Spine1GX";
connectAttr "QuickRigCharacter_Ctrl_Spine2.wm" "HIKFK2State1.Spine2GX";
connectAttr "QuickRigCharacter_Reference.msg" "bindPose1.m[0]";
connectAttr "QuickRigCharacter_Hips.msg" "bindPose1.m[1]";
connectAttr "QuickRigCharacter_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "QuickRigCharacter_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "QuickRigCharacter_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "QuickRigCharacter_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "QuickRigCharacter_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "QuickRigCharacter_RightLeg.msg" "bindPose1.m[7]";
connectAttr "QuickRigCharacter_RightFoot.msg" "bindPose1.m[8]";
connectAttr "QuickRigCharacter_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "QuickRigCharacter_Spine.msg" "bindPose1.m[10]";
connectAttr "QuickRigCharacter_Spine1.msg" "bindPose1.m[11]";
connectAttr "QuickRigCharacter_Spine2.msg" "bindPose1.m[12]";
connectAttr "QuickRigCharacter_LeftShoulder.msg" "bindPose1.m[13]";
connectAttr "QuickRigCharacter_LeftArm.msg" "bindPose1.m[14]";
connectAttr "QuickRigCharacter_LeftForeArm.msg" "bindPose1.m[15]";
connectAttr "QuickRigCharacter_LeftHand.msg" "bindPose1.m[16]";
connectAttr "QuickRigCharacter_RightShoulder.msg" "bindPose1.m[17]";
connectAttr "QuickRigCharacter_RightArm.msg" "bindPose1.m[18]";
connectAttr "QuickRigCharacter_RightForeArm.msg" "bindPose1.m[19]";
connectAttr "QuickRigCharacter_RightHand.msg" "bindPose1.m[20]";
connectAttr "QuickRigCharacter_Neck.msg" "bindPose1.m[21]";
connectAttr "QuickRigCharacter_Head.msg" "bindPose1.m[22]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[12]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[12]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "QuickRigCharacter_Hips.bps" "bindPose1.wm[1]";
connectAttr "QuickRigCharacter_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "QuickRigCharacter_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "QuickRigCharacter_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "QuickRigCharacter_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "QuickRigCharacter_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "QuickRigCharacter_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "QuickRigCharacter_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "QuickRigCharacter_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "QuickRigCharacter_Spine.bps" "bindPose1.wm[10]";
connectAttr "QuickRigCharacter_Spine1.bps" "bindPose1.wm[11]";
connectAttr "QuickRigCharacter_Spine2.bps" "bindPose1.wm[12]";
connectAttr "QuickRigCharacter_LeftShoulder.bps" "bindPose1.wm[13]";
connectAttr "QuickRigCharacter_LeftArm.bps" "bindPose1.wm[14]";
connectAttr "QuickRigCharacter_LeftForeArm.bps" "bindPose1.wm[15]";
connectAttr "QuickRigCharacter_LeftHand.bps" "bindPose1.wm[16]";
connectAttr "QuickRigCharacter_RightShoulder.bps" "bindPose1.wm[17]";
connectAttr "QuickRigCharacter_RightArm.bps" "bindPose1.wm[18]";
connectAttr "QuickRigCharacter_RightForeArm.bps" "bindPose1.wm[19]";
connectAttr "QuickRigCharacter_RightHand.bps" "bindPose1.wm[20]";
connectAttr "QuickRigCharacter_Neck.bps" "bindPose1.wm[21]";
connectAttr "QuickRigCharacter_Head.bps" "bindPose1.wm[22]";
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.wm" "HIKEffector2State1.HipsEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.rt" "HIKEffector2State1.HipsEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.rr" "HIKEffector2State1.HipsEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.po" "HIKEffector2State1.HipsEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.pull" "HIKEffector2State1.HipsEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.stiffness" "HIKEffector2State1.HipsEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.wm" "HIKEffector2State1.LeftAnkleEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.rt" "HIKEffector2State1.LeftAnkleEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.rr" "HIKEffector2State1.LeftAnkleEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.po" "HIKEffector2State1.LeftAnkleEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.pull" "HIKEffector2State1.LeftAnkleEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.stiffness" "HIKEffector2State1.LeftAnkleEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.wm" "HIKEffector2State1.RightAnkleEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.rt" "HIKEffector2State1.RightAnkleEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.rr" "HIKEffector2State1.RightAnkleEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.po" "HIKEffector2State1.RightAnkleEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.pull" "HIKEffector2State1.RightAnkleEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.stiffness" "HIKEffector2State1.RightAnkleEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.wm" "HIKEffector2State1.LeftWristEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.rt" "HIKEffector2State1.LeftWristEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.rr" "HIKEffector2State1.LeftWristEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.po" "HIKEffector2State1.LeftWristEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.pull" "HIKEffector2State1.LeftWristEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.stiffness" "HIKEffector2State1.LeftWristEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.wm" "HIKEffector2State1.RightWristEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.rt" "HIKEffector2State1.RightWristEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.rr" "HIKEffector2State1.RightWristEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.po" "HIKEffector2State1.RightWristEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.pull" "HIKEffector2State1.RightWristEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.stiffness" "HIKEffector2State1.RightWristEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.wm" "HIKEffector2State1.LeftKneeEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.rt" "HIKEffector2State1.LeftKneeEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.rr" "HIKEffector2State1.LeftKneeEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.po" "HIKEffector2State1.LeftKneeEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.pull" "HIKEffector2State1.LeftKneeEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.stiffness" "HIKEffector2State1.LeftKneeEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.wm" "HIKEffector2State1.RightKneeEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.rt" "HIKEffector2State1.RightKneeEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.rr" "HIKEffector2State1.RightKneeEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.po" "HIKEffector2State1.RightKneeEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.pull" "HIKEffector2State1.RightKneeEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.stiffness" "HIKEffector2State1.RightKneeEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.wm" "HIKEffector2State1.LeftElbowEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.rt" "HIKEffector2State1.LeftElbowEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.rr" "HIKEffector2State1.LeftElbowEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.po" "HIKEffector2State1.LeftElbowEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.pull" "HIKEffector2State1.LeftElbowEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.stiffness" "HIKEffector2State1.LeftElbowEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.wm" "HIKEffector2State1.RightElbowEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.rt" "HIKEffector2State1.RightElbowEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.rr" "HIKEffector2State1.RightElbowEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.po" "HIKEffector2State1.RightElbowEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.pull" "HIKEffector2State1.RightElbowEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.stiffness" "HIKEffector2State1.RightElbowEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.wm" "HIKEffector2State1.ChestOriginEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.rt" "HIKEffector2State1.ChestOriginEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.rr" "HIKEffector2State1.ChestOriginEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.po" "HIKEffector2State1.ChestOriginEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.pull" "HIKEffector2State1.ChestOriginEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.stiffness" "HIKEffector2State1.ChestOriginEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.wm" "HIKEffector2State1.ChestEndEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.rt" "HIKEffector2State1.ChestEndEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.rr" "HIKEffector2State1.ChestEndEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.po" "HIKEffector2State1.ChestEndEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.pull" "HIKEffector2State1.ChestEndEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.stiffness" "HIKEffector2State1.ChestEndEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.wm" "HIKEffector2State1.LeftFootEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.rt" "HIKEffector2State1.LeftFootEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.rr" "HIKEffector2State1.LeftFootEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.po" "HIKEffector2State1.LeftFootEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.pull" "HIKEffector2State1.LeftFootEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.stiffness" "HIKEffector2State1.LeftFootEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.wm" "HIKEffector2State1.RightFootEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.rt" "HIKEffector2State1.RightFootEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.rr" "HIKEffector2State1.RightFootEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.po" "HIKEffector2State1.RightFootEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.pull" "HIKEffector2State1.RightFootEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.stiffness" "HIKEffector2State1.RightFootEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.wm" "HIKEffector2State1.LeftShoulderEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.rt" "HIKEffector2State1.LeftShoulderEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.rr" "HIKEffector2State1.LeftShoulderEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.po" "HIKEffector2State1.LeftShoulderEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.pull" "HIKEffector2State1.LeftShoulderEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.stiffness" "HIKEffector2State1.LeftShoulderEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.wm" "HIKEffector2State1.RightShoulderEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.rt" "HIKEffector2State1.RightShoulderEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.rr" "HIKEffector2State1.RightShoulderEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.po" "HIKEffector2State1.RightShoulderEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.pull" "HIKEffector2State1.RightShoulderEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.stiffness" "HIKEffector2State1.RightShoulderEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.wm" "HIKEffector2State1.HeadEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.rt" "HIKEffector2State1.HeadEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.rr" "HIKEffector2State1.HeadEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.po" "HIKEffector2State1.HeadEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.pull" "HIKEffector2State1.HeadEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.stiffness" "HIKEffector2State1.HeadEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.wm" "HIKEffector2State1.LeftHipEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.rt" "HIKEffector2State1.LeftHipEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.rr" "HIKEffector2State1.LeftHipEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.po" "HIKEffector2State1.LeftHipEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.pull" "HIKEffector2State1.LeftHipEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.stiffness" "HIKEffector2State1.LeftHipEffectorStiffness"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.wm" "HIKEffector2State1.RightHipEffectorGX[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.rt" "HIKEffector2State1.RightHipEffectorReachT[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.rr" "HIKEffector2State1.RightHipEffectorReachR[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.po" "HIKEffector2State1.RightHipEffectorPivot[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.pull" "HIKEffector2State1.RightHipEffectorPull"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.stiffness" "HIKEffector2State1.RightHipEffectorStiffness"
		;
connectAttr "HIKEffector2State1.EFF" "HIKPinning2State1.InputEffectorState";
connectAttr "HIKEffector2State1.EFFNA" "HIKPinning2State1.InputEffectorStateNoAux"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.pint" "HIKPinning2State1.HipsEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.pinr" "HIKPinning2State1.HipsEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.pint" "HIKPinning2State1.LeftAnkleEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.pinr" "HIKPinning2State1.LeftAnkleEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.pint" "HIKPinning2State1.RightAnkleEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.pinr" "HIKPinning2State1.RightAnkleEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.pint" "HIKPinning2State1.LeftWristEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.pinr" "HIKPinning2State1.LeftWristEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.pint" "HIKPinning2State1.RightWristEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.pinr" "HIKPinning2State1.RightWristEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.pint" "HIKPinning2State1.LeftKneeEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.pinr" "HIKPinning2State1.LeftKneeEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.pint" "HIKPinning2State1.RightKneeEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.pinr" "HIKPinning2State1.RightKneeEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.pint" "HIKPinning2State1.LeftElbowEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.pinr" "HIKPinning2State1.LeftElbowEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.pint" "HIKPinning2State1.RightElbowEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.pinr" "HIKPinning2State1.RightElbowEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.pint" "HIKPinning2State1.ChestOriginEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.pinr" "HIKPinning2State1.ChestOriginEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.pint" "HIKPinning2State1.ChestEndEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.pinr" "HIKPinning2State1.ChestEndEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.pint" "HIKPinning2State1.LeftFootEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.pinr" "HIKPinning2State1.LeftFootEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.pint" "HIKPinning2State1.RightFootEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.pinr" "HIKPinning2State1.RightFootEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.pint" "HIKPinning2State1.LeftShoulderEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.pinr" "HIKPinning2State1.LeftShoulderEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.pint" "HIKPinning2State1.RightShoulderEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.pinr" "HIKPinning2State1.RightShoulderEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.pint" "HIKPinning2State1.HeadEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.pinr" "HIKPinning2State1.HeadEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.pint" "HIKPinning2State1.LeftHipEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.pinr" "HIKPinning2State1.LeftHipEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.pint" "HIKPinning2State1.RightHipEffectorPinT"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.pinr" "HIKPinning2State1.RightHipEffectorPinR"
		;
connectAttr "QuickRigCharacter_Ctrl_Hips.rz" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Hips.ry" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Hips.rx" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Hips.tz" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Hips.ty" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Hips.tx" "QuickRigCharacter_HipsBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.rz" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.ry" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.rx" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.tz" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.ty" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.tx" "QuickRigCharacter_HipsBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Hips.msg" "QuickRigCharacter_HipsBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.msg" "QuickRigCharacter_HipsBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "QuickRigCharacter_ControlRig.HIC"
		;
connectAttr "QuickRigCharacter_Ctrl_Reference.ch" "QuickRigCharacter_ControlRig.Reference"
		;
connectAttr "QuickRigCharacter_Ctrl_Hips.ch" "QuickRigCharacter_ControlRig.Hips"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.ch" "QuickRigCharacter_ControlRig.LeftUpLeg"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.ch" "QuickRigCharacter_ControlRig.LeftLeg"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.ch" "QuickRigCharacter_ControlRig.LeftFoot"
		;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.ch" "QuickRigCharacter_ControlRig.RightUpLeg"
		;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.ch" "QuickRigCharacter_ControlRig.RightLeg"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.ch" "QuickRigCharacter_ControlRig.RightFoot"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine.ch" "QuickRigCharacter_ControlRig.Spine"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.ch" "QuickRigCharacter_ControlRig.LeftArm"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.ch" "QuickRigCharacter_ControlRig.LeftForeArm"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.ch" "QuickRigCharacter_ControlRig.LeftHand"
		;
connectAttr "QuickRigCharacter_Ctrl_RightArm.ch" "QuickRigCharacter_ControlRig.RightArm"
		;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.ch" "QuickRigCharacter_ControlRig.RightForeArm"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHand.ch" "QuickRigCharacter_ControlRig.RightHand"
		;
connectAttr "QuickRigCharacter_Ctrl_Head.ch" "QuickRigCharacter_ControlRig.Head"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.ch" "QuickRigCharacter_ControlRig.LeftToeBase"
		;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.ch" "QuickRigCharacter_ControlRig.RightToeBase"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.ch" "QuickRigCharacter_ControlRig.LeftShoulder"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.ch" "QuickRigCharacter_ControlRig.RightShoulder"
		;
connectAttr "QuickRigCharacter_Ctrl_Neck.ch" "QuickRigCharacter_ControlRig.Neck"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine1.ch" "QuickRigCharacter_ControlRig.Spine1"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.ch" "QuickRigCharacter_ControlRig.Spine2"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.ch" "QuickRigCharacter_ControlRig.HipsEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.ch" "QuickRigCharacter_ControlRig.LeftAnkleEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.ch" "QuickRigCharacter_ControlRig.RightAnkleEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.ch" "QuickRigCharacter_ControlRig.LeftWristEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.ch" "QuickRigCharacter_ControlRig.RightWristEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.ch" "QuickRigCharacter_ControlRig.LeftKneeEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.ch" "QuickRigCharacter_ControlRig.RightKneeEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.ch" "QuickRigCharacter_ControlRig.LeftElbowEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.ch" "QuickRigCharacter_ControlRig.RightElbowEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.ch" "QuickRigCharacter_ControlRig.ChestOriginEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.ch" "QuickRigCharacter_ControlRig.ChestEndEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.ch" "QuickRigCharacter_ControlRig.LeftFootEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.ch" "QuickRigCharacter_ControlRig.RightFootEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.ch" "QuickRigCharacter_ControlRig.LeftShoulderEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.ch" "QuickRigCharacter_ControlRig.RightShoulderEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.ch" "QuickRigCharacter_ControlRig.HeadEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.ch" "QuickRigCharacter_ControlRig.LeftHipEffector[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.ch" "QuickRigCharacter_ControlRig.RightHipEffector[0]"
		;
connectAttr "HIKproperties1.ra" "QuickRigCharacter_ControlRig.ra";
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.po" "HIKState2Effector1.HipsEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.po" "HIKState2Effector1.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.po" "HIKState2Effector1.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.po" "HIKState2Effector1.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.po" "HIKState2Effector1.RightWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.po" "HIKState2Effector1.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.po" "HIKState2Effector1.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.po" "HIKState2Effector1.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.po" "HIKState2Effector1.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.po" "HIKState2Effector1.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.po" "HIKState2Effector1.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.po" "HIKState2Effector1.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.po" "HIKState2Effector1.RightFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.po" "HIKState2Effector1.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.po" "HIKState2Effector1.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.po" "HIKState2Effector1.HeadEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.po" "HIKState2Effector1.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.po" "HIKState2Effector1.RightHipEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter1.OutputEffectorState" "HIKState2Effector1.InputEffectorState"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKEffectorFromCharacter1.InputCharacterState"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKEffectorFromCharacter1.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter1.InputPropertySetState"
		;
connectAttr "QuickRigCharacter_Ctrl_HipsEffector.po" "HIKState2Effector2.HipsEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.po" "HIKState2Effector2.LeftAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.po" "HIKState2Effector2.RightAnkleEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.po" "HIKState2Effector2.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.po" "HIKState2Effector2.RightWristEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.po" "HIKState2Effector2.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.po" "HIKState2Effector2.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.po" "HIKState2Effector2.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.po" "HIKState2Effector2.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.po" "HIKState2Effector2.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.po" "HIKState2Effector2.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.po" "HIKState2Effector2.LeftFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.po" "HIKState2Effector2.RightFootEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.po" "HIKState2Effector2.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.po" "HIKState2Effector2.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.po" "HIKState2Effector2.HeadEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.po" "HIKState2Effector2.LeftHipEffectorpivotOffset[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.po" "HIKState2Effector2.RightHipEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter2.OutputEffectorState" "HIKState2Effector2.InputEffectorState"
		;
connectAttr "HIKSolverNode1.decs" "HIKEffectorFromCharacter2.InputCharacterState"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKEffectorFromCharacter2.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter2.InputPropertySetState"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.tz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.ty" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.tx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.tz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.ty" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.tx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.tz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.ty" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.tx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.rz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.ry" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.rx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.tz" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.ty" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.tx" "QuickRigCharacter_LeftLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftUpLeg.msg" "QuickRigCharacter_LeftLegBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftLeg.msg" "QuickRigCharacter_LeftLegBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFoot.msg" "QuickRigCharacter_LeftLegBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftToeBase.msg" "QuickRigCharacter_LeftLegBPKG2.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftAnkleEffector.msg" "QuickRigCharacter_LeftLegBPKG2.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftKneeEffector.msg" "QuickRigCharacter_LeftLegBPKG2.act[5]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftFootEffector.msg" "QuickRigCharacter_LeftLegBPKG2.act[6]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHipEffector.msg" "QuickRigCharacter_LeftLegBPKG2.act[7]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.tz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.ty" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.tx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.tz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.ty" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.tx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.tz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.ty" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.tx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.rz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.ry" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.rx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.tz" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.ty" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.tx" "QuickRigCharacter_RightLegBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightUpLeg.msg" "QuickRigCharacter_RightLegBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightLeg.msg" "QuickRigCharacter_RightLegBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFoot.msg" "QuickRigCharacter_RightLegBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightToeBase.msg" "QuickRigCharacter_RightLegBPKG2.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightAnkleEffector.msg" "QuickRigCharacter_RightLegBPKG2.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightKneeEffector.msg" "QuickRigCharacter_RightLegBPKG2.act[5]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightFootEffector.msg" "QuickRigCharacter_RightLegBPKG2.act[6]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHipEffector.msg" "QuickRigCharacter_RightLegBPKG2.act[7]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.tz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.ty" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.tx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.tz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.ty" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.tx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.rz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.ry" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.rx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.tz" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.ty" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.tx" "QuickRigCharacter_LeftArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_LeftArm.msg" "QuickRigCharacter_LeftArmBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftForeArm.msg" "QuickRigCharacter_LeftArmBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftHand.msg" "QuickRigCharacter_LeftArmBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulder.msg" "QuickRigCharacter_LeftArmBPKG2.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftWristEffector.msg" "QuickRigCharacter_LeftArmBPKG2.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftElbowEffector.msg" "QuickRigCharacter_LeftArmBPKG2.act[5]"
		;
connectAttr "QuickRigCharacter_Ctrl_LeftShoulderEffector.msg" "QuickRigCharacter_LeftArmBPKG2.act[6]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightArm.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightArm.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightArm.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHand.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHand.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightHand.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.tz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.ty" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.tx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.tz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.ty" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.tx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.rz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.ry" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.rx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.tz" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.ty" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.tx" "QuickRigCharacter_RightArmBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_RightArm.msg" "QuickRigCharacter_RightArmBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightForeArm.msg" "QuickRigCharacter_RightArmBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightHand.msg" "QuickRigCharacter_RightArmBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulder.msg" "QuickRigCharacter_RightArmBPKG2.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightWristEffector.msg" "QuickRigCharacter_RightArmBPKG2.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightElbowEffector.msg" "QuickRigCharacter_RightArmBPKG2.act[5]"
		;
connectAttr "QuickRigCharacter_Ctrl_RightShoulderEffector.msg" "QuickRigCharacter_RightArmBPKG2.act[6]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine.rz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine.ry" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine.rx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine1.rz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine1.ry" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine1.rx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine2.rz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine2.ry" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine2.rx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.rz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.ry" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.rx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.tz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.ty" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.tx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.rz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.ry" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.rx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.tz" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.ty" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.tx" "QuickRigCharacter_ChestBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Spine.msg" "QuickRigCharacter_ChestBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine1.msg" "QuickRigCharacter_ChestBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_Spine2.msg" "QuickRigCharacter_ChestBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestOriginEffector.msg" "QuickRigCharacter_ChestBPKG2.act[3]"
		;
connectAttr "QuickRigCharacter_Ctrl_ChestEndEffector.msg" "QuickRigCharacter_ChestBPKG2.act[4]"
		;
connectAttr "QuickRigCharacter_Ctrl_Head.rz" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Head.ry" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Head.rx" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Neck.rz" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Neck.ry" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_Neck.rx" "QuickRigCharacter_HeadBPKG2.dnsm" 
		-na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.rz" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.ry" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.rx" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.tz" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.ty" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.tx" "QuickRigCharacter_HeadBPKG2.dnsm"
		 -na;
connectAttr "QuickRigCharacter_Ctrl_Head.msg" "QuickRigCharacter_HeadBPKG2.act[0]"
		;
connectAttr "QuickRigCharacter_Ctrl_Neck.msg" "QuickRigCharacter_HeadBPKG2.act[1]"
		;
connectAttr "QuickRigCharacter_Ctrl_HeadEffector.msg" "QuickRigCharacter_HeadBPKG2.act[2]"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKState2FK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2FK1.InputCharacterState"
		;
connectAttr "QuickRigCharacter.OutputCharacterDefinition" "HIKState2FK2.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.decs" "HIKState2FK2.InputCharacterState";
connectAttr "hand_face:initialShadingGroup1.pa" ":renderPartition.st" -na;
connectAttr "hand_face:initialShadingGroup3.pa" ":renderPartition.st" -na;
connectAttr "obj_head:initialShadingGroup.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "hand_face:initialShadingGroup2.msg" ":defaultShaderList1.s" -na;
connectAttr "hand_face:initialShadingGroup4.msg" ":defaultShaderList1.s" -na;
connectAttr "obj_head:initialShadingGroup1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ani_player_run_baked_01.ma
