//Maya ASCII 2016 scene
//Name: greybox_rig_boss.001.ma
//Last modified: Wed, May 10, 2017 11:26:50 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "HIKSolverNode" -nodeType "HIKCharacterNode" -nodeType "HIKSkeletonGeneratorNode"
		 -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter" -nodeType "HIKFK2State"
		 -nodeType "HIKState2FK" -nodeType "HIKState2SK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2014.2";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.9 ";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "E587BBB7-466A-3652-AD56-81B77D292116";
	setAttr ".t" -type "double3" -2.9340965073480096 2.2912679802252987 6.1453463257174148 ;
	setAttr ".r" -type "double3" -21.338352729660748 -397.79999999998245 1.006307190249943e-015 ;
	setAttr ".rp" -type "double3" 1.1368683772161603e-015 -5.3290705182007514e-015 0 ;
	setAttr ".rpt" -type "double3" -1.8584395119020643e-015 8.9887019338977492e-017 
		1.3121561103440141e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "46645FE4-429A-8D38-C89C-6DBA5E4DD925";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 6.4650488120370113;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -232.86153002574338 91.829854537058964 336.13165496137503 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "563F161C-41FA-3C48-4698-528D3391A318";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "17DA7A2C-44EA-B7D1-6BBC-44AA79F66F8B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 25.265239107027277;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0C09D177-41B0-C3E8-BE6D-1FA9B98BBD11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.076692341103874642 0.032498994218817356 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DCC02AAD-415D-B47C-88CA-6FA40E05D570";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 26.455031354731972;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "98AD820D-41D1-E85F-6756-96B5F0584CF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 -0.66473507788865183 0.12365705287281557 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5499FAEA-478A-3931-41E1-8A970833ACB3";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 11.056669890371472;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane2";
	rename -uid "162B5086-4AF9-424C-7D9D-E095DC91CF57";
	setAttr ".t" -type "double3" 10.494282389820157 0.22408262553704197 2.8618547202492404 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".s" -type "double3" 13.58522384394859 13.58522384394859 13.58522384394859 ;
	setAttr ".rp" -type "double3" 0 -0.22408262553704197 0 ;
	setAttr ".sp" -type "double3" 0 -0.22408262553704197 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "8E962243-4111-720C-2C4E-A18FF9D18082";
	setAttr -k off ".v";
	setAttr ".fc" 203;
	setAttr ".imn" -type "string" "C:/Users/lukas.bartee/Downloads/boss_concept_1.png";
	setAttr ".cov" -type "short2" 7416 4464 ;
	setAttr ".dic" yes;
	setAttr ".dlc" no;
	setAttr ".w" 0.74159999999999993;
	setAttr ".h" 0.44639999999999996;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "Character1_Reference";
	rename -uid "2255E3B0-42BC-F437-04F2-07AC9BB167FF";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v" no;
	setAttr ".t" -type "double3" 0 5.3659554648379455 0 ;
	setAttr ".rp" -type "double3" 0 -5.3659554648379455 0 ;
	setAttr ".sp" -type "double3" 0 -5.3659554648379455 0 ;
createNode locator -n "Character1_ReferenceShape" -p "Character1_Reference";
	rename -uid "13089634-4E7D-2153-535C-979CA9E6606E";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 -5.3659554648379455 0 ;
createNode joint -n "Character1_Hips" -p "Character1_Reference";
	rename -uid "30F2727A-42FA-5AF9-00A4-A19901972835";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 1;
	setAttr ".radi" 3;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	rename -uid "57813E54-4181-6E5E-AD9A-62A2A95A8572";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	rename -uid "E7F2FD3E-4081-E4B3-9730-6BAB870B40A7";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
createNode joint -n "Character1_Spine2" -p "Character1_Spine1";
	rename -uid "F86150DA-41E3-8D1B-8AE2-71BB07C5E8DB";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine2";
	rename -uid "A34FA39F-4D7D-AA0A-2508-F98F8F35147E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 3;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	rename -uid "B7AAA880-403D-C961-C656-63A37D41518D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 3;
createNode joint -n "Character1_LeftForeArm" -p "Character1_LeftArm";
	rename -uid "48D8C7DD-42A6-37FC-D71D-D9B820690263";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 3;
createNode joint -n "Character1_LeftHand" -p "Character1_LeftForeArm";
	rename -uid "93555E56-422E-D9F8-3210-71AB48C35F08";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 3;
createNode joint -n "Character1_LeftHandThumb1" -p "Character1_LeftHand";
	rename -uid "38DE356E-477F-4B7D-3D01-83AA8A082567";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb2" -p "Character1_LeftHandThumb1";
	rename -uid "9789A719-4EE8-E99B-259A-548D2E624E88";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb3" -p "Character1_LeftHandThumb2";
	rename -uid "BAA5AEDE-4540-B79A-6102-5A81A9E9F206";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandThumb4" -p "Character1_LeftHandThumb3";
	rename -uid "89050D87-48EE-8F1B-25E0-C5AFBC641017";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
createNode joint -n "Character1_LeftHandIndex1" -p "Character1_LeftHand";
	rename -uid "DD8A901F-4973-70BA-41E7-A2925B83E3A2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 -0.00060923479360105906 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex2" -p "Character1_LeftHandIndex1";
	rename -uid "1A4B5634-439C-0194-6DB6-74AE53CE490D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex3" -p "Character1_LeftHandIndex2";
	rename -uid "26B03EE6-4E0B-3D01-771E-9FAD98F30590";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandIndex4" -p "Character1_LeftHandIndex3";
	rename -uid "721FAA9E-4860-5528-F165-5EA95664A653";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
createNode joint -n "Character1_LeftHandMiddle1" -p "Character1_LeftHand";
	rename -uid "FBD8C859-4C6D-FFF2-5D32-2883D53FC0C1";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle2" -p "Character1_LeftHandMiddle1";
	rename -uid "BEC71B83-49A6-C51F-B5D6-159E172EF1DE";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle3" -p "Character1_LeftHandMiddle2";
	rename -uid "3B6EE9C1-476B-F8F9-443D-B090CA638305";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandMiddle4" -p "Character1_LeftHandMiddle3";
	rename -uid "22CF9DBA-4FE5-9276-368A-08907D025A87";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
createNode joint -n "Character1_LeftHandRing1" -p "Character1_LeftHand";
	rename -uid "691BE6BF-416B-922E-0433-09BC9ACA1B5C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing2" -p "Character1_LeftHandRing1";
	rename -uid "8083CA82-4FFF-BEF1-65E3-AA91206F9308";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing3" -p "Character1_LeftHandRing2";
	rename -uid "E117246B-436C-19D9-74F7-EC9FCB861990";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandRing4" -p "Character1_LeftHandRing3";
	rename -uid "A5D81738-4766-9628-1F3D-35904C11AC6E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
createNode joint -n "Character1_LeftHandPinky1" -p "Character1_LeftHand";
	rename -uid "2F1F1045-46E7-50F4-D7D8-21AD6B9E7EEB";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky2" -p "Character1_LeftHandPinky1";
	rename -uid "01E58A51-444C-941E-7A1B-9B884DB15D17";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky3" -p "Character1_LeftHandPinky2";
	rename -uid "C88D05E8-4E94-8F0C-7AB3-B295DE7CCC88";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode joint -n "Character1_LeftHandPinky4" -p "Character1_LeftHandPinky3";
	rename -uid "E28B3E84-413C-D1BE-1764-CE8291BC970E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
createNode transform -n "L_hand" -p "Character1_LeftHand";
	rename -uid "993524AA-481F-4523-0246-0987686476AC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.2363305603951493 -0.11521056819540268 0.28056187329021492 ;
	setAttr ".r" -type "double3" 140.83854945489338 70.500290700023029 -173.43290780844734 ;
	setAttr ".s" -type "double3" 0.16306208186749102 0.1630620624683386 0.16306206218653291 ;
	setAttr ".sh" -type "double3" -1.1663551834872672e-009 2.4539402209398739e-008 -1.9524135300753963e-007 ;
	setAttr ".rp" -type "double3" 1.5138725780272139e-009 0.11743788019596842 0.067273299290215152 ;
	setAttr ".rpt" -type "double3" -0.035875936669650978 0.012855383114913171 -0.059929232650188152 ;
	setAttr ".sp" -type "double3" 6.536993168992922e-015 0.72020365468700565 0.41256254451914781 ;
	setAttr ".spt" -type "double3" 1.5138667825545519e-009 -0.6027657744910373 -0.34528924522893228 ;
createNode mesh -n "L_handShape" -p "L_hand";
	rename -uid "C44472DF-4AA8-6F2D-8928-23BB162E9130";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.25068331 0.58443713 0.72145218 1.85415363 0.43706203 0.9645412
		 1.66381502 1.24885595 0.098660238 2.26728535 1.10148084 0.34174928 1.69975972 1.0033451319 -0.13941608
		 2.30323005 0.85597014 0.10367294 1.28662801 0.33892643 0.48337585 1.89009821 0.19155133 0.72646487;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_forearm" -p "Character1_LeftForeArm";
	rename -uid "C4F7A613-4965-1D3E-D474-C487607BFCC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.5189107468264601 -0.29046088215669813 6.6868598075654088e-006 ;
	setAttr ".r" -type "double3" -3.6240139769741461e-005 -4.2158173932651165e-005 102.6053749664881 ;
	setAttr ".s" -type "double3" 0.16306211382871003 0.16306211382874872 0.16306211726520045 ;
	setAttr ".rp" -type "double3" -2.7807024110082355e-016 0.31874329226049308 0 ;
	setAttr ".rpt" -type "double3" -0.31106039747549957 -0.38830416835763215 -2.0160824340554497e-007 ;
	setAttr ".sp" -type "double3" -1.6200374375330286e-014 1.9547354365542204 0 ;
	setAttr ".spt" -type "double3" 1.3558707084872461e-014 -1.6359921442937273 0 ;
createNode mesh -n "L_forearmShape" -p "L_forearm";
	rename -uid "98B3920C-4446-D59E-E29A-29BC263735C3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.6578293 3.2380865 -0.26189452 
		1.3901131 1.7560365 -0.26189452 3.1264558 2.1534343 -0.26189452 1.8587396 0.67138427 
		-0.26189452 3.1264558 2.1534343 0.26189452 1.8587396 0.67138427 0.26189452 2.6578293 
		3.2380865 0.26189452 1.3901131 1.7560365 0.26189452;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_upperarm" -p "Character1_LeftArm";
	rename -uid "95A7401F-4C72-E300-DD84-3C8BFBDEAFEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.21718463373744862 -0.59204254247175747 5.3299382747114909e-006 ;
	setAttr ".r" -type "double3" -0.0008354413774854958 -0.0011309953327347359 36.452466882430947 ;
	setAttr ".s" -type "double3" 0.16306206873115525 0.16306206874558959 0.16306206650121233 ;
	setAttr ".rp" -type "double3" -7.4152043785559383e-016 0.52365482905810001 0 ;
	setAttr ".rpt" -type "double3" -0.31113249870388276 -0.10245303871546053 -7.635517228884306e-006 ;
	setAttr ".sp" -type "double3" -5.1159076974727211e-015 3.2113834510164883 0 ;
	setAttr ".spt" -type "double3" 4.2816972048851788e-015 -2.6877286219583891 0 ;
createNode mesh -n "L_upperarmShape" -p "L_upperarm";
	rename -uid "A51AC643-4F8D-7026-4350-5CAD8A706868";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.23132455 3.35986352 0.23810549 2.10008454 2.68651175 0.23810549
		 1.52305484 3.73625493 0.23810549 2.39181495 3.062903166 0.23810549 1.52305484 3.73625493 -0.23810549
		 2.39181495 3.062903166 -0.23810549 1.23132455 3.35986352 -0.23810549 2.10008454 2.68651175 -0.23810549;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_clav" -p "Character1_LeftShoulder";
	rename -uid "1C552276-46A9-3493-CB02-9A837679EF94";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.07 -0.089629313453013212 -6.217248937900876e-017 ;
	setAttr ".s" -type "double3" 0.36699550844766826 0.083507264699414802 0.19149056207073153 ;
createNode mesh -n "L_clavShape" -p "L_clav";
	rename -uid "3D71159A-4BA5-B32E-5F5F-8CB6012B9D03";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.5625 0.25 0.5625 0 0.5625 0.5 0.625 0.5 0.5625 0.75 0.625 0.75
		 0.5625 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 -0.5 0.50000006 0.61104351 1.31172061 0.50000006
		 0.61104351 1.31172061 -0.50000006 0.5 -0.5 -0.50000006 0.30552176 1.31172061 0.50000006
		 0.25 -0.5 0.50000006 0.30552176 1.31172061 -0.50000006 0.25 -0.5 -0.50000006;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 5 0 0 4 1 0 6 2 0
		 7 3 0 5 4 0 4 6 0 6 7 0 7 5 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 -9 4 0 -6
		mu 0 4 4 5 0 3
		f 4 -10 5 1 -7
		mu 0 4 6 4 3 7
		f 4 -11 6 2 -8
		mu 0 4 8 6 7 9
		f 4 -12 7 3 -5
		mu 0 4 10 8 9 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "Character1_RightShoulder" -p "Character1_Spine2";
	rename -uid "247C9201-4F0D-91A9-9948-0B94125D568E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 3;
createNode joint -n "Character1_RightArm" -p "Character1_RightShoulder";
	rename -uid "870C4B1C-40D0-4141-4BDE-11907CF7FBBA";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 3;
createNode joint -n "Character1_RightForeArm" -p "Character1_RightArm";
	rename -uid "27C8AC18-4151-A476-848A-20B88B131FA4";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 3;
createNode joint -n "Character1_RightHand" -p "Character1_RightForeArm";
	rename -uid "70F78A1F-4AF7-B27E-7B36-129B79FCAEC4";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 3;
createNode joint -n "Character1_RightHandThumb1" -p "Character1_RightHand";
	rename -uid "AA5422A4-4762-1092-EA31-D0B9124885D4";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb2" -p "Character1_RightHandThumb1";
	rename -uid "CD88D2E0-4199-5446-30C3-D4B3A0479C78";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb3" -p "Character1_RightHandThumb2";
	rename -uid "239625C4-4865-CAE0-3992-D2ADE189A6EC";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandThumb4" -p "Character1_RightHandThumb3";
	rename -uid "7215EE6F-43D3-5B0D-4AC8-D5A778EA6084";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
createNode joint -n "Character1_RightHandIndex1" -p "Character1_RightHand";
	rename -uid "B7EFBA52-4C78-D45E-A71A-D6B4B720E21B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 -0.00060925450710392053 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex2" -p "Character1_RightHandIndex1";
	rename -uid "55E4D01F-433D-857B-5DE2-5AB6ED547D09";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex3" -p "Character1_RightHandIndex2";
	rename -uid "15629B58-4E99-AED1-9477-679CA2E7F363";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandIndex4" -p "Character1_RightHandIndex3";
	rename -uid "B1A088D4-4B79-2287-B645-448685C3339E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
createNode joint -n "Character1_RightHandMiddle1" -p "Character1_RightHand";
	rename -uid "B958C0BB-4C5E-5DB0-8AFD-4C87B52DE57E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 -0.00060925450710392053 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle2" -p "Character1_RightHandMiddle1";
	rename -uid "8676FF1A-413A-C570-BDAE-B1950F8531C1";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle3" -p "Character1_RightHandMiddle2";
	rename -uid "55640828-4770-7F4A-CAAF-2285772B744D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandMiddle4" -p "Character1_RightHandMiddle3";
	rename -uid "BAF26AAA-402B-D25C-90C2-7191BC5C738D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
createNode joint -n "Character1_RightHandRing1" -p "Character1_RightHand";
	rename -uid "C56878D3-4DF1-7A79-4609-03B1B6B58BCE";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 -0.00060925450710392053 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing2" -p "Character1_RightHandRing1";
	rename -uid "25107EE7-445F-EAD4-3EF8-90B4F19746F8";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing3" -p "Character1_RightHandRing2";
	rename -uid "25996B00-4338-1896-4BC0-1FBA3C24258D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandRing4" -p "Character1_RightHandRing3";
	rename -uid "BF00F5CB-4C64-5947-D69B-F790C1CD8914";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
createNode joint -n "Character1_RightHandPinky1" -p "Character1_RightHand";
	rename -uid "ADFE5440-4D56-30B4-7B5C-7BBE6CD1F2D4";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".jo" -type "double3" 0 -0.00060925450710392053 0 ;
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky2" -p "Character1_RightHandPinky1";
	rename -uid "3F7F33A8-4D6C-D4D9-6919-589C2E17DAF1";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky3" -p "Character1_RightHandPinky2";
	rename -uid "A61D4805-4FD5-81E0-E2E5-FF86B0EAC83D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode joint -n "Character1_RightHandPinky4" -p "Character1_RightHandPinky3";
	rename -uid "235C5771-4DD8-AB7D-1298-33813D89BC90";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
createNode transform -n "R_hand" -p "Character1_RightHand";
	rename -uid "9F23DE21-430E-426C-0DD0-CCAA252CA937";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.22588836245650501 -0.13454382451437397 0.28056316507133788 ;
	setAttr ".r" -type "double3" 39.161749572938646 70.500392405117012 -1.7774742052238677 ;
	setAttr ".s" -type "double3" 0.16306207720621402 0.1630620692040933 -0.16306207151459839 ;
	setAttr ".sh" -type "double3" 5.2034018271778555e-009 3.1341890260271747e-009 9.7241414104507835e-008 ;
	setAttr ".rp" -type "double3" 4.0023113299261744e-010 0.11743789163986243 -0.06727330313862559 ;
	setAttr ".rpt" -type "double3" 0.02487219357557138 0.015395806823221199 0.074617568074349563 ;
	setAttr ".sp" -type "double3" 6.536993168992922e-015 0.72020365468700565 0.41256254451914781 ;
	setAttr ".spt" -type "double3" 4.0022385447897025e-010 -0.60276576304714335 -0.47983584765777382 ;
createNode mesh -n "R_handShape" -p "R_hand";
	rename -uid "8E6F4D39-4E40-D2B4-557E-9FA66DA4BEB9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.25068331 0.58443713 0.72145218 1.85415363 0.43706203 0.9645412
		 1.66381502 1.24885595 0.098660238 2.26728535 1.10148084 0.34174928 1.69975972 1.0033451319 -0.13941608
		 2.30323005 0.85597014 0.10367294 1.28662801 0.33892643 0.48337585 1.89009821 0.19155133 0.72646487;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_forearm" -p "Character1_RightForeArm";
	rename -uid "C4B7FDED-4CD4-7FB8-999E-BBB97E3A8C7D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.51891286164624639 -0.2904619701457663 6.6174600620281104e-006 ;
	setAttr ".r" -type "double3" 179.99994991735508 7.9501728024929035e-005 77.394617081194397 ;
	setAttr ".s" -type "double3" 0.16306206979181667 0.16306206979197041 -0.16306205387136072 ;
	setAttr ".rp" -type "double3" -5.0052629880827365e-015 0.31874320618024199 0 ;
	setAttr ".rpt" -type "double3" 0.31106030381546002 -0.38830410666477755 2.7861568436139545e-007 ;
	setAttr ".sp" -type "double3" -1.6200374375330286e-014 1.9547354365542204 0 ;
	setAttr ".spt" -type "double3" 1.3558707798286618e-014 -1.6359922303739782 0 ;
createNode mesh -n "R_forearmShape" -p "R_forearm";
	rename -uid "68158F51-49DE-F777-D6A4-01B1BAE3B93A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.6578293 3.2380865 -0.26189452 
		1.3901131 1.7560365 -0.26189452 3.1264558 2.1534343 -0.26189452 1.8587396 0.67138427 
		-0.26189452 3.1264558 2.1534343 0.26189452 1.8587396 0.67138427 0.26189452 2.6578293 
		3.2380865 0.26189452 1.3901131 1.7560365 0.26189452;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_upperarm" -p "Character1_RightArm";
	rename -uid "9765292D-4D5A-8A40-362C-628BC5AD0546";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.21718639425277789 -0.59204496453170896 5.153939105134346e-006 ;
	setAttr ".r" -type "double3" -179.99919215220177 -0.0010936400491899072 143.54753491032184 ;
	setAttr ".s" -type "double3" 0.16306207249979096 0.16306207251328753 -0.16306206650440233 ;
	setAttr ".rp" -type "double3" -9.2690056874170614e-016 0.52365484115762218 0 ;
	setAttr ".rpt" -type "double3" 0.31113249272374138 -0.10245303135047916 -7.3833258570077302e-006 ;
	setAttr ".sp" -type "double3" -5.1159076974727211e-015 3.2113834510164883 0 ;
	setAttr ".spt" -type "double3" 4.2816971856051863e-015 -2.6877286098588669 0 ;
createNode mesh -n "R_upperarmShape" -p "R_upperarm";
	rename -uid "4BEF2FCC-4043-56F8-57F3-129AFA68A722";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  1.23132455 3.35986352 0.23810549 2.10008454 2.68651175 0.23810549
		 1.52305484 3.73625493 0.23810549 2.39181495 3.062903166 0.23810549 1.52305484 3.73625493 -0.23810549
		 2.39181495 3.062903166 -0.23810549 1.23132455 3.35986352 -0.23810549 2.10008454 2.68651175 -0.23810549;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_clav" -p "Character1_RightShoulder";
	rename -uid "357D21E2-4D1B-BA48-6051-708273C3C629";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.07 -0.089629313453013212 6.2172489379008785e-017 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.36699550844766826 0.083507264699414802 -0.19149056207073153 ;
createNode mesh -n "R_clavShape" -p "R_clav";
	rename -uid "2AD7FD0E-42C5-E5CD-BFAF-ED818B6A72BC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.5625 0.25 0.5625 0 0.5625 0.5 0.625 0.5 0.5625 0.75 0.625 0.75
		 0.5625 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0.5 -0.5 0.50000006 0.61104351 1.31172061 0.50000006
		 0.61104351 1.31172061 -0.50000006 0.5 -0.5 -0.50000006 0.30552176 1.31172061 0.50000006
		 0.25 -0.5 0.50000006 0.30552176 1.31172061 -0.50000006 0.25 -0.5 -0.50000006;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 5 0 0 4 1 0 6 2 0
		 7 3 0 5 4 0 4 6 0 6 7 0 7 5 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 -9 4 0 -6
		mu 0 4 4 5 0 3
		f 4 -10 5 1 -7
		mu 0 4 6 4 3 7
		f 4 -11 6 2 -8
		mu 0 4 8 6 7 9
		f 4 -12 7 3 -5
		mu 0 4 10 8 9 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "Character1_Neck" -p "Character1_Spine2";
	rename -uid "6FB142F5-4C12-DF15-6813-08AC9C9BD3A8";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 7;
	setAttr ".radi" 3;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	rename -uid "2A121442-4BCE-2F8A-1516-FEB5F9218723";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".ds" 2;
	setAttr ".typ" 8;
	setAttr ".radi" 3;
createNode transform -n "head" -p "Character1_Neck";
	rename -uid "74AE76DE-4715-7250-0ECE-7FA0C8D76A6C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8259610804005014e-016 0.13613372239686045 -9.3825953595663355e-032 ;
	setAttr ".s" -type "double3" 0.16306209190779239 0.16306209190779239 0.16306209190779239 ;
createNode mesh -n "headShape" -p "head";
	rename -uid "D13D81A1-4EC0-ECF8-6E6B-959853E6118E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 0.13518791 0 -0.13518791 ;
	setAttr ".pt[1]" -type "float3" -0.13518791 0 -0.13518791 ;
	setAttr ".pt[6]" -type "float3" 0.13518791 0 0.13518791 ;
	setAttr ".pt[7]" -type "float3" -0.13518791 0 0.13518791 ;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "shoulder" -p "Character1_Spine2";
	rename -uid "D217FEE2-41AD-4FC4-641F-1D9FEAD40ACE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7009350452819521e-016 -0.46269734448098548 -4.3864761296008827e-032 ;
	setAttr ".s" -type "double3" 0.16306209190779239 0.16306209190779239 0.30057001392575577 ;
createNode mesh -n "shoulderShape" -p "shoulder";
	rename -uid "A5261632-4BBD-C184-E6CA-DBA847EB5166";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53125 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.5 0.25 0.5 0 0.5625
		 0 0.5625 0.25 0.5 0.5 0.5625 0.5 0.5 0.75 0.5625 0.75 0.5 1 0.5625 1 0.5 0.25 0.5
		 0 0.5625 0 0.5625 0.25 0.5 0.75 0.5 0.5 0.5625 0.5 0.5625 0.75 0.5 1 0.5625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0 2.90604711 0.31854573 0 2.90604711 -0.31854573
		 0 3.83386421 -0.31854573 0 3.83386421 0.31854573 0.56266218 2.90604711 0.31854573
		 0.68762213 3.83386421 0.31854573 0.68762213 3.83386421 -0.31854573 0.56266218 2.90604711 -0.31854573
		 -0.56266218 2.90604711 0.31854573 -0.68762213 3.83386421 0.31854573 -0.68762213 3.83386421 -0.31854573
		 -0.56266218 2.90604711 -0.31854573;
	setAttr -s 17 ".ed[0:16]"  0 4 0 1 7 0 2 6 0 3 5 0 0 1 0 1 2 0 3 0 0
		 4 5 0 6 7 0 7 4 0 0 8 0 1 11 0 2 10 0 3 9 0 8 9 0 10 11 0 11 8 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 0 7 -4
		mu 0 4 0 1 2 3
		f 4 5 2 8 -2
		mu 0 4 6 4 5 7
		f 4 4 1 9 -1
		mu 0 4 8 6 7 9
		f 4 13 -15 -11 -7
		mu 0 4 10 13 12 11
		f 4 11 -16 -13 -6
		mu 0 4 14 17 16 15
		f 4 10 -17 -12 -5
		mu 0 4 18 19 17 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "sternum" -p "Character1_Spine1";
	rename -uid "E528B884-4DFB-7999-9EB0-30ACFCAF43C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.5716579518096893e-017 -0.3360307234300367 -1.5761601668138672e-032 ;
	setAttr ".s" -type "double3" 0.16306209190779239 0.16306209190779239 0.41421122720153769 ;
createNode mesh -n "sternumShape" -p "sternum";
	rename -uid "E415E60C-4F4A-73D3-F92B-A1A05BE4AF36";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.5 0.5
		 0.25 0.5 0.25 0.5 0 0.625 0 0.625 0.25 0.5 0.5 0.625 0.5 0.5 0.75 0.625 0.75 0.5
		 1 0.625 1 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.81505501 2.20754004 0.26064873 0.81505501 2.71965933 0.26064873
		 0.81505501 2.71965933 -0.26064873 0.81505501 2.20754004 -0.26064873 0 2.20754004 0.26064873
		 0 2.20754004 -0.26064873 0 2.71965933 -0.26064873 0 2.71965933 0.26064873 -0.81505501 2.20754004 0.26064873
		 -0.81505501 2.71965933 0.26064873 -0.81505501 2.71965933 -0.26064873 -0.81505501 2.20754004 -0.26064873;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 5 3 0 6 2 0
		 7 1 0 4 5 1 5 6 1 6 7 1 7 4 1 8 9 0 9 10 0 10 11 0 11 8 0 4 8 0 5 11 0 6 10 0 7 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 11 4 0 -8
		mu 0 4 11 7 0 1
		f 4 10 7 1 -7
		mu 0 4 10 11 1 2
		f 4 9 6 2 -6
		mu 0 4 9 10 2 3
		f 4 8 5 3 -5
		mu 0 4 8 9 3 4
		f 4 -4 -3 -2 -1
		mu 0 4 0 5 6 1
		f 4 19 -13 -17 -12
		mu 0 4 12 15 14 13
		f 4 18 -14 -20 -11
		mu 0 4 16 17 15 12
		f 4 17 -15 -19 -10
		mu 0 4 18 19 17 16
		f 4 16 -16 -18 -9
		mu 0 4 20 21 19 18
		f 4 12 13 14 15
		mu 0 4 14 15 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "belly" -p "Character1_Spine";
	rename -uid "CD9E585C-495D-770E-52D4-5B99A5A7E7DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.9465283286928005e-017 -0.2093640526164865 -3.2713035932250284e-033 ;
	setAttr ".s" -type "double3" 0.16306209190779239 0.16306209190779239 0.48714353129414667 ;
createNode mesh -n "bellyShape" -p "belly";
	rename -uid "C3D33743-4D28-3A54-F522-9FBAA2BD6312";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.5 0.5
		 0.25 0.5 0.25 0.5 0 0.625 0 0.625 0.25 0.5 0.5 0.625 0.5 0.5 0.75 0.625 0.75 0.5
		 1 0.625 1 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  1.67525065 1.26574671 0.26064873 1.26367497 2.030715227 0.26064873
		 1.26367497 2.030715227 -0.26064873 1.67525065 1.26574671 -0.26064873 0 1.26574671 0.26064873
		 0 1.26574671 -0.26064873 0 2.030715227 -0.26064873 0 2.030715227 0.26064873 -1.67525065 1.26574671 0.26064873
		 -1.26367497 2.030715227 0.26064873 -1.26367497 2.030715227 -0.26064873 -1.67525065 1.26574671 -0.26064873;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 5 3 0 6 2 0
		 7 1 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 4 8 0 5 11 0 6 10 0 7 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 11 4 0 -8
		mu 0 4 11 7 0 1
		f 4 10 7 1 -7
		mu 0 4 10 11 1 2
		f 4 9 6 2 -6
		mu 0 4 9 10 2 3
		f 4 8 5 3 -5
		mu 0 4 8 9 3 4
		f 4 -4 -3 -2 -1
		mu 0 4 0 5 6 1
		f 4 19 -13 -17 -12
		mu 0 4 12 15 14 13
		f 4 18 -14 -20 -11
		mu 0 4 16 17 15 12
		f 4 17 -15 -19 -10
		mu 0 4 18 19 17 16
		f 4 16 -16 -18 -9
		mu 0 4 20 21 19 18
		f 4 12 13 14 15
		mu 0 4 14 15 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hips" -p "Character1_Hips";
	rename -uid "AAD96C14-49EC-CDE0-012D-D48F12C0E7A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3922196853106536e-017 -0.13936404639616132 -1.5456743499682774e-033 ;
	setAttr ".s" -type "double3" 0.16306209190779239 0.16306209190779239 0.66658941953859419 ;
createNode mesh -n "hipsShape" -p "hips";
	rename -uid "522F29D1-491A-00FE-612F-F193BAB955AB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.5 0.5
		 0.25 0.5 0.25 0.5 0 0.625 0 0.625 0.25 0.5 0.5 0.625 0.5 0.5 0.75 0.625 0.75 0.5
		 1 0.625 1 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  2.45768285 0.40379703 0.26064873 1.91556501 1.16876543 0.26064873
		 1.91556501 1.16876543 -0.26064873 2.45768285 0.40379703 -0.26064873 0 0.40379703 0.26064873
		 0 0.40379703 -0.26064873 0 1.16876543 -0.26064873 0 1.16876543 0.26064873 -2.45768285 0.40379703 0.26064873
		 -1.91556501 1.16876543 0.26064873 -1.91556501 1.16876543 -0.26064873 -2.45768285 0.40379703 -0.26064873;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 0 0 4 0 0 5 3 0 6 2 0
		 7 1 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 4 8 0 5 11 0 6 10 0 7 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 11 4 0 -8
		mu 0 4 11 7 0 1
		f 4 10 7 1 -7
		mu 0 4 10 11 1 2
		f 4 9 6 2 -6
		mu 0 4 9 10 2 3
		f 4 8 5 3 -5
		mu 0 4 8 9 3 4
		f 4 -4 -3 -2 -1
		mu 0 4 0 5 6 1
		f 4 19 -13 -17 -12
		mu 0 4 12 15 14 13
		f 4 18 -14 -20 -11
		mu 0 4 16 17 15 12
		f 4 17 -15 -19 -10
		mu 0 4 18 19 17 16
		f 4 16 -16 -18 -9
		mu 0 4 20 21 19 18
		f 4 12 13 14 15
		mu 0 4 14 15 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Character1_Ctrl_Reference";
	rename -uid "23428924-4BE9-5B72-8C78-EEAB39B8C7DA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v" no;
	setAttr -l on ".ra";
createNode locator -n "Character1_Ctrl_ReferenceShape" -p "Character1_Ctrl_Reference";
	rename -uid "73629FAC-4F8A-E240-816D-BFA8F1579CBD";
	setAttr -k off ".v";
createNode hikIKEffector -n "Character1_Ctrl_LeftWristEffector" -p "Character1_Ctrl_Reference";
	rename -uid "3AE49DFC-4FB5-5461-C278-68999A5E7712";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 2.5153317260742187 1.2202906799316406 1.1844030761718751 ;
	setAttr ".r" -type "double3" -5.4423111106575259 -18.696723536926118 76.442227339681509 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 3;
	setAttr ".radi" 30.663164958575155;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightWristEffector" -p "Character1_Ctrl_Reference";
	rename -uid "0C040594-4292-63C1-FCFA-32B435B6B5D5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -2.5153388977050781 1.2203115844726562 1.1844033813476562 ;
	setAttr ".r" -type "double3" 5.3110426418641916 13.928496330837548 75.974728359408559 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr ".pin" 1;
	setAttr ".ei" 4;
	setAttr ".radi" 30.663164958575155;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftKneeEffector" -p "Character1_Ctrl_Reference";
	rename -uid "04AFB7EB-454D-4C91-6E84-1988B4B80A44";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.54641761779785158 -2.2820872496370193 0 ;
	setAttr ".r" -type "double3" -1.2722218725854067e-014 1.4124500153760508e-030 1.2722218725854067e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 5;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 61.326329917150318 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightKneeEffector" -p "Character1_Ctrl_Reference";
	rename -uid "1BC3B096-494D-1C0A-C391-4A8C1182AEB1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -0.54641761779785158 -2.2820872496370193 2.6923730038106443e-005 ;
	setAttr ".r" -type "double3" -1.2722218725854067e-014 1.4124500153760508e-030 1.2722218725854067e-014 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 6;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" -90 0 -89.999999999999986 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 61.326329917150318 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftElbowEffector" -p "Character1_Ctrl_Reference";
	rename -uid "799CE59D-4246-CEF3-1CBD-CFBE2841002C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 2.4328408813476563 2.6516873168945314 0.39392147064208988 ;
	setAttr ".r" -type "double3" -115.66519013320229 -60.95905135472173 84.042462686252335 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 7;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -61.326329917150318 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightElbowEffector" -p "Character1_Ctrl_Reference";
	rename -uid "D2E45345-45ED-993C-C381-A38DF58DF558";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" -2.4328500366210939 2.6516967773437501 0.39392726898193359 ;
	setAttr ".r" -type "double3" -115.66512438675817 -60.959027846055669 84.042548994687138 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 8;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".tof" -type "double3" 0 0 -61.326329917150318 ;
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_ChestOriginEffector" -p "Character1_Ctrl_Reference";
	rename -uid "D2823F8B-4125-4D05-2FE5-528112259A26";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 1.8069977480474065e-016 1.2839529418945312 1.8897219433711145e-008 ;
	setAttr ".r" -type "double3" -1.0612394681752618e-014 -1.1843786605777568e-014 9.9828265154444615 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 9;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_ChestEndEffector" -p "Character1_Ctrl_Reference";
	rename -uid "7A75A638-4C54-5DE6-6A5B-21B3CDF69705";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 0 3.4080938720703124 1.0720510864257813 ;
	setAttr ".r" -type "double3" 1.4836987249303251e-014 -3.7932519225274892e-014 34.59454338981292 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 10;
	setAttr ".radi" 91.98949487572547;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftShoulderEffector" -p "Character1_Ctrl_Reference";
	rename -uid "8A9526C0-4BAB-C8A1-BD67-448331CC3002";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 1.0859237670898438 3.5656082153320314 0.78717536926269538 ;
	setAttr ".r" -type "double3" -31.476757616525077 33.07758840837279 16.276001326438919 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 13;
	setAttr ".radi" 49.061063933720249;
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightShoulderEffector" -p "Character1_Ctrl_Reference";
	rename -uid "1E18A436-403D-F42E-890E-9B8E94F82D2E";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -1.0859237670898438 3.5656250000000003 0.78718261718750004 ;
	setAttr ".r" -type "double3" -31.4767872129765 33.077613346887837 16.275950795124817 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 14;
	setAttr ".radi" 49.061063933720249;
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".rof" -type "double3" 0 0 90 ;
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness" 0.5;
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_HeadEffector" -p "Character1_Ctrl_Reference";
	rename -uid "A317D487-4270-171F-E13E-BDB9EF2E68E2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 2.7117248876072643e-015 4.6760070800781248 1.0029457855224611 ;
	setAttr ".r" -type "double3" 1.8372925847732591e-015 -1.2984418868327859e-014 11.964741105575754 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 15;
	setAttr ".radi" 61.326329917150311;
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".lk" 1;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandThumbEffector" -p "Character1_Ctrl_Reference";
	rename -uid "78F7422A-47C9-D42C-4FFD-7D83DF73CCA5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.137987670898438 3.6299366761442298 0.30601163864135744 ;
	setAttr ".r" -type "double3" 0 1.4033404043355446e-014 -7.864952257130377e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 179.99978616389893 ;
	setAttr -l on ".ra";
	setAttr ".ei" 20;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 90 -0.00021383610107697097 180 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandIndexEffector" -p "Character1_Ctrl_Reference";
	rename -uid "1D9EE549-4CA9-EAC5-C055-4E8A999AE6A2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.4803662109375004 3.7240296937223549 0.23178531646728517 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 181.9963831214242 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 21;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 178.0036168785758 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandMiddleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "CFABE99E-432C-562E-9434-4396B444C4BF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.5288079833984378 3.7425010682340734 0.08004803657531738 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180.00342946771178 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 22;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 179.99657053228822 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandRingEffector" -p "Character1_Ctrl_Reference";
	rename -uid "EA088438-4D55-658A-AE7B-899CEA74537D";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.48069091796875 3.7350807191129798 -0.048641591072082518 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 179.99996988930488 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 23;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 180.00003011069512 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_LeftHandPinkyEffector" -p "Character1_Ctrl_Reference";
	rename -uid "2E414D8F-4622-1D0D-B672-F8BD887C173B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 5.3524023437499997 3.6925874329801673 -0.15272463798522951 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 24;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 180 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandThumbEffector" -p "Character1_Ctrl_Reference";
	rename -uid "6F5ADEF1-4E4E-5A7D-CB5B-27AB1B9D7B3F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.1377667236328124 3.6299549866911049 0.31720737457275389 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90.000000000000014 0 2.0015603511162188 ;
	setAttr -l on ".ra";
	setAttr ".ei" 26;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 90.000000000000014 2.0015603511162188 -1.9890602488698543e-016 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandIndexEffector" -p "Character1_Ctrl_Reference";
	rename -uid "B7B6758D-4EF2-0080-3972-568E5EAB8AD0";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.4803417968749999 3.7240480042692297 0.19405183792114258 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985399584307271 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 27;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 -1.9985399584307271 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandMiddleEffector" -p "Character1_Ctrl_Reference";
	rename -uid "516EBE06-4209-FC15-612B-3AAC97C3FD76";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.5284399414062504 3.7425193787809485 0.059454832077026371 ;
	setAttr ".r" -type "double3" 0 -1.1927080055488188e-015 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9986267238539837 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 28;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 -1.998626723853983 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandRingEffector" -p "Character1_Ctrl_Reference";
	rename -uid "B5DEB6DC-469F-C9EC-DBE4-C4B99A84081D";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.4803662109375004 3.735099029659855 -0.067340602874755864 ;
	setAttr ".r" -type "double3" 0 3.975693351829395e-016 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9986688361477329 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 29;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 -1.9986688361477329 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikIKEffector -n "Character1_Ctrl_RightHandPinkyEffector" -p "Character1_Ctrl_Reference";
	rename -uid "D1D4D37F-4C81-A687-00B9-FDAF97348F72";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	addAttr -ci true -sn "pull" -ln "pull" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "stiffness" -ln "stiffness" -min 0 -max 1 -at "double";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" -5.3526599121093748 3.6925935364957923 -0.16699098587036132 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9984974018306849 0 ;
	setAttr -l on ".ra";
	setAttr ".ei" 30;
	setAttr ".radi" 12.265265983430062;
	setAttr -l on ".jo" -type "double3" 0 -1.9984974018306849 0 ;
	setAttr -l on ".jo";
	setAttr ".lk" 6;
	setAttr -cb on ".pull";
	setAttr -cb on ".stiffness";
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Hips" -p "Character1_Ctrl_Reference";
	rename -uid "4523CAF6-4B40-FF2E-CFE8-F1BDA1A9AE66";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr ".t" -type "double3" 0 0.85466873180829284 0 ;
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine" -p "Character1_Ctrl_Hips";
	rename -uid "4A45E203-4BCD-6C96-A5B6-D5BB2B395D24";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.42928428649902345 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -1.3780887766188155e-014 -1.1567058009393282e-014 9.9828251849805731 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine1" -p "Character1_Ctrl_Spine";
	rename -uid "ED8DDA09-4B19-5A11-0638-4687F873FC27";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.77680015563964833 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.1074775802168399e-015 6.7787253243451719e-016 24.61171687436849 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Spine2" -p "Character1_Ctrl_Spine1";
	rename -uid "26B214B9-4186-67FA-B420-959D6032C3AE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.77680007934570261 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftShoulder" -p "Character1_Ctrl_Spine2";
	rename -uid "B1F2F3B2-45B8-8D94-EA2E-578202ED2C52";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.42928432464599608 0.87421722412109382 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 0 -0.0010651377407200232 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 0 0.0010651377407200232 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftArm" -p "Character1_Ctrl_LeftShoulder";
	rename -uid "325C7AC4-4599-999E-9308-74B496643C6E";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.65663936614990237 1.2207031249431565e-005 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -59.618690949296891 36.452448931973144 0.0017479139817764442 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftForeArm" -p "Character1_Ctrl_LeftArm";
	rename -uid "63E06C8A-42C9-D038-815E-B89185C712FC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.6745398712158197 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -6.4074270854934005e-005 -66.152924679893445 0.0014113859379027477 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHand" -p "Character1_Ctrl_LeftForeArm";
	rename -uid "B4F69F74-47BA-4CC3-C985-96917937AC1A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 1.6372415161132814 -5.6843418860808016e-016 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 101.15674319671699 -10.090711076422521 41.617256784126489 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb1" -p "Character1_Ctrl_LeftHand";
	rename -uid "42695EBA-4F7F-A7D8-0799-CC9D1E149DDE";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.26668975830078123 -0.048969116210937504 0.26262571334838869 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -9.9392333795734985e-017 -3.180554681463516e-015 3.9756933518293944e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 86.814038541541862 -11.165822179859758 16.036872766477039 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -86.757947467903776 -15.39579478308359 -12.044243693295991 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb2" -p "Character1_Ctrl_LeftHandThumb1";
	rename -uid "3B3A9C88-414D-EB70-CE05-48913F0E95FF";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.1540884399414057 -0.032876892089843748 0.043385925292968752 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.9083328088827391e-014 2.4265706493099374e-020 -1.6985994545169541e-019 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0.00022422022753490194 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 -0.00022422022753490183 2.4265706493285148e-020 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb3" -p "Character1_Ctrl_LeftHandThumb2";
	rename -uid "F63328FD-4143-FD59-20A7-80A0DBBEDF04";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.15596527099609375 0 6.1035156250000001e-007 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.9083328088827391e-014 -1.0102629771562651e-035 6.0664266232748363e-020 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 -0.000213836101076971 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -90 0.00021383610107697097 1.2132853246634166e-020 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandThumb4" -p "Character1_Ctrl_LeftHandThumb3";
	rename -uid "C58ADD07-42DD-BC3F-656A-079B2CFC25ED";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.16353912353515626 0 -6.1035156250000001e-007 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 1.4033404043355446e-014 -7.864952257130377e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 179.99978616389893 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 -0.00021383610107697097 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex1" -p "Character1_Ctrl_LeftHand";
	rename -uid "5069AC8A-4964-F736-74AA-35ABB1D1A6CB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.54101470947265629 0.01224700927734375 0.21290477752685547 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 5.4054762196434697e-048 -4.4139062980501586e-032 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -1.9964296695395154 -2.2082935836570876e-032 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -1.9964296695395154 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex2" -p "Character1_Ctrl_LeftHandIndex1";
	rename -uid "0E153580-4CB9-D876-FEEF-2396B7FE99C9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.25896881103515623 0 0.0090272331237792967 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587919e-016 9.7376402754185631e-032 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -1.9963311320863237 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -1.9963311320863233 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex3" -p "Character1_Ctrl_LeftHandIndex2";
	rename -uid "8DC72347-4EA7-869D-9E78-799FCF9D7030";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.16265563964843752 0 0.0056696319580078125 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.9513867036587919e-016 1.4151546573468726e-031 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -1.9963831214242076 2.2082935211198924e-032 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -1.9963831214242072 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandIndex4" -p "Character1_Ctrl_LeftHandIndex3";
	rename -uid "33816669-409D-0567-9F98-3E921732831C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.12002197265625 0 0.0041836738586425786 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 181.9963831214242 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 178.0036168785758 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle1" -p "Character1_Ctrl_LeftHand";
	rename -uid "521805B4-4B6A-C2C7-4108-A3AC3A7D5B3B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.54027252197265629 0.030718383789062501 0.080011234283447266 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 1.5530052155583578e-018 2.7639739401306097e-034 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.003653166482046877 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0036531664820468762 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle2" -p "Character1_Ctrl_LeftHandMiddle1";
	rename -uid "3BBF8E21-41C7-FD50-E645-A8B93C0B7F93";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.29824859619140626 0 1.9016265869140626e-005 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 1.0557570741491152e-050 -8.620910738379216e-035 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.0035218399262324758 -4.3104553773326588e-035 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0035218399262324758 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle3" -p "Character1_Ctrl_LeftHandMiddle2";
	rename -uid "8E517C90-44E7-A7FA-E321-A08B90EFCF18";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.16957946777343749 0 1.0423660278320312e-005 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 7.765026077791789e-019 1.3819869700653053e-034 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 -0.0034294677117765325 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 -0.0034294677117765321 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandMiddle4" -p "Character1_Ctrl_LeftHandMiddle3";
	rename -uid "E43ED2B3-451B-AF61-6CCE-AEA5826E2CB1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.1230023193359375 0 7.3623657226562498e-006 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180.00342946771178 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 179.99657053228822 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing1" -p "Character1_Ctrl_LeftHand";
	rename -uid "256C0E33-4E40-2374-399C-CDBE187156D2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.54541778564453125 0.023298034667968752 -0.048641529083251957 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing2" -p "Character1_Ctrl_LeftHandRing1";
	rename -uid "B39F38AD-4078-AF7A-6E98-338AF7202FDB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.27828643798828068 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing3" -p "Character1_Ctrl_LeftHandRing2";
	rename -uid "56818FDC-4EDD-2DFB-E601-53BF5A49782B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.141326904296875 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.7827625563343735e-058 -1.213285324654967e-020 -1.6837716285896906e-036 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -180 3.0110695119953688e-005 -3.3675432571798465e-037 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 3.0110695119953681e-005 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandRing4" -p "Character1_Ctrl_LeftHandRing3";
	rename -uid "912A0B5A-4773-5A22-A1D3-D080ADB979D1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.1179547119140625 0 -6.1988830566406252e-008 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 179.99996988930488 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 180.00003011069512 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky1" -p "Character1_Ctrl_LeftHand";
	rename -uid "B547D709-49F1-A0BE-ECA7-FC8B3EE978C8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.54471252441406248 -0.01919525146484375 -0.15272463798522951 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky2" -p "Character1_Ctrl_LeftHandPinky1";
	rename -uid "D87A63D5-432E-4447-423D-8085606169D1";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.18668334960937499 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky3" -p "Character1_Ctrl_LeftHandPinky2";
	rename -uid "CA1E289E-46DF-D4DD-06D7-C1AD1901B0AC";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.1210888671875 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 180 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 180 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_LeftHandPinky4" -p "Character1_Ctrl_LeftHandPinky3";
	rename -uid "9E2D23EF-4D44-86FD-9B50-42BC7DD2AAA5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0.10221252441406251 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 180 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 180 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightShoulder" -p "Character1_Ctrl_Spine2";
	rename -uid "27D20682-471B-FE48-7B34-1892684E17CD";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.42928432464599608 0.87421722412109382 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 0 0.0026628443501895971 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 0 -0.0026628443501895971 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightArm" -p "Character1_Ctrl_RightShoulder";
	rename -uid "81CFAA20-4C03-3CEE-B6EA-B3A32876D10B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.65663936614990237 3.0517578124431566e-005 
		0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -59.618729652895745 36.452451717094071 0.0016861694565678659 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightForeArm" -p "Character1_Ctrl_RightArm";
	rename -uid "A0B79CBA-47F3-358D-84A2-BC9F553F0788";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.6745523834228515 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 7.5238222726338268e-005 -66.152928148457178 0.0013916308810835356 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHand" -p "Character1_Ctrl_RightForeArm";
	rename -uid "CF82F45D-4521-DF10-3AAA-FEA476F1092A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -1.63722900390625 0 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -100.28076719307477 10.981818668694164 46.403686365171474 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 0 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb1" -p "Character1_Ctrl_RightHand";
	rename -uid "FE081D2A-48E5-1547-5952-89B10557344F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.2666650390625 -0.048969116210937504 0.26264902114868166 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 8.6898780242862529e-032 1.192708005548819e-015 8.3489560388417351e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 86.813207250403494 11.165297901973837 163.95844446939554 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 86.757024952325693 -15.400325087628378 -167.95577946403299 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb2" -p "Character1_Ctrl_RightHandThumb1";
	rename -uid "99D900A4-4851-1F81-B1C3-36B8AABE983B";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.15408874511718751 -0.032876892089843748 0.043399410247802736 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829395e-016 9.9392333795734887e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 89.999999999999986 0 177.99852756335932 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 89.999999999999986 -2.0014724366406864 -180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb3" -p "Character1_Ctrl_RightHandThumb2";
	rename -uid "9452D8FA-4906-48F2-6E4B-708D39610A9C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.15586700439453124 0 0.0054470062255859023 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 1.4113711398994352e-014 -9.5416640443905487e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 90 0 177.99843964888379 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 -2.0015603511162183 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandThumb4" -p "Character1_Ctrl_RightHandThumb3";
	rename -uid "DEAB0255-47EC-2DAA-1881-2D990A779E14";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.16344085693359375 0 0.0057119369506835587 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -90.000000000000014 0 2.0015603511162188 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90.000000000000014 2.0015603511162188 -1.9890602488698543e-016 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex1" -p "Character1_Ctrl_RightHand";
	rename -uid "EFC49FBF-4B89-D52A-CF3B-C3B55B3AC8F5";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.54099639892578122 0.01224700927734375 0.21295200347900392 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 2.2082963201078639e-032 1.9984654195740981 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9984654195740976 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex2" -p "Character1_Ctrl_RightHandIndex1";
	rename -uid "38EAFB90-4E78-00E3-3C47-9B80A079F290";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.25896881103515623 0 -0.0090364456176757809 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 2.2069531490250793e-032 -3.975693351829396e-016 -7.6569068759894938e-050 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9984784960368847 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9984784960368847 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex3" -p "Character1_Ctrl_RightHandIndex2";
	rename -uid "10D8D402-4B70-6414-C6CF-05A1522E69CB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.16265563964843752 0 -0.005675735473632813 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985399584307271 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985399584307271 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandIndex4" -p "Character1_Ctrl_RightHandIndex3";
	rename -uid "024F3AF7-415E-3485-4FA6-9C93DDA97D73";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.12001586914062501 0 -0.0041879844665527344 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985399584307271 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9985399584307271 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle1" -p "Character1_Ctrl_RightHand";
	rename -uid "C0A9544D-44D2-4EA1-441A-19A539296AFB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.54026641845703127 0.030718383789062501 0.080059070587158207 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985235962683956 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985235962683956 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle2" -p "Character1_Ctrl_RightHandMiddle1";
	rename -uid "9A97DBF2-4A54-DEF5-D5CD-DA8B958236C9";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.29806427001953123 0 -0.010400943756103516 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -2.2082962341146821e-032 1.9984014775932548 
		-180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9984014775932548 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle3" -p "Character1_Ctrl_RightHandMiddle2";
	rename -uid "6910C20F-4936-B64C-06C0-A2B09BEAEAAA";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.1694818115234375 0 -0.0059137010574340822 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 3.975693351829396e-016 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 2.2082965370522145e-032 1.998626723853983 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9986267238539825 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandMiddle4" -p "Character1_Ctrl_RightHandMiddle3";
	rename -uid "A5F4F262-443F-E7EA-75BE-CD87650D9831";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.12292236328125 0 -0.0042895936965942384 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -1.1927080055488188e-015 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9986267238539837 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.998626723853983 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing1" -p "Character1_Ctrl_RightHand";
	rename -uid "6C18BD6D-474B-28DF-1F35-6C9D6A7A32AB";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.54542388916015627 0.023298034667968752 -0.048593573570251465 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.2069531490250793e-032 3.975693351829396e-016 -7.6569068759894938e-050 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985023914627147 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985023914627142 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing2" -p "Character1_Ctrl_RightHandRing1";
	rename -uid "E52C4C1B-424A-CDC1-FBFF-028975C841E8";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.27811492919921876 0 -0.0097047090530395508 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9985056403886239 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9985056403886239 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing3" -p "Character1_Ctrl_RightHandRing2";
	rename -uid "7CB9214F-411F-8861-2376-94BE122822F4";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.14124084472656251 0 -0.0049285507202148438 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9986688361477334 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9986688361477336 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandRing4" -p "Character1_Ctrl_RightHandRing3";
	rename -uid "22639EA1-4604-A6DF-B6DF-119C7A976597";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.11788146972656251 0 -0.0041137695312500003 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 3.975693351829395e-016 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9986688361477329 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9986688361477329 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky1" -p "Character1_Ctrl_RightHand";
	rename -uid "39FA4352-4FBC-BA97-2CBE-63954EE5B551";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.54473114013671875 -0.019194946289062501 -0.15267619132995605 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 -3.975693351829396e-016 0 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -6.5330853252158205e-005 1.9985907736993103 
		179.99812670937584 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" -6.0701191672601991e-021 1.9985907747666598 
		-179.99812784892646 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky2" -p "Character1_Ctrl_RightHandPinky1";
	rename -uid "00B2ED7A-4428-BB39-3D12-F5A9E71F212C";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.18679351806640626 -6.1035156250000003e-006 
		-0.006518373489379883 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.0664266232748351e-021 -7.9513867036587919e-016 -4.2094290714742266e-038 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -0.00010574828549753942 1.9984662453065816 179.99696759493264 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 6.0701187068967694e-021 1.998466248103268 -179.99696943936002 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky3" -p "Character1_Ctrl_RightHandPinky2";
	rename -uid "44A88A77-4BDF-CDF7-BDE1-4FB1D7001EC2";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.12116271972656251 -6.4086914062499998e-006 
		-0.0042278480529785159 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9984974018306849 -180 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 1.9984974018306849 180 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_RightHandPinky4" -p "Character1_Ctrl_RightHandPinky3";
	rename -uid "13E6940E-4736-021C-E3B6-BF94FE9A170F";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" -0.1022674560546875 0 -0.0035685729980468751 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" 0 1.9984974018306849 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 0 -1.9984974018306849 0 ;
	setAttr -l on ".jo";
	setAttr ".radi" 12.265265983430062;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Neck" -p "Character1_Ctrl_Spine2";
	rename -uid "269CE123-45BE-98D7-8EDE-E6A35EFC001A";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 0.77680023193359382 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -6.0165878337346417e-015 -3.7921380839644754e-015 -11.314761677016822 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode hikFKJoint -n "Character1_Ctrl_Head" -p "Character1_Ctrl_Neck";
	rename -uid "3AE8D513-4CCD-C79A-3CC4-89BAA63700A3";
	addAttr -s false -ci true -sn "ch" -ln "ControlSet" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovc" 25;
	setAttr -l on ".t" -type "double3" 0 1.2265267944335938 0 ;
	setAttr -l on ".t";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270335e-015 -6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr -l on ".s";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -l on ".ra" -type "double3" -89.999999999999986 -89.999999999999986 0 ;
	setAttr -l on ".ra";
	setAttr -l on ".jo" -type "double3" 90 0 90 ;
	setAttr -l on ".jo";
	setAttr ".radi" 24.530531966860124;
instanceable -a 0;
createNode transform -n "imagePlane3";
	rename -uid "31865487-4412-99FF-ECA9-8CB822EF1F39";
	setAttr ".t" -type "double3" 2.0630330469915559 0.22408262553704197 0 ;
	setAttr ".s" -type "double3" 13.58522384394859 13.58522384394859 13.58522384394859 ;
	setAttr ".rp" -type "double3" 0 -0.22408262553704197 0 ;
	setAttr ".sp" -type "double3" 0 -0.22408262553704197 0 ;
createNode imagePlane -n "imagePlaneShape3" -p "imagePlane3";
	rename -uid "864C3684-4157-9B22-A34E-75A6E91FF005";
	setAttr -k off ".v";
	setAttr ".fc" 203;
	setAttr ".imn" -type "string" "C:/Users/lukas.bartee/Downloads/boss_concept_1.png";
	setAttr ".cov" -type "short2" 7416 4464 ;
	setAttr ".dic" yes;
	setAttr ".dlc" no;
	setAttr ".w" 0.74159999999999993;
	setAttr ".h" 0.44639999999999996;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "bottom";
	rename -uid "DD519C9D-4EBA-D0C5-AECD-F196C7548206";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -100.10000000000001 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "48937640-44C4-1234-8666-DB9817AADBC3";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode transform -n "left";
	rename -uid "8DE51C8D-4D45-5273-A1D5-CCADAD440775";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.10000000000001 0.14474515984773959 2.5295477615223372 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "EF421FB7-4722-0527-8A51-6BA1D5D0D513";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 27.652882728662821;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "DCE58DE3-4843-EE32-3328-32880C57495B";
	setAttr ".t" -type "double3" 0 1 -0.45025025229566068 ;
	setAttr ".s" -type "double3" 1.1486748831912355 1 0.85555552755993414 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "CF98C676-484F-C774-9662-4BA036B39B21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[25]" -type "float3" -0.27942756 0.11330301 0.17679553 ;
	setAttr ".pt[26]" -type "float3" 0.27942723 0.11330285 0.17679553 ;
	setAttr ".pt[27]" -type "float3" -2.6736473e-008 0.38547829 -0.28378558 ;
	setAttr ".pt[28]" -type "float3" 0.55997896 0.33154327 -0.27087766 ;
	setAttr ".pt[29]" -type "float3" 0.28055143 0.71409303 -0.76249695 ;
	setAttr ".pt[30]" -type "float3" -0.28055134 0.71409303 -0.76249719 ;
	setAttr ".pt[31]" -type "float3" -0.55997896 0.33154327 -0.27087766 ;
createNode transform -n "pCube1";
	rename -uid "33335854-4398-A23A-FAF2-459C845DA211";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "0A01E9EF-4926-5421-AB6B-BD86095424A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "front1";
	rename -uid "EC58D753-48CB-56C8-0502-AEB0D539F5E4";
	setAttr ".t" -type "double3" 3.6771300448430493 2.6905829596412554 100.10000000000001 ;
createNode camera -n "frontShape2" -p "front1";
	rename -uid "6723A240-409E-6EEC-AF8D-69B5616A4986";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 27.309417040358746;
	setAttr ".imn" -type "string" "front1";
	setAttr ".den" -type "string" "front1_depth";
	setAttr ".man" -type "string" "front1_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "3233519D-433E-781B-749B-66B532390237";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "4FDE13B3-425F-3299-FBD9-2CA4DDDF0050";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "1F077D11-4840-3ECE-0337-92A81BAF3FB7";
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
	rename -uid "18E07447-465A-B94F-D0DE-A98F81371C56";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0369C0B3-4320-FE8B-C39F-05A61A0137C9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "645FA856-451A-F489-E336-02BA40EB7347";
createNode displayLayer -n "defaultLayer";
	rename -uid "B72D36A3-4A49-FCFA-3879-1D8DA70F3A56";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A9CC1F60-4CFE-F251-9D5F-4598CFD495E0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "68BABDF3-4F0F-994F-CFAB-58AB126830F0";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "302E53B9-4BE1-8CDE-0C36-D6808C73CD8F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 815\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 815\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 815\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 815\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1338\n                -height 731\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1338\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"left\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 940\n                -height 999\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"left\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 940\n            -height 999\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tmodelPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel6\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel6\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel6\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel7\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel7\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel7\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel8\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel8\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 951\n                -height 999\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel8\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 951\n            -height 999\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tmodelPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1338\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1338\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "381E11BE-4BCF-AD3C-ACB6-79A3671ED49C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode HIKCharacterNode -n "Character1";
	rename -uid "B0BC493A-490F-3C9F-4E3F-6CBE75C5DAB2";
	setAttr ".OutputCharacterDefinition" -type "HIKCharacter" ;
	setAttr ".InputCharacterizationLock" yes;
	setAttr ".ReferenceTy" -5.3659554648379455;
	setAttr ".ReferenceSx" 6.1326329917150302;
	setAttr ".ReferenceSy" 6.1326329917150302;
	setAttr ".ReferenceSz" 6.1326329917150302;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 0.76667752687708457;
	setAttr ".HipsSx" 6.1326329917150302;
	setAttr ".HipsSy" 6.1326329917150302;
	setAttr ".HipsSz" 6.1326329917150302;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.54641759956180924;
	setAttr ".LeftUpLegTy" 0.38216143829655247;
	setAttr ".LeftUpLegSx" 6.1326329917150302;
	setAttr ".LeftUpLegSy" 6.1326329917150302;
	setAttr ".LeftUpLegSz" 6.1326329917150302;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.54641759956180924;
	setAttr ".LeftLegTy" -2.3700783915232697;
	setAttr ".LeftLegSx" 6.1326329917150302;
	setAttr ".LeftLegSy" 6.1326329917150302;
	setAttr ".LeftLegSz" 6.1326329917150302;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.54641759956180924;
	setAttr ".LeftFootTy" -4.8661213454812042;
	setAttr ".LeftFootSx" 6.1326329917150302;
	setAttr ".LeftFootSy" 6.1326329917150302;
	setAttr ".LeftFootSz" 6.1326329917150302;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -0.54641759956180924;
	setAttr ".RightUpLegTy" 0.38216143829655247;
	setAttr ".RightUpLegSx" 6.1326329917150302;
	setAttr ".RightUpLegSy" 6.1326329917150302;
	setAttr ".RightUpLegSz" 6.1326329917150302;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -0.54641759956180924;
	setAttr ".RightLegTy" -2.3700783915232697;
	setAttr ".RightLegTz" 2.6923730665546994e-005;
	setAttr ".RightLegSx" 6.1326329917150302;
	setAttr ".RightLegSy" 6.1326329917150302;
	setAttr ".RightLegSz" 6.1326329917150302;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -0.54641759956180924;
	setAttr ".RightFootTy" -4.8661213454812042;
	setAttr ".RightFootTz" 2.6923730665546994e-005;
	setAttr ".RightFootSx" 6.1326329917150284;
	setAttr ".RightFootSy" 6.1326329917150302;
	setAttr ".RightFootSz" 6.1326329917150284;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 1.1959618362971367;
	setAttr ".SpineSx" 6.1326329917150302;
	setAttr ".SpineSy" 6.1326329917150302;
	setAttr ".SpineSz" 6.1326329917150302;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 1.0859237217419557;
	setAttr ".LeftArmTy" 3.6237915134882237;
	setAttr ".LeftArmSx" 6.1326329917150302;
	setAttr ".LeftArmSy" 6.1326329917150302;
	setAttr ".LeftArmSz" 6.1326329917150302;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 2.7604636906617119;
	setAttr ".LeftForeArmTy" 3.6237915134882237;
	setAttr ".LeftForeArmSx" 6.1326329917150302;
	setAttr ".LeftForeArmSy" 6.1326329917150302;
	setAttr ".LeftForeArmSz" 6.1326329917150302;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 4.3977049857258566;
	setAttr ".LeftHandTy" 3.6237915134882237;
	setAttr ".LeftHandSx" 6.1326329917150302;
	setAttr ".LeftHandSy" 6.1326329917150302;
	setAttr ".LeftHandSz" 6.1326329917150302;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -1.0859237217419557;
	setAttr ".RightArmTy" 3.6238099113871995;
	setAttr ".RightArmSx" 6.1326329917150302;
	setAttr ".RightArmSy" 6.1326329917150302;
	setAttr ".RightArmSz" 6.1326329917150302;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -2.7604759559276952;
	setAttr ".RightForeArmTy" 3.6238099113871995;
	setAttr ".RightForeArmSx" 6.1326329917150302;
	setAttr ".RightForeArmSy" 6.1326329917150302;
	setAttr ".RightForeArmSz" 6.1326329917150302;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -4.3977049857258574;
	setAttr ".RightHandTy" 3.6238099113871995;
	setAttr ".RightHandSx" 6.1326329917150302;
	setAttr ".RightHandSy" 6.1326329917150302;
	setAttr ".RightHandSz" 6.1326329917150302;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTy" 4.7528889714918545;
	setAttr ".HeadSx" 6.1326329917150302;
	setAttr ".HeadSy" 6.1326329917150302;
	setAttr ".HeadSz" 6.1326329917150302;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.54641821282510838;
	setAttr ".LeftToeBaseTy" -5.2501664478479722;
	setAttr ".LeftToeBaseTz" 0.79446420617770697;
	setAttr ".LeftToeBaseSx" 6.1326329917150302;
	setAttr ".LeftToeBaseSy" 6.1326329917150302;
	setAttr ".LeftToeBaseSz" 6.1326329917150302;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -0.54648444526141904;
	setAttr ".RightToeBaseTy" -5.2501664478479722;
	setAttr ".RightToeBaseTz" 0.79449486934266567;
	setAttr ".RightToeBaseSx" 6.1326329917150284;
	setAttr ".RightToeBaseSy" 6.1326329917150302;
	setAttr ".RightToeBaseSz" 6.1326329917150284;
	setAttr ".RightToeBaseJointOrienty" 1.4622811973002402e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.42928430942005213;
	setAttr ".LeftShoulderTy" 3.6237792482222417;
	setAttr ".LeftShoulderSx" 6.1326329917150302;
	setAttr ".LeftShoulderSy" 6.1326329917150302;
	setAttr ".LeftShoulderSz" 6.1326329917150302;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.42928430942005213;
	setAttr ".RightShoulderTy" 3.6237792482222417;
	setAttr ".RightShoulderSx" 6.1326329917150302;
	setAttr ".RightShoulderSy" 6.1326329917150302;
	setAttr ".RightShoulderSz" 6.1326329917150302;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTy" 3.526362373148848;
	setAttr ".NeckSx" 6.1326329917150302;
	setAttr ".NeckSy" 6.1326329917150302;
	setAttr ".NeckSz" 6.1326329917150302;
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
	setAttr ".Spine1Ty" 1.9727620152477072;
	setAttr ".Spine1Sx" 6.1326329917150302;
	setAttr ".Spine1Sy" 6.1326329917150302;
	setAttr ".Spine1Sz" 6.1326329917150302;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Ty" 2.7495621941982762;
	setAttr ".Spine2Sx" 6.1326329917150302;
	setAttr ".Spine2Sy" 6.1326329917150302;
	setAttr ".Spine2Sz" 6.1326329917150302;
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
	setAttr ".LeftHandThumb1Tx" 4.664394796636568;
	setAttr ".LeftHandThumb1Ty" 3.5748224390493797;
	setAttr ".LeftHandThumb1Tz" 0.26262571502710202;
	setAttr ".LeftHandThumb1Sx" 6.1326329917150302;
	setAttr ".LeftHandThumb1Sy" 6.1326329917150302;
	setAttr ".LeftHandThumb1Sz" 6.1326329917150302;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 4.818483333186399;
	setAttr ".LeftHandThumb2Ty" 3.5419453935807952;
	setAttr ".LeftHandThumb2Tz" 0.30601164039028911;
	setAttr ".LeftHandThumb2Sx" 6.1326329917150302;
	setAttr ".LeftHandThumb2Sy" 6.1326329917150302;
	setAttr ".LeftHandThumb2Sz" 6.1326329917150302;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 4.9744484554316966;
	setAttr ".LeftHandThumb3Ty" 3.5419453935807952;
	setAttr ".LeftHandThumb3Tz" 0.30601225365358831;
	setAttr ".LeftHandThumb3Sx" 6.1326329917150302;
	setAttr ".LeftHandThumb3Sy" 6.1326329917150302;
	setAttr ".LeftHandThumb3Sz" 6.1326329917150302;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 5.1379873794217614;
	setAttr ".LeftHandThumb4Ty" 3.5419453935807952;
	setAttr ".LeftHandThumb4Tz" 0.30601164039028911;
	setAttr ".LeftHandThumb4Sx" 6.1326329917150302;
	setAttr ".LeftHandThumb4Sy" 6.1326329917150302;
	setAttr ".LeftHandThumb4Sz" 6.1326329917150302;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 4.938719735621965;
	setAttr ".LeftHandIndex1Ty" 3.6360383815726789;
	setAttr ".LeftHandIndex1Tz" 0.21290477978347322;
	setAttr ".LeftHandIndex1Ry" -0.00060923483500415594;
	setAttr ".LeftHandIndex1Sx" 6.1326329917150302;
	setAttr ".LeftHandIndex1Sy" 6.1326329917150302;
	setAttr ".LeftHandIndex1Sz" 6.1326329917150302;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 5.1976885615961068;
	setAttr ".LeftHandIndex2Ty" 3.6360383815726771;
	setAttr ".LeftHandIndex2Tz" 0.22193201554727771;
	setAttr ".LeftHandIndex2Ry" -0.00060923483500415594;
	setAttr ".LeftHandIndex2Sx" 6.1326329917150302;
	setAttr ".LeftHandIndex2Sy" 6.1326329917150302;
	setAttr ".LeftHandIndex2Sz" 6.1326329917150302;
	setAttr ".LeftHandIndex2JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 5.360344386435365;
	setAttr ".LeftHandIndex3Ty" 3.6360383815726771;
	setAttr ".LeftHandIndex3Tz" 0.22760163474811826;
	setAttr ".LeftHandIndex3Ry" -0.00060923483500415594;
	setAttr ".LeftHandIndex3Sx" 6.1326329917150302;
	setAttr ".LeftHandIndex3Sy" 6.1326329917150302;
	setAttr ".LeftHandIndex3Sz" 6.1326329917150302;
	setAttr ".LeftHandIndex3JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 5.4803661467162206;
	setAttr ".LeftHandIndex4Ty" 3.6360383815726771;
	setAttr ".LeftHandIndex4Tz" 0.23178531697506621;
	setAttr ".LeftHandIndex4Ry" -0.00060923483500415594;
	setAttr ".LeftHandIndex4Sx" 6.1326329917150302;
	setAttr ".LeftHandIndex4Sy" 6.1326329917150302;
	setAttr ".LeftHandIndex4Sz" 6.1326329917150302;
	setAttr ".LeftHandIndex4JointOrienty" 0.00060923483500415594;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 4.9379776870299672;
	setAttr ".LeftHandMiddle1Ty" 3.6545098721437239;
	setAttr ".LeftHandMiddle1Tz" 0.080011236116307657;
	setAttr ".LeftHandMiddle1Sx" 6.1326329917150302;
	setAttr ".LeftHandMiddle1Sy" 6.1326329917150302;
	setAttr ".LeftHandMiddle1Sz" 6.1326329917150302;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 5.2362260273160439;
	setAttr ".LeftHandMiddle2Ty" 3.6545098721437239;
	setAttr ".LeftHandMiddle2Tz" 0.080030247278581948;
	setAttr ".LeftHandMiddle2Sx" 6.1326329917150302;
	setAttr ".LeftHandMiddle2Sy" 6.1326329917150302;
	setAttr ".LeftHandMiddle2Sz" 6.1326329917150302;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 5.4058055948029482;
	setAttr ".LeftHandMiddle3Ty" 3.6545098721437239;
	setAttr ".LeftHandMiddle3Tz" 0.080040672754667877;
	setAttr ".LeftHandMiddle3Sx" 6.1326329917150302;
	setAttr ".LeftHandMiddle3Sy" 6.1326329917150302;
	setAttr ".LeftHandMiddle3Sz" 6.1326329917150302;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 5.5288078147177764;
	setAttr ".LeftHandMiddle4Ty" 3.6545098721437239;
	setAttr ".LeftHandMiddle4Tz" 0.080048031914257939;
	setAttr ".LeftHandMiddle4Sx" 6.1326329917150302;
	setAttr ".LeftHandMiddle4Sy" 6.1326329917150302;
	setAttr ".LeftHandMiddle4Sz" 6.1326329917150302;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 4.9431229661100167;
	setAttr ".LeftHandRing1Ty" 3.6470893862237501;
	setAttr ".LeftHandRing1Tz" -0.048641530510757022;
	setAttr ".LeftHandRing1Sx" 6.1326329917150302;
	setAttr ".LeftHandRing1Sy" 6.1326329917150302;
	setAttr ".LeftHandRing1Sz" 6.1326329917150302;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 5.2214095860080612;
	setAttr ".LeftHandRing2Ty" 3.6470893862237501;
	setAttr ".LeftHandRing2Tz" -0.048641530510757022;
	setAttr ".LeftHandRing2Sx" 6.1326329917150302;
	setAttr ".LeftHandRing2Sy" 6.1326329917150302;
	setAttr ".LeftHandRing2Sz" 6.1326329917150302;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 5.3627361133021338;
	setAttr ".LeftHandRing3Ty" 3.6470893862237501;
	setAttr ".LeftHandRing3Tz" -0.048641530510757022;
	setAttr ".LeftHandRing3Sx" 6.1326329917150302;
	setAttr ".LeftHandRing3Sy" 6.1326329917150302;
	setAttr ".LeftHandRing3Sz" 6.1326329917150302;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 5.4806911762647808;
	setAttr ".LeftHandRing4Ty" 3.6470893862237501;
	setAttr ".LeftHandRing4Tz" -0.048641591837086939;
	setAttr ".LeftHandRing4Sx" 6.1326329917150302;
	setAttr ".LeftHandRing4Sy" 6.1326329917150302;
	setAttr ".LeftHandRing4Sz" 6.1326329917150302;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 4.9424177133159688;
	setAttr ".LeftHandPinky1Ty" 3.6045963722241563;
	setAttr ".LeftHandPinky1Tz" -0.15272463897247446;
	setAttr ".LeftHandPinky1Sx" 6.1326329917150302;
	setAttr ".LeftHandPinky1Sy" 6.1326329917150302;
	setAttr ".LeftHandPinky1Sz" 6.1326329917150302;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 5.1291011942167666;
	setAttr ".LeftHandPinky2Ty" 3.6045963722241563;
	setAttr ".LeftHandPinky2Tz" -0.15272463897247446;
	setAttr ".LeftHandPinky2Sx" 6.1326329917150302;
	setAttr ".LeftHandPinky2Sy" 6.1326329917150302;
	setAttr ".LeftHandPinky2Sz" 6.1326329917150302;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 5.2501900326381792;
	setAttr ".LeftHandPinky3Ty" 3.6045963722241563;
	setAttr ".LeftHandPinky3Tz" -0.15272463897247446;
	setAttr ".LeftHandPinky3Sx" 6.1326329917150302;
	setAttr ".LeftHandPinky3Sy" 6.1326329917150302;
	setAttr ".LeftHandPinky3Sz" 6.1326329917150302;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 5.3524026267110933;
	setAttr ".LeftHandPinky4Ty" 3.6045963722241563;
	setAttr ".LeftHandPinky4Tz" -0.15272463897247446;
	setAttr ".LeftHandPinky4Sx" 6.1326329917150302;
	setAttr ".LeftHandPinky4Sy" 6.1326329917150302;
	setAttr ".LeftHandPinky4Sz" 6.1326329917150302;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
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
	setAttr ".RightHandThumb1Tx" -4.6643702661046023;
	setAttr ".RightHandThumb1Ty" 3.5748408369483555;
	setAttr ".RightHandThumb1Tz" 0.26264901903247051;
	setAttr ".RightHandThumb1Sx" 6.1326329917150302;
	setAttr ".RightHandThumb1Sy" 6.1326329917150302;
	setAttr ".RightHandThumb1Sz" 6.1326329917150302;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -4.8184588026544333;
	setAttr ".RightHandThumb2Ty" 3.541963791479771;
	setAttr ".RightHandThumb2Tz" 0.3060484361882394;
	setAttr ".RightHandThumb2Sx" 6.1326329917150302;
	setAttr ".RightHandThumb2Sy" 6.1326329917150302;
	setAttr ".RightHandThumb2Sz" 6.1326329917150302;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -4.9743258027718626;
	setAttr ".RightHandThumb3Ty" 3.541963791479771;
	setAttr ".RightHandThumb3Tz" 0.31149544081148073;
	setAttr ".RightHandThumb3Sx" 6.1326329917150302;
	setAttr ".RightHandThumb3Sy" 6.1326329917150302;
	setAttr ".RightHandThumb3Sz" 6.1326329917150302;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -5.1377666046340611;
	setAttr ".RightHandThumb4Ty" 3.541963791479771;
	setAttr ".RightHandThumb4Tz" 0.31720737517996406;
	setAttr ".RightHandThumb4Sx" 6.1326329917150302;
	setAttr ".RightHandThumb4Sy" 6.1326329917150302;
	setAttr ".RightHandThumb4Sz" 6.1326329917150302;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -4.93870133772299;
	setAttr ".RightHandIndex1Ty" 3.6360567794716547;
	setAttr ".RightHandIndex1Tz" 0.21295200105750942;
	setAttr ".RightHandIndex1Ry" -0.0006092545355265459;
	setAttr ".RightHandIndex1Sx" 6.1326329917150302;
	setAttr ".RightHandIndex1Sy" 6.1326329917150302;
	setAttr ".RightHandIndex1Sz" 6.1326329917150302;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -5.1976701636971328;
	setAttr ".RightHandIndex2Ty" 3.636056779471653;
	setAttr ".RightHandIndex2Tz" 0.20391556634421726;
	setAttr ".RightHandIndex2Ry" -0.00060925452882496249;
	setAttr ".RightHandIndex2Sx" 6.1326329917150302;
	setAttr ".RightHandIndex2Sy" 6.1326329917150302;
	setAttr ".RightHandIndex2Sz" 6.1326329917150302;
	setAttr ".RightHandIndex2JointOrienty" 0.00060925453552654601;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -5.3603259885363901;
	setAttr ".RightHandIndex3Ty" 3.636056779471653;
	setAttr ".RightHandIndex3Tz" 0.198239814510385;
	setAttr ".RightHandIndex3Ry" -0.00060925452882496227;
	setAttr ".RightHandIndex3Sx" 6.1326329917150302;
	setAttr ".RightHandIndex3Sy" 6.1326329917150302;
	setAttr ".RightHandIndex3Sz" 6.1326329917150302;
	setAttr ".RightHandIndex3JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -5.480341616184254;
	setAttr ".RightHandIndex4Ty" 3.636056779471653;
	setAttr ".RightHandIndex4Tz" 0.19405183944034274;
	setAttr ".RightHandIndex4Ry" -0.00060925452882496216;
	setAttr ".RightHandIndex4Sx" 6.1326329917150302;
	setAttr ".RightHandIndex4Sy" 6.1326329917150302;
	setAttr ".RightHandIndex4Sz" 6.1326329917150302;
	setAttr ".RightHandIndex4JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -4.9379715543969755;
	setAttr ".RightHandMiddle1Ty" 3.6545282700426998;
	setAttr ".RightHandMiddle1Tz" 0.080059070653643025;
	setAttr ".RightHandMiddle1Ry" -0.0006092545355265459;
	setAttr ".RightHandMiddle1Sx" 6.1326329917150302;
	setAttr ".RightHandMiddle1Sy" 6.1326329917150302;
	setAttr ".RightHandMiddle1Sz" 6.1326329917150302;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -5.2360359156933018;
	setAttr ".RightHandMiddle2Ty" 3.654528270042698;
	setAttr ".RightHandMiddle2Tz" 0.069658125099694351;
	setAttr ".RightHandMiddle2Ry" -0.00060925452882496249;
	setAttr ".RightHandMiddle2Sx" 6.1326329917150302;
	setAttr ".RightHandMiddle2Sy" 6.1326329917150302;
	setAttr ".RightHandMiddle2Sz" 6.1326329917150302;
	setAttr ".RightHandMiddle2JointOrienty" 0.00060925453552654601;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -5.4055173610523388;
	setAttr ".RightHandMiddle3Ty" 3.654528270042698;
	setAttr ".RightHandMiddle3Tz" 0.063744427105783541;
	setAttr ".RightHandMiddle3Ry" -0.00060925452882496227;
	setAttr ".RightHandMiddle3Sx" 6.1326329917150302;
	setAttr ".RightHandMiddle3Sy" 6.1326329917150302;
	setAttr ".RightHandMiddle3Sz" 6.1326329917150302;
	setAttr ".RightHandMiddle3JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -5.5284398567382746;
	setAttr ".RightHandMiddle4Ty" 3.654528270042698;
	setAttr ".RightHandMiddle4Tz" 0.059454834307068598;
	setAttr ".RightHandMiddle4Ry" -0.00060925452882496216;
	setAttr ".RightHandMiddle4Sx" 6.1326329917150302;
	setAttr ".RightHandMiddle4Sy" 6.1326329917150302;
	setAttr ".RightHandMiddle4Sz" 6.1326329917150302;
	setAttr ".RightHandMiddle4JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -4.9431290987430083;
	setAttr ".RightHandRing1Ty" 3.6471077841227242;
	setAttr ".RightHandRing1Tz" -0.0485935733207618;
	setAttr ".RightHandRing1Ry" -0.0006092545355265459;
	setAttr ".RightHandRing1Sx" 6.1326329917150302;
	setAttr ".RightHandRing1Sy" 6.1326329917150302;
	setAttr ".RightHandRing1Sz" 6.1326329917150302;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -5.2212440049172839;
	setAttr ".RightHandRing2Ty" 3.6471077841227206;
	setAttr ".RightHandRing2Tz" -0.05829828105116109;
	setAttr ".RightHandRing2Ry" -0.00060925452882496249;
	setAttr ".RightHandRing2Sx" 6.1326329917150302;
	setAttr ".RightHandRing2Sy" 6.1326329917150302;
	setAttr ".RightHandRing2Sz" 6.1326329917150302;
	setAttr ".RightHandRing2JointOrienty" 0.00060925453552654601;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -5.3624846753494726;
	setAttr ".RightHandRing3Ty" 3.6471077841227224;
	setAttr ".RightHandRing3Tz" -0.063226832881282807;
	setAttr ".RightHandRing3Ry" -0.00060925452882496227;
	setAttr ".RightHandRing3Sx" 6.1326329917150302;
	setAttr ".RightHandRing3Sy" 6.1326329917150302;
	setAttr ".RightHandRing3Sz" 6.1326329917150302;
	setAttr ".RightHandRing3JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -5.4803661467162215;
	setAttr ".RightHandRing4Ty" 3.6471077841227224;
	setAttr ".RightHandRing4Tz" -0.067340603092125195;
	setAttr ".RightHandRing4Ry" -0.00060925452882496216;
	setAttr ".RightHandRing4Sx" 6.1326329917150302;
	setAttr ".RightHandRing4Sy" 6.1326329917150302;
	setAttr ".RightHandRing4Sz" 6.1326329917150302;
	setAttr ".RightHandRing4JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -4.9424361112149446;
	setAttr ".RightHandPinky1Ty" 3.6046147701231321;
	setAttr ".RightHandPinky1Tz" -0.15267619117183989;
	setAttr ".RightHandPinky1Ry" -0.0006092545355265459;
	setAttr ".RightHandPinky1Sx" 6.1326329917150302;
	setAttr ".RightHandPinky1Sy" 6.1326329917150302;
	setAttr ".RightHandPinky1Sz" 6.1326329917150302;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -5.1292299795095913;
	setAttr ".RightHandPinky2Ty" 3.6046086374901365;
	setAttr ".RightHandPinky2Tz" -0.15919456677873381;
	setAttr ".RightHandPinky2Ry" -0.00060925452882496249;
	setAttr ".RightHandPinky2Sx" 6.1326329917150302;
	setAttr ".RightHandPinky2Sy" 6.1326329917150302;
	setAttr ".RightHandPinky2Sz" 6.1326329917150302;
	setAttr ".RightHandPinky2JointOrienty" 0.00060925453552654601;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -5.2503924095269063;
	setAttr ".RightHandPinky3Ty" 3.6046025048571484;
	setAttr ".RightHandPinky3Tz" -0.16342240396322219;
	setAttr ".RightHandPinky3Ry" -0.00060925452882496227;
	setAttr ".RightHandPinky3Sx" 6.1326329917150302;
	setAttr ".RightHandPinky3Sy" 6.1326329917150302;
	setAttr ".RightHandPinky3Sz" 6.1326329917150302;
	setAttr ".RightHandPinky3JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -5.3526601972967471;
	setAttr ".RightHandPinky4Ty" 3.6046025048571484;
	setAttr ".RightHandPinky4Tz" -0.16699098310110116;
	setAttr ".RightHandPinky4Ry" -0.00060925452882496216;
	setAttr ".RightHandPinky4Sx" 6.1326329917150302;
	setAttr ".RightHandPinky4Sy" 6.1326329917150302;
	setAttr ".RightHandPinky4Sz" 6.1326329917150302;
	setAttr ".RightHandPinky4JointOrienty" 0.0006092545288249626;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
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
	rename -uid "1FFC1F68-4573-2C40-60D3-BCA3A9A9212D";
	setAttr ".OutputPropertySetState" -type "HIKPropertySetState" ;
	setAttr ".lkr" 0.60000002384185791;
	setAttr ".rkr" 0.60000002384185791;
	setAttr ".FootBottomToAnkle" 0.38404510236676792;
	setAttr ".FootBackToAnkle" 0.39723210308885348;
	setAttr ".FootMiddleToAnkle" 0.79446420617770697;
	setAttr ".FootFrontToMiddle" 0.39723210308885348;
	setAttr ".FootInToAnkle" 0.39723210308885348;
	setAttr ".FootOutToAnkle" 0.39723210308885348;
	setAttr ".HandBottomToWrist" 0.5;
	setAttr ".HandBackToWrist" 0.01;
	setAttr ".HandMiddleToWrist" 0.52434637607728662;
	setAttr ".HandFrontToMiddle" 0.52434637607728662;
	setAttr ".HandInToWrist" 0.52434637607728662;
	setAttr ".HandOutToWrist" 0.52434637607728662;
	setAttr ".CtrlPullLeftFoot" 0;
	setAttr ".CtrlPullRightFoot" 0;
	setAttr ".LeftHandThumbTip" 0.06560353479722196;
	setAttr ".LeftHandIndexTip" 0.06560353479722196;
	setAttr ".LeftHandMiddleTip" 0.06560353479722196;
	setAttr ".LeftHandRingTip" 0.06560353479722196;
	setAttr ".LeftHandPinkyTip" 0.06560353479722196;
	setAttr ".LeftHandExtraFingerTip" 0.06560353479722196;
	setAttr ".RightHandThumbTip" 0.06560353479722196;
	setAttr ".RightHandIndexTip" 0.06560353479722196;
	setAttr ".RightHandMiddleTip" 0.06560353479722196;
	setAttr ".RightHandRingTip" 0.06560353479722196;
	setAttr ".RightHandPinkyTip" 0.06560353479722196;
	setAttr ".RightHandExtraFingerTip" 0.06560353479722196;
	setAttr ".LeftFootThumbTip" 0.06560353479722196;
	setAttr ".LeftFootIndexTip" 0.06560353479722196;
	setAttr ".LeftFootMiddleTip" 0.06560353479722196;
	setAttr ".LeftFootRingTip" 0.06560353479722196;
	setAttr ".LeftFootPinkyTip" 0.06560353479722196;
	setAttr ".LeftFootExtraFingerTip" 0.06560353479722196;
	setAttr ".RightFootThumbTip" 0.06560353479722196;
	setAttr ".RightFootIndexTip" 0.06560353479722196;
	setAttr ".RightFootMiddleTip" 0.06560353479722196;
	setAttr ".RightFootRingTip" 0.06560353479722196;
	setAttr ".RightFootPinkyTip" 0.06560353479722196;
	setAttr ".RightFootExtraFingerTip" 0.06560353479722196;
	setAttr ".LeftUpLegRollEx" 1;
	setAttr ".LeftLegRollEx" 1;
	setAttr ".RightUpLegRollEx" 1;
	setAttr ".RightLegRollEx" 1;
	setAttr ".LeftArmRollEx" 1;
	setAttr ".LeftForeArmRollEx" 1;
	setAttr ".RightArmRollEx" 1;
	setAttr ".RightForeArmRollEx" 1;
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	rename -uid "C06126A1-4DF1-6C5F-5176-FCB84C087F75";
	setAttr ".ihi" 0;
	setAttr ".WantIndexFinger" yes;
	setAttr ".WantMiddleFinger" yes;
	setAttr ".WantRingFinger" yes;
	setAttr ".WantPinkyFinger" yes;
	setAttr ".WantThumb" yes;
	setAttr ".WantToeBase" yes;
	setAttr ".HipsTy" 1;
	setAttr ".LeftUpLegTx" 0.0891;
	setAttr ".LeftUpLegTy" 0.9373;
	setAttr ".LeftLegTx" 0.0891;
	setAttr ".LeftLegTy" 0.488514;
	setAttr ".LeftFootTx" 0.0891;
	setAttr ".LeftFootTy" 0.081504;
	setAttr ".RightUpLegTx" -0.0891;
	setAttr ".RightUpLegTy" 0.9373;
	setAttr ".RightLegTx" -0.0891;
	setAttr ".RightLegTy" 0.488514;
	setAttr ".RightLegTz" 4.3902400000000002e-006;
	setAttr ".RightFootTx" -0.0891;
	setAttr ".RightFootTy" 0.081504;
	setAttr ".RightFootTz" 4.3902400000000002e-006;
	setAttr ".RightFootRy" -0.0048003860000000002;
	setAttr ".SpineTy" 1.07;
	setAttr ".LeftArmTx" 0.177073;
	setAttr ".LeftArmTy" 1.465887;
	setAttr ".LeftForeArmTx" 0.45012700000000005;
	setAttr ".LeftForeArmTy" 1.465887;
	setAttr ".LeftHandTx" 0.717099;
	setAttr ".LeftHandTy" 1.465887;
	setAttr ".RightArmTx" -0.177073;
	setAttr ".RightArmTy" 1.46589;
	setAttr ".RightForeArmTx" -0.450129;
	setAttr ".RightForeArmTy" 1.46589;
	setAttr ".RightHandTx" -0.717099;
	setAttr ".RightHandTy" 1.46589;
	setAttr ".HeadTy" 1.6500000000000001;
	setAttr ".LeftToeBaseTx" 0.089100100000000002;
	setAttr ".LeftToeBaseTy" 0.0188808;
	setAttr ".LeftToeBaseTz" 0.129547;
	setAttr ".RightToeBaseTx" -0.089110900000000021;
	setAttr ".RightToeBaseTy" 0.0188808;
	setAttr ".RightToeBaseTz" 0.129552;
	setAttr ".RightToeBaseRx" 0.0029125930000000002;
	setAttr ".RightToeBaseRy" -0.0048003860000000002;
	setAttr ".LeftShoulderTx" 0.07;
	setAttr ".LeftShoulderTy" 1.465885;
	setAttr ".LeftShoulderRz" 0.00073528199999999997;
	setAttr ".RightShoulderTx" -0.07;
	setAttr ".RightShoulderTy" 1.465885;
	setAttr ".RightShoulderRz" -0.0023183610000000001;
	setAttr ".NeckTy" 1.45;
	setAttr ".LeftFingerBaseTx" 0.805197;
	setAttr ".LeftFingerBaseTy" 1.470896;
	setAttr ".LeftFingerBaseTz" 0.013046800000000001;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -0.805196;
	setAttr ".RightFingerBaseTy" 1.470899;
	setAttr ".RightFingerBaseTz" 0.013054600000000001;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 1.11;
	setAttr ".Spine2Ty" 1.15;
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
	setAttr ".RightUpLegRollRx" -0.0011371;
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
	setAttr ".LeftHandThumb2Rz" -0.00029786199999999997;
	setAttr ".LeftHandThumb3Tx" 0.81114400000000009;
	setAttr ".LeftHandThumb3Ty" 1.4525409999999999;
	setAttr ".LeftHandThumb3Tz" 0.049899;
	setAttr ".LeftHandThumb4Tx" 0.837811;
	setAttr ".LeftHandThumb4Ty" 1.4525409999999999;
	setAttr ".LeftHandThumb4Tz" 0.049898900000000003;
	setAttr ".LeftHandIndex1Tx" 0.80531800000000009;
	setAttr ".LeftHandIndex1Ty" 1.467884;
	setAttr ".LeftHandIndex1Tz" 0.034716700000000003;
	setAttr ".LeftHandIndex1Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex1Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex2Tx" 0.847546;
	setAttr ".LeftHandIndex2Ty" 1.467884;
	setAttr ".LeftHandIndex2Tz" 0.036188699999999997;
	setAttr ".LeftHandIndex2Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex2Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex3Tx" 0.874069;
	setAttr ".LeftHandIndex3Ty" 1.467884;
	setAttr ".LeftHandIndex3Tz" 0.037113199999999999;
	setAttr ".LeftHandIndex3Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex3Rz" -0.00029934100000000001;
	setAttr ".LeftHandIndex4Tx" 0.8936400000000001;
	setAttr ".LeftHandIndex4Ty" 1.467884;
	setAttr ".LeftHandIndex4Tz" 0.0377954;
	setAttr ".LeftHandIndex4Ry" -1.9999999850000001;
	setAttr ".LeftHandIndex4Rz" -0.00029934100000000001;
	setAttr ".LeftHandMiddle1Tx" 0.805197;
	setAttr ".LeftHandMiddle1Ty" 1.470896;
	setAttr ".LeftHandMiddle1Tz" 0.013046800000000001;
	setAttr ".LeftHandMiddle1Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle2Tx" 0.85383;
	setAttr ".LeftHandMiddle2Ty" 1.470896;
	setAttr ".LeftHandMiddle2Tz" 0.0130499;
	setAttr ".LeftHandMiddle2Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle3Tx" 0.8814820000000001;
	setAttr ".LeftHandMiddle3Ty" 1.470896;
	setAttr ".LeftHandMiddle3Tz" 0.013051600000000002;
	setAttr ".LeftHandMiddle3Ry" -0.0035633340000000005;
	setAttr ".LeftHandMiddle4Tx" 0.901539;
	setAttr ".LeftHandMiddle4Ty" 1.470896;
	setAttr ".LeftHandMiddle4Tz" 0.0130528;
	setAttr ".LeftHandMiddle4Ry" -0.0035633340000000005;
	setAttr ".LeftHandRing1Tx" 0.806036;
	setAttr ".LeftHandRing1Ty" 1.469686;
	setAttr ".LeftHandRing1Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing1Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing2Tx" 0.85141400000000012;
	setAttr ".LeftHandRing2Ty" 1.469686;
	setAttr ".LeftHandRing2Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing2Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing3Tx" 0.874459;
	setAttr ".LeftHandRing3Ty" 1.469686;
	setAttr ".LeftHandRing3Tz" -0.0079315900000000005;
	setAttr ".LeftHandRing3Ry" -0.0035635290000000002;
	setAttr ".LeftHandRing4Tx" 0.893693;
	setAttr ".LeftHandRing4Ty" 1.469686;
	setAttr ".LeftHandRing4Tz" -0.0079316000000000005;
	setAttr ".LeftHandRing4Ry" -0.0035635290000000002;
	setAttr ".LeftHandPinky1Tx" 0.805921;
	setAttr ".LeftHandPinky1Ty" 1.462757;
	setAttr ".LeftHandPinky1Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky1Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky2Tx" 0.836362;
	setAttr ".LeftHandPinky2Ty" 1.462757;
	setAttr ".LeftHandPinky2Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky2Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky3Tx" 0.856107;
	setAttr ".LeftHandPinky3Ty" 1.462757;
	setAttr ".LeftHandPinky3Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky3Rz" 0.00076302599999999998;
	setAttr ".LeftHandPinky4Tx" 0.872774;
	setAttr ".LeftHandPinky4Ty" 1.462757;
	setAttr ".LeftHandPinky4Tz" -0.024903600000000005;
	setAttr ".LeftHandPinky4Rz" 0.00076302599999999998;
	setAttr ".LeftHandExtraFinger1Tx" 0.805921;
	setAttr ".LeftHandExtraFinger1Ty" 1.467884;
	setAttr ".LeftHandExtraFinger1Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 0.826362;
	setAttr ".LeftHandExtraFinger2Ty" 1.467884;
	setAttr ".LeftHandExtraFinger2Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 0.846107;
	setAttr ".LeftHandExtraFinger3Ty" 1.467884;
	setAttr ".LeftHandExtraFinger3Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 0.862774;
	setAttr ".LeftHandExtraFinger4Ty" 1.467884;
	setAttr ".LeftHandExtraFinger4Tz" -0.044903600000000002;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -0.760582;
	setAttr ".RightHandThumb1Ty" 1.457905;
	setAttr ".RightHandThumb1Tz" 0.042828100000000008;
	setAttr ".RightHandThumb2Tx" -0.785708;
	setAttr ".RightHandThumb2Ty" 1.452544;
	setAttr ".RightHandThumb2Tz" 0.049904900000000002;
	setAttr ".RightHandThumb2Rz" -0.00060208600000000005;
	setAttr ".RightHandThumb3Tx" -0.811124;
	setAttr ".RightHandThumb3Ty" 1.452544;
	setAttr ".RightHandThumb3Tz" 0.050793100000000008;
	setAttr ".RightHandThumb3Rz" -0.00039149399999999999;
	setAttr ".RightHandThumb4Tx" -0.837775;
	setAttr ".RightHandThumb4Ty" 1.452544;
	setAttr ".RightHandThumb4Tz" 0.0517245;
	setAttr ".RightHandThumb4Rz" -0.00039149399999999999;
	setAttr ".RightHandIndex1Tx" -0.805315;
	setAttr ".RightHandIndex1Ty" 1.4678870000000002;
	setAttr ".RightHandIndex1Tz" 0.034724400000000002;
	setAttr ".RightHandIndex1Ry" -2.0000646579999999;
	setAttr ".RightHandIndex2Tx" -0.847543;
	setAttr ".RightHandIndex2Ty" 1.4678870000000002;
	setAttr ".RightHandIndex2Tz" 0.0332509;
	setAttr ".RightHandIndex2Ry" -2.0000646359999998;
	setAttr ".RightHandIndex3Tx" -0.874066;
	setAttr ".RightHandIndex3Ty" 1.4678870000000002;
	setAttr ".RightHandIndex3Tz" 0.032325399999999997;
	setAttr ".RightHandIndex3Ry" -2.0000646359999998;
	setAttr ".RightHandIndex4Tx" -0.8936360000000001;
	setAttr ".RightHandIndex4Ty" 1.4678870000000002;
	setAttr ".RightHandIndex4Tz" 0.031642499999999997;
	setAttr ".RightHandIndex4Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle1Tx" -0.805196;
	setAttr ".RightHandMiddle1Ty" 1.470899;
	setAttr ".RightHandMiddle1Tz" 0.013054600000000001;
	setAttr ".RightHandMiddle1Ry" -2.0000646579999999;
	setAttr ".RightHandMiddle2Tx" -0.853799;
	setAttr ".RightHandMiddle2Ty" 1.470899;
	setAttr ".RightHandMiddle2Tz" 0.011358600000000002;
	setAttr ".RightHandMiddle2Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle3Tx" -0.88143500000000008;
	setAttr ".RightHandMiddle3Ty" 1.470899;
	setAttr ".RightHandMiddle3Tz" 0.0103943;
	setAttr ".RightHandMiddle3Ry" -2.0000646359999998;
	setAttr ".RightHandMiddle4Tx" -0.90147900000000025;
	setAttr ".RightHandMiddle4Ty" 1.470899;
	setAttr ".RightHandMiddle4Tz" 0.0096948299999999998;
	setAttr ".RightHandMiddle4Ry" -2.0000646359999998;
	setAttr ".RightHandRing1Tx" -0.806037;
	setAttr ".RightHandRing1Ty" 1.469689;
	setAttr ".RightHandRing1Tz" -0.0079237700000000001;
	setAttr ".RightHandRing1Ry" -2.0000646579999999;
	setAttr ".RightHandRing2Tx" -0.851387;
	setAttr ".RightHandRing2Ty" 1.469689;
	setAttr ".RightHandRing2Tz" -0.0095062399999999991;
	setAttr ".RightHandRing2Ry" -2.0000646359999998;
	setAttr ".RightHandRing3Tx" -0.874418;
	setAttr ".RightHandRing3Ty" 1.469689;
	setAttr ".RightHandRing3Tz" -0.0103099;
	setAttr ".RightHandRing3Ry" -2.0000646359999998;
	setAttr ".RightHandRing4Tx" -0.8936400000000001;
	setAttr ".RightHandRing4Ty" 1.469689;
	setAttr ".RightHandRing4Tz" -0.010980699999999999;
	setAttr ".RightHandRing4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky1Tx" -0.805924;
	setAttr ".RightHandPinky1Ty" 1.46276;
	setAttr ".RightHandPinky1Tz" -0.0248957;
	setAttr ".RightHandPinky1Ry" -2.0000646579999999;
	setAttr ".RightHandPinky1Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky2Tx" -0.836383;
	setAttr ".RightHandPinky2Ty" 1.462759;
	setAttr ".RightHandPinky2Tz" -0.025958600000000002;
	setAttr ".RightHandPinky2Ry" -2.0000646359999998;
	setAttr ".RightHandPinky2Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky3Tx" -0.85614;
	setAttr ".RightHandPinky3Ty" 1.462758;
	setAttr ".RightHandPinky3Tz" -0.026648;
	setAttr ".RightHandPinky3Ry" -2.0000646359999998;
	setAttr ".RightHandPinky3Rz" 0.0012412149999999999;
	setAttr ".RightHandPinky4Tx" -0.872816;
	setAttr ".RightHandPinky4Ty" 1.462758;
	setAttr ".RightHandPinky4Tz" -0.027229900000000001;
	setAttr ".RightHandPinky4Ry" -2.0000646359999998;
	setAttr ".RightHandPinky4Rz" 0.0012412149999999999;
	setAttr ".RightHandExtraFinger1Tx" -0.805924;
	setAttr ".RightHandExtraFinger1Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger1Tz" -0.044895699999999997;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -0.826383;
	setAttr ".RightHandExtraFinger2Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger2Tz" -0.045958600000000002;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -0.84614000000000011;
	setAttr ".RightHandExtraFinger3Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger3Tz" -0.046648000000000009;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -0.862816;
	setAttr ".RightHandExtraFinger4Ty" 1.4678870000000002;
	setAttr ".RightHandExtraFinger4Tz" -0.047229900000000005;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
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
createNode HIKSolverNode -n "HIKSolverNode1";
	rename -uid "D5720CB6-43FB-3311-E845-67828CAD1A00";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
createNode HIKState2SK -n "HIKState2SK1";
	rename -uid "17EBB812-49B3-A93C-7C4B-AA9A36ACA173";
	setAttr ".ihi" 0;
	setAttr ".HipsTy" -4.5112867331484932;
	setAttr ".HipsSx" 6.1326332092285156;
	setAttr ".HipsSy" 6.1326332092285156;
	setAttr ".HipsSz" 6.1326332092285156;
	setAttr ".LeftUpLegTx" 0.089099999813390229;
	setAttr ".LeftUpLegTy" -0.062700000559829258;
	setAttr ".LeftUpLegTz" 1.9784174257384603e-017;
	setAttr ".LeftUpLegSx" 6.1326332092285156;
	setAttr ".LeftUpLegSy" 6.1326332092285156;
	setAttr ".LeftUpLegSz" 6.1326332092285156;
	setAttr ".LeftUpLegPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 8.5379726766777846e-015 85.46685791015625 9.4790538492681537e-031 1;
	setAttr ".LeftUpLegSC" yes;
	setAttr ".LeftUpLegISx" 6.1326332092285156;
	setAttr ".LeftUpLegISy" 6.1326332092285156;
	setAttr ".LeftUpLegISz" 6.1326332092285156;
	setAttr ".LeftLegTy" -0.44878601646022448;
	setAttr ".LeftLegTz" -3.9443045261050591e-033;
	setAttr ".LeftLegSx" 6.1326332092285156;
	setAttr ".LeftLegSy" 6.1326332092285156;
	setAttr ".LeftLegSz" 6.1326332092285156;
	setAttr ".LeftLegPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 54.641761779785156 47.01524734497071 1.2132908406800074e-014 1;
	setAttr ".LeftLegSC" yes;
	setAttr ".LeftLegISx" 6.1326332092285156;
	setAttr ".LeftLegISy" 6.1326332092285156;
	setAttr ".LeftLegISz" 6.1326332092285156;
	setAttr ".LeftFootTx" 3.552713678800501e-017;
	setAttr ".LeftFootTy" -0.40700993323724993;
	setAttr ".LeftFootTz" 7.8886090522101182e-033;
	setAttr ".LeftFootSx" 6.1326332092285174;
	setAttr ".LeftFootSy" 6.1326332092285156;
	setAttr ".LeftFootSz" 6.1326332092285156;
	setAttr ".LeftFootPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 54.641761779785156 -228.20875549316406 1.2132908406800071e-014 1;
	setAttr ".LeftFootSC" yes;
	setAttr ".LeftFootISx" 6.1326332092285156;
	setAttr ".LeftFootISy" 6.1326332092285156;
	setAttr ".LeftFootISz" 6.1326332092285156;
	setAttr ".RightUpLegTx" -0.089099999813390271;
	setAttr ".RightUpLegTy" -0.062700000559829258;
	setAttr ".RightUpLegTz" -1.9784174257384603e-017;
	setAttr ".RightUpLegSx" 6.1326332092285156;
	setAttr ".RightUpLegSy" 6.1326332092285156;
	setAttr ".RightUpLegSz" 6.1326332092285156;
	setAttr ".RightUpLegPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 8.5379726766777846e-015 85.46685791015625 9.4790538492681537e-031 1;
	setAttr ".RightUpLegSC" yes;
	setAttr ".RightUpLegISx" 6.1326332092285156;
	setAttr ".RightUpLegISy" 6.1326332092285156;
	setAttr ".RightUpLegISz" 6.1326332092285156;
	setAttr ".RightLegTy" -0.44878601646022448;
	setAttr ".RightLegTz" 4.3902397419940872e-006;
	setAttr ".RightLegSx" 6.1326332092285156;
	setAttr ".RightLegSy" 6.1326332092285156;
	setAttr ".RightLegSz" 6.1326332092285156;
	setAttr ".RightLegPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 -54.641761779785163 47.01524734497071 -1.2132908406800071e-014 1;
	setAttr ".RightLegSC" yes;
	setAttr ".RightLegISx" 6.1326332092285156;
	setAttr ".RightLegISy" 6.1326332092285156;
	setAttr ".RightLegISz" 6.1326332092285156;
	setAttr ".RightFootTx" -3.552713678800501e-017;
	setAttr ".RightFootTy" -0.40700993323724993;
	setAttr ".RightFootTz" 2.1684043449710089e-021;
	setAttr ".RightFootSx" 6.1326332092285174;
	setAttr ".RightFootSy" 6.1326332092285156;
	setAttr ".RightFootSz" 6.1326332092285156;
	setAttr ".RightFootPGX" -type "matrix" 6.1326332092285156 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 -54.641761779785163 -228.20875549316406 0.0026923730038106437 1;
	setAttr ".RightFootSC" yes;
	setAttr ".RightFootISx" 6.1326332092285156;
	setAttr ".RightFootISy" 6.1326332092285156;
	setAttr ".RightFootISz" 6.1326332092285156;
	setAttr ".SpineTx" -1.7256330768281089e-033;
	setAttr ".SpineTy" 0.070000006220325164;
	setAttr ".SpineTz" 1.5543120963562548e-017;
	setAttr ".SpineRx" 9.9828253917334298;
	setAttr ".SpineSx" 6.132634162902832;
	setAttr ".SpineSy" 6.1326334950511816;
	setAttr ".SpineSz" 6.1326334950511816;
	setAttr ".LeftArmTx" 0.10707300111406025;
	setAttr ".LeftArmTy" 1.9945818264233139e-006;
	setAttr ".LeftArmTz" -4.317639934470208e-010;
	setAttr ".LeftArmRx" -59.61973724203488;
	setAttr ".LeftArmRy" 0.0014013704783515399;
	setAttr ".LeftArmRz" -36.452448238891193;
	setAttr ".LeftArmSx" 6.1326355729056665;
	setAttr ".LeftArmSy" 6.1326350918216992;
	setAttr ".LeftArmSz" 6.1326355994086299;
	setAttr ".LeftForeArmTx" 0.2730538942851109;
	setAttr ".LeftForeArmTy" -3.6714115196900823e-008;
	setAttr ".LeftForeArmTz" -3.5790022181458881e-008;
	setAttr ".LeftForeArmRx" 0.0012238197472746717;
	setAttr ".LeftForeArmRy" -0.00056258756173844376;
	setAttr ".LeftForeArmRz" -66.152922706255282;
	setAttr ".LeftForeArmSx" 6.1326330545889229;
	setAttr ".LeftForeArmSy" 6.1326328758816873;
	setAttr ".LeftForeArmSz" 6.1326329325725926;
	setAttr ".LeftHandTx" 0.26697214787382545;
	setAttr ".LeftHandTy" 1.0893751429819077e-008;
	setAttr ".LeftHandTz" -9.9722871738094919e-009;
	setAttr ".LeftHandRx" 110.00387861608188;
	setAttr ".LeftHandRy" -40.834634665567386;
	setAttr ".LeftHandRz" -13.389615520981968;
	setAttr ".LeftHandSx" 6.1326344589392168;
	setAttr ".LeftHandSy" 6.1326351462676865;
	setAttr ".LeftHandSz" 6.132634441617026;
	setAttr ".RightArmTx" -0.10707300111406025;
	setAttr ".RightArmTy" 4.9624408339354889e-006;
	setAttr ".RightArmTz" 7.9268190589232289e-009;
	setAttr ".RightArmRx" -59.619726675494221;
	setAttr ".RightArmRy" -0.0013575516019789253;
	setAttr ".RightArmRz" 36.452445694510544;
	setAttr ".RightArmSx" 6.1326353716235618;
	setAttr ".RightArmSy" 6.1326355511164374;
	setAttr ".RightArmSz" 6.1326356925197194;
	setAttr ".RightForeArmTx" -0.27305588506507827;
	setAttr ".RightForeArmTy" 5.7362154066709083e-008;
	setAttr ".RightForeArmTz" -1.1181619470335136e-008;
	setAttr ".RightForeArmRx" 0.0013382774122369155;
	setAttr ".RightForeArmRy" 0.00057362189659071396;
	setAttr ".RightForeArmRz" 66.152925907913186;
	setAttr ".RightForeArmSx" 6.1326334206676281;
	setAttr ".RightForeArmSy" 6.1326336195312985;
	setAttr ".RightForeArmSz" 6.1326340334132139;
	setAttr ".RightHandTx" -0.26697007616638063;
	setAttr ".RightHandTy" -8.6472590119512912e-008;
	setAttr ".RightHandTz" 2.963230699037922e-008;
	setAttr ".RightHandRx" 111.59445515249446;
	setAttr ".RightHandRy" 45.312585491845738;
	setAttr ".RightHandRz" 15.717030130426524;
	setAttr ".RightHandSx" 6.1326336936320969;
	setAttr ".RightHandSy" 6.1326330987614233;
	setAttr ".RightHandSz" 6.1326336121606433;
	setAttr ".HeadTx" -8.6397507205065459e-018;
	setAttr ".HeadTy" 0.20000003207463293;
	setAttr ".HeadTz" 1.1593516795471715e-008;
	setAttr ".HeadSx" 6.1326332092285156;
	setAttr ".HeadSy" 6.1326331790120019;
	setAttr ".HeadSz" 6.1326331790120046;
	setAttr ".LeftToeBaseTx" 9.9525202550410087e-008;
	setAttr ".LeftToeBaseTy" -0.062623198205063069;
	setAttr ".LeftToeBaseTz" 0.12954699237947964;
	setAttr ".LeftToeBaseSx" 6.1326332092285156;
	setAttr ".LeftToeBaseSy" 6.1326332092285174;
	setAttr ".LeftToeBaseSz" 6.1326332092285156;
	setAttr ".LeftToeBasePGX" -type "matrix" 6.1326332092285174 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 54.641761779785178 -477.81301879882807 1.2132908406800075e-014 1;
	setAttr ".LeftToeBaseSC" yes;
	setAttr ".LeftToeBaseISx" 6.1326332092285174;
	setAttr ".LeftToeBaseISy" 6.1326332092285156;
	setAttr ".LeftToeBaseISz" 6.1326332092285156;
	setAttr ".RightToeBaseTx" -1.0898009682502875e-005;
	setAttr ".RightToeBaseTy" -0.062623198205063069;
	setAttr ".RightToeBaseTz" 0.12954760328116735;
	setAttr ".RightToeBaseSx" 6.1326332092285165;
	setAttr ".RightToeBaseSy" 6.1326332092285156;
	setAttr ".RightToeBaseSz" 6.1326332092285156;
	setAttr ".RightToeBasePGX" -type "matrix" 6.1326332092285174 0 0 0 0 6.1326332092285156 0 0
		 0 0 6.1326332092285156 0 -54.641761779785185 -477.81301879882807 0.002692373003810645 1;
	setAttr ".RightToeBaseSC" yes;
	setAttr ".RightToeBaseISx" 6.1326332092285174;
	setAttr ".RightToeBaseISy" 6.1326332092285156;
	setAttr ".RightToeBaseISz" 6.1326332092285156;
	setAttr ".RightToeBasePreRy" 1.4622811973002402e-006;
	setAttr ".LeftShoulderTx" 0.070000000000000034;
	setAttr ".LeftShoulderTy" 0.14255167666594878;
	setAttr ".LeftShoulderTz" -4.2743443628978638e-009;
	setAttr ".LeftShoulderSx" 6.1326332092285156;
	setAttr ".LeftShoulderSy" 6.1326332136656125;
	setAttr ".LeftShoulderSz" 6.1326332136656125;
	setAttr ".RightShoulderTx" -0.069999999999999951;
	setAttr ".RightShoulderTy" 0.14255167666594878;
	setAttr ".RightShoulderTz" -4.2743443628978638e-009;
	setAttr ".RightShoulderSx" 6.1326332092285156;
	setAttr ".RightShoulderSy" 6.1326332136656125;
	setAttr ".RightShoulderSz" 6.1326332136656125;
	setAttr ".NeckTx" -3.3482934680762893e-017;
	setAttr ".NeckTy" 0.12666668277836129;
	setAttr ".NeckTz" -1.7724267529217741e-008;
	setAttr ".NeckRx" -11.314764999000319;
	setAttr ".NeckSx" 6.1326332092285156;
	setAttr ".NeckSy" 6.1326331790120028;
	setAttr ".NeckSz" 6.1326331790120028;
	setAttr ".Spine1Tx" -7.322775607702683e-018;
	setAttr ".Spine1Ty" 0.12666665250093229;
	setAttr ".Spine1Tz" 2.5652421076216571e-010;
	setAttr ".Spine1Rx" 24.611717922485234;
	setAttr ".Spine1Sx" 6.1326332092285147;
	setAttr ".Spine1Sy" 6.1326332136656116;
	setAttr ".Spine1Sz" 6.1326332136656125;
	setAttr ".Spine2Tx" -3.3482927084219878e-017;
	setAttr ".Spine2Ty" 0.12666663033628994;
	setAttr ".Spine2Tz" -6.1124487515940022e-009;
	setAttr ".Spine2Sx" 6.1326332092285165;
	setAttr ".Spine2Sy" 6.1326332136656108;
	setAttr ".Spine2Sz" 6.1326332136656108;
	setAttr ".LeftHandThumb1Tx" 0.043486890506103763;
	setAttr ".LeftHandThumb1Ty" -0.0079848452858611915;
	setAttr ".LeftHandThumb1Tz" 0.042824303331303354;
	setAttr ".LeftHandThumb1Sx" 6.1326343287893765;
	setAttr ".LeftHandThumb1Sy" 6.1326346488013659;
	setAttr ".LeftHandThumb1Sz" 6.1326342663636266;
	setAttr ".LeftHandThumb2Tx" 0.025125990746633207;
	setAttr ".LeftHandThumb2Ty" -0.0053609664459264295;
	setAttr ".LeftHandThumb2Tz" 0.007074609435890054;
	setAttr ".LeftHandThumb2Sx" 6.1326343287893774;
	setAttr ".LeftHandThumb2Sy" 6.132634648801365;
	setAttr ".LeftHandThumb2Sz" 6.1326342663636266;
	setAttr ".LeftHandThumb3Tx" 0.025432029025065042;
	setAttr ".LeftHandThumb3Ty" 4.4150695543976329e-009;
	setAttr ".LeftHandThumb3Tz" 1.0057829459952927e-007;
	setAttr ".LeftHandThumb3Sx" 6.1326343287893765;
	setAttr ".LeftHandThumb3Sy" 6.1326346488013668;
	setAttr ".LeftHandThumb3Sz" 6.1326342663636266;
	setAttr ".LeftHandThumb4Tx" 0.026667026065690252;
	setAttr ".LeftHandThumb4Ty" -2.6003510100736093e-009;
	setAttr ".LeftHandThumb4Tz" -8.4534293343097033e-008;
	setAttr ".LeftHandThumb4Sx" 6.1326343287893756;
	setAttr ".LeftHandThumb4Sy" 6.1326346488013659;
	setAttr ".LeftHandThumb4Sz" 6.132634266363624;
	setAttr ".LeftHandIndex1Tx" 0.088218884270542461;
	setAttr ".LeftHandIndex1Ty" 0.0019971882729482005;
	setAttr ".LeftHandIndex1Tz" 0.034716708852648104;
	setAttr ".LeftHandIndex1Sx" 6.1326340989628889;
	setAttr ".LeftHandIndex1Sy" 6.1326355881485233;
	setAttr ".LeftHandIndex1Sz" 6.1326346123554947;
	setAttr ".LeftHandIndex2Tx" 0.042228009694949158;
	setAttr ".LeftHandIndex2Ty" -4.2564579416648485e-010;
	setAttr ".LeftHandIndex2Tz" 0.0014715553367566515;
	setAttr ".LeftHandIndex2Sx" 6.132634098962888;
	setAttr ".LeftHandIndex2Sy" 6.1326355881485224;
	setAttr ".LeftHandIndex2Sz" 6.1326346123554956;
	setAttr ".LeftHandIndex3Tx" 0.026522986632031335;
	setAttr ".LeftHandIndex3Ty" 4.1482240220602762e-009;
	setAttr ".LeftHandIndex3Tz" 0.00092423762905319512;
	setAttr ".LeftHandIndex3Sx" 6.132634098962888;
	setAttr ".LeftHandIndex3Sy" 6.1326355881485224;
	setAttr ".LeftHandIndex3Sz" 6.1326346123554956;
	setAttr ".LeftHandIndex4Tx" 0.019571048432189854;
	setAttr ".LeftHandIndex4Ty" 4.2813553946530189e-009;
	setAttr ".LeftHandIndex4Tz" 0.00068198120038552188;
	setAttr ".LeftHandIndex4Sx" 6.132634098962888;
	setAttr ".LeftHandIndex4Sy" 6.1326355881485215;
	setAttr ".LeftHandIndex4Sz" 6.1326346123554965;
	setAttr ".LeftHandMiddle1Tx" 0.088097868094915571;
	setAttr ".LeftHandMiddle1Ty" 0.0050091670072714579;
	setAttr ".LeftHandMiddle1Tz" 0.013046812711435507;
	setAttr ".LeftHandMiddle1Sx" 6.1326336123911585;
	setAttr ".LeftHandMiddle1Sy" 6.1326344248965476;
	setAttr ".LeftHandMiddle1Sz" 6.1326333901229368;
	setAttr ".LeftHandMiddle2Tx" 0.048633041823455195;
	setAttr ".LeftHandMiddle2Ty" 6.6286883892985321e-009;
	setAttr ".LeftHandMiddle2Tz" 3.1311621668805856e-006;
	setAttr ".LeftHandMiddle2Sx" 6.1326336123911585;
	setAttr ".LeftHandMiddle2Sy" 6.1326344248965468;
	setAttr ".LeftHandMiddle2Sz" 6.1326333901229368;
	setAttr ".LeftHandMiddle3Tx" 0.027651973768497415;
	setAttr ".LeftHandMiddle3Ty" -1.2917987639582407e-008;
	setAttr ".LeftHandMiddle3Tz" 1.7046334531300999e-006;
	setAttr ".LeftHandMiddle3Sx" 6.1326336123911576;
	setAttr ".LeftHandMiddle3Sy" 6.1326344248965476;
	setAttr ".LeftHandMiddle3Sz" 6.1326333901229368;
	setAttr ".LeftHandMiddle4Tx" 0.020057021404081683;
	setAttr ".LeftHandMiddle4Ty" 8.8825035859940734e-009;
	setAttr ".LeftHandMiddle4Tz" 1.2007998627439066e-006;
	setAttr ".LeftHandMiddle4Sx" 6.1326336123911576;
	setAttr ".LeftHandMiddle4Sy" 6.1326344248965476;
	setAttr ".LeftHandMiddle4Sz" 6.1326333901229368;
	setAttr ".LeftHandRing1Tx" 0.088936857163025476;
	setAttr ".LeftHandRing1Ty" 0.0037991838359121744;
	setAttr ".LeftHandRing1Tz" -0.0079315779612829825;
	setAttr ".LeftHandRing1Sx" 6.1326336123911585;
	setAttr ".LeftHandRing1Sy" 6.1326344248965476;
	setAttr ".LeftHandRing1Sz" 6.1326333901229368;
	setAttr ".LeftHandRing2Tx" 0.045377969471799881;
	setAttr ".LeftHandRing2Ty" 1.2325787679401402e-009;
	setAttr ".LeftHandRing2Tz" 1.9193435178976869e-008;
	setAttr ".LeftHandRing2Sx" 6.1326336123911585;
	setAttr ".LeftHandRing2Sy" 6.1326344248965468;
	setAttr ".LeftHandRing2Sz" 6.1326333901229368;
	setAttr ".LeftHandRing3Tx" 0.023045083377034495;
	setAttr ".LeftHandRing3Ty" 6.5269794546907183e-009;
	setAttr ".LeftHandRing3Tz" -1.4039381142083584e-008;
	setAttr ".LeftHandRing3Sx" 6.1326336123911585;
	setAttr ".LeftHandRing3Sy" 6.1326344248965459;
	setAttr ".LeftHandRing3Sz" 6.1326333901229368;
	setAttr ".LeftHandRing4Tx" 0.019233919255795692;
	setAttr ".LeftHandRing4Ty" -9.197275439021269e-009;
	setAttr ".LeftHandRing4Tz" 1.0681590154604236e-008;
	setAttr ".LeftHandRing4Sx" 6.1326336123911576;
	setAttr ".LeftHandRing4Sy" 6.1326344248965476;
	setAttr ".LeftHandRing4Sz" 6.1326333901229368;
	setAttr ".LeftHandPinky1Tx" 0.088821856267101873;
	setAttr ".LeftHandPinky1Ty" -0.0031298605107170732;
	setAttr ".LeftHandPinky1Tz" -0.024903566394455581;
	setAttr ".LeftHandPinky1Sx" 6.1326343287893765;
	setAttr ".LeftHandPinky1Sy" 6.1326346488013659;
	setAttr ".LeftHandPinky1Sz" 6.1326342663636266;
	setAttr ".LeftHandPinky2Tx" 0.030440987695012502;
	setAttr ".LeftHandPinky2Ty" 1.728492371455559e-009;
	setAttr ".LeftHandPinky2Tz" 1.6795185331375252e-008;
	setAttr ".LeftHandPinky2Sx" 6.1326343287893756;
	setAttr ".LeftHandPinky2Sy" 6.1326346488013641;
	setAttr ".LeftHandPinky2Sz" 6.1326342663636266;
	setAttr ".LeftHandPinky3Tx" 0.019744999412562726;
	setAttr ".LeftHandPinky3Ty" 2.2035905544726119e-009;
	setAttr ".LeftHandPinky3Tz" -9.1006031510687537e-009;
	setAttr ".LeftHandPinky3Sx" 6.1326343287893756;
	setAttr ".LeftHandPinky3Sy" 6.132634648801365;
	setAttr ".LeftHandPinky3Sz" 6.1326342663636266;
	setAttr ".LeftHandPinky4Tx" 0.016666978651153883;
	setAttr ".LeftHandPinky4Ty" -3.1365934205496162e-009;
	setAttr ".LeftHandPinky4Tz" -1.0351208672432222e-008;
	setAttr ".LeftHandPinky4Sx" 6.1326343287893739;
	setAttr ".LeftHandPinky4Sy" 6.132634648801365;
	setAttr ".LeftHandPinky4Sz" 6.1326342663636266;
	setAttr ".RightHandThumb1Tx" -0.043482907814456302;
	setAttr ".RightHandThumb1Ty" -0.0079850225335105669;
	setAttr ".RightHandThumb1Tz" 0.042828072570643839;
	setAttr ".RightHandThumb1Sx" 6.1326329939306117;
	setAttr ".RightHandThumb1Sy" 6.1326329189236679;
	setAttr ".RightHandThumb1Sz" 6.1326330409062777;
	setAttr ".RightHandThumb2Tx" -0.025126032009483126;
	setAttr ".RightHandThumb2Ty" -0.0053609677765861716;
	setAttr ".RightHandThumb2Tz" 0.0070767988817967264;
	setAttr ".RightHandThumb2Sx" 6.1326329939306117;
	setAttr ".RightHandThumb2Sy" 6.132632918923667;
	setAttr ".RightHandThumb2Sz" 6.1326330409062777;
	setAttr ".RightHandThumb3Tx" -0.025416000086152659;
	setAttr ".RightHandThumb3Ty" 7.2830528097256324e-009;
	setAttr ".RightHandThumb3Tz" 0.00088819703588402629;
	setAttr ".RightHandThumb3Sx" 6.1326329939306117;
	setAttr ".RightHandThumb3Sy" 6.1326329189236652;
	setAttr ".RightHandThumb3Sz" 6.1326330409062786;
	setAttr ".RightHandThumb4Tx" -0.026650996788151249;
	setAttr ".RightHandThumb4Ty" -1.3093950670395316e-008;
	setAttr ".RightHandThumb4Tz" 0.0009313830088330732;
	setAttr ".RightHandThumb4Sx" 6.1326329939306108;
	setAttr ".RightHandThumb4Sy" 6.1326329189236661;
	setAttr ".RightHandThumb4Sz" 6.1326330409062786;
	setAttr ".RightHandIndex1Tx" -0.088215952065767531;
	setAttr ".RightHandIndex1Ty" 0.0019970115530486155;
	setAttr ".RightHandIndex1Tz" 0.034724366392247248;
	setAttr ".RightHandIndex1Sx" 6.1326337072346044;
	setAttr ".RightHandIndex1Sy" 6.13263335114;
	setAttr ".RightHandIndex1Sz" 6.1326340922317542;
	setAttr ".RightHandIndex2Tx" -0.042227994191572513;
	setAttr ".RightHandIndex2Ty" 1.0881076342172946e-008;
	setAttr ".RightHandIndex2Tz" -0.0014730815294911892;
	setAttr ".RightHandIndex2Sx" 6.1326337072346062;
	setAttr ".RightHandIndex2Sy" 6.1326333511399973;
	setAttr ".RightHandIndex2Sz" 6.1326340922317559;
	setAttr ".RightHandIndex3Tx" -0.026522975936034643;
	setAttr ".RightHandIndex3Ty" -4.0384312072205833e-009;
	setAttr ".RightHandIndex3Tz" -0.0009251983970099076;
	setAttr ".RightHandIndex3Sx" 6.1326337072346044;
	setAttr ".RightHandIndex3Sy" 6.1326333511399982;
	setAttr ".RightHandIndex3Sz" 6.132634092231755;
	setAttr ".RightHandIndex4Tx" -0.019570049169441005;
	setAttr ".RightHandIndex4Ty" 3.1237087227964365e-009;
	setAttr ".RightHandIndex4Tz" -0.00068270193289741597;
	setAttr ".RightHandIndex4Sx" 6.1326337072346044;
	setAttr ".RightHandIndex4Sy" 6.1326333511399982;
	setAttr ".RightHandIndex4Sz" 6.1326340922317568;
	setAttr ".RightHandMiddle1Tx" -0.088096904459659842;
	setAttr ".RightHandMiddle1Ty" 0.0050089935410226613;
	setAttr ".RightHandMiddle1Tz" 0.013054585820412469;
	setAttr ".RightHandMiddle1Sx" 6.1326331650843526;
	setAttr ".RightHandMiddle1Sy" 6.1326328583802896;
	setAttr ".RightHandMiddle1Sz" 6.132633128276308;
	setAttr ".RightHandMiddle2Tx" -0.048602997886789366;
	setAttr ".RightHandMiddle2Ty" 5.1595228356404734e-009;
	setAttr ".RightHandMiddle2Tz" -0.0016955257559350657;
	setAttr ".RightHandMiddle2Sx" 6.1326331650843535;
	setAttr ".RightHandMiddle2Sy" 6.1326328583802887;
	setAttr ".RightHandMiddle2Sz" 6.132633128276308;
	setAttr ".RightHandMiddle3Tx" -0.02763606886142668;
	setAttr ".RightHandMiddle3Ty" 3.8174270144963882e-009;
	setAttr ".RightHandMiddle3Tz" -0.00096398768254097439;
	setAttr ".RightHandMiddle3Sx" 6.1326331650843526;
	setAttr ".RightHandMiddle3Sy" 6.1326328583802896;
	setAttr ".RightHandMiddle3Sz" 6.1326331282763089;
	setAttr ".RightHandMiddle4Tx" -0.020043990066569605;
	setAttr ".RightHandMiddle4Ty" 1.3140236987396747e-009;
	setAttr ".RightHandMiddle4Tz" -0.00069926109548198664;
	setAttr ".RightHandMiddle4Sx" 6.1326331650843535;
	setAttr ".RightHandMiddle4Sy" 6.1326328583802896;
	setAttr ".RightHandMiddle4Sz" 6.132633128276308;
	setAttr ".RightHandRing1Tx" -0.088937880618427598;
	setAttr ".RightHandRing1Ty" 0.0037990135948023254;
	setAttr ".RightHandRing1Tz" -0.0079238011302204831;
	setAttr ".RightHandRing1Sx" 6.1326331650843526;
	setAttr ".RightHandRing1Sy" 6.1326328583802896;
	setAttr ".RightHandRing1Sz" 6.132633128276308;
	setAttr ".RightHandRing2Tx" -0.045350020334704769;
	setAttr ".RightHandRing2Ty" 2.0502325881466278e-009;
	setAttr ".RightHandRing2Tz" -0.0015819870104873957;
	setAttr ".RightHandRing2Sx" 6.1326331650843526;
	setAttr ".RightHandRing2Sy" 6.1326328583802887;
	setAttr ".RightHandRing2Sz" 6.1326331282763089;
	setAttr ".RightHandRing3Tx" -0.023031038387959092;
	setAttr ".RightHandRing3Ty" 9.6499212531853113e-009;
	setAttr ".RightHandRing3Tz" -0.00080342598095775489;
	setAttr ".RightHandRing3Sx" 6.1326331650843526;
	setAttr ".RightHandRing3Sy" 6.1326328583802887;
	setAttr ".RightHandRing3Sz" 6.1326331282763089;
	setAttr ".RightHandRing4Tx" -0.019221994773523789;
	setAttr ".RightHandRing4Ty" -5.2305756526038746e-009;
	setAttr ".RightHandRing4Tz" -0.00067059734126253547;
	setAttr ".RightHandRing4Sx" 6.1326331650843544;
	setAttr ".RightHandRing4Sy" 6.1326328583802869;
	setAttr ".RightHandRing4Sz" 6.1326331282763062;
	setAttr ".RightHandPinky1Tx" -0.088824913638546873;
	setAttr ".RightHandPinky1Ty" -0.0031299794196332086;
	setAttr ".RightHandPinky1Tz" -0.024895714350866668;
	setAttr ".RightHandPinky1Sx" 6.1326337072346044;
	setAttr ".RightHandPinky1Sy" 6.13263335114;
	setAttr ".RightHandPinky1Sz" 6.1326340922317542;
	setAttr ".RightHandPinky2Tx" -0.030458954293729263;
	setAttr ".RightHandPinky2Ty" -9.9282708447390185e-007;
	setAttr ".RightHandPinky2Tz" -0.0010626086763037535;
	setAttr ".RightHandPinky2Sx" 6.1326337072346044;
	setAttr ".RightHandPinky2Sy" 6.1326333511399982;
	setAttr ".RightHandPinky2Sz" 6.1326340922317568;
	setAttr ".RightHandPinky3Tx" -0.019757043585195613;
	setAttr ".RightHandPinky3Ty" -1.0483490451917987e-006;
	setAttr ".RightHandPinky3Tz" -0.00068918651979721802;
	setAttr ".RightHandPinky3Sx" 6.1326337072346044;
	setAttr ".RightHandPinky3Sy" 6.1326333511399991;
	setAttr ".RightHandPinky3Sz" 6.1326340922317533;
	setAttr ".RightHandPinky4Tx" -0.016675953286890605;
	setAttr ".RightHandPinky4Ty" 1.4733378606024416e-009;
	setAttr ".RightHandPinky4Tz" -0.00058172619732651751;
	setAttr ".RightHandPinky4Sx" 6.1326337072346053;
	setAttr ".RightHandPinky4Sy" 6.1326333511399991;
	setAttr ".RightHandPinky4Sz" 6.1326340922317559;
createNode keyingGroup -n "Character1_FullBodyKG";
	rename -uid "298DA2B3-4936-7AF8-BC74-03B912EA1F8B";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dnsm";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HipsBPKG";
	rename -uid "6B663324-4501-4FDC-DA63-B0B56A9F80EA";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_ChestBPKG";
	rename -uid "E105EF1D-4F9E-157F-95C3-BAA7B4B0E953";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftArmBPKG";
	rename -uid "CB7D1D63-4750-60A7-DA40-F7B92D9C34F4";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightArmBPKG";
	rename -uid "5863D4DE-4219-73AC-9357-47BC0F0F92A4";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftLegBPKG";
	rename -uid "DB6E6EC9-4E76-5691-19AE-00A97FF6F45E";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightLegBPKG";
	rename -uid "F21BC475-454C-C716-98B5-6AACCDBF257B";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HeadBPKG";
	rename -uid "24EAC8DA-4A25-8F10-4959-A0BF73B57528";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftHandBPKG";
	rename -uid "D3F678FD-4FA1-350F-9932-8CBCE4B73215";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightHandBPKG";
	rename -uid "59183242-446B-F142-057A-369D8D565BF5";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftFootBPKG";
	rename -uid "D4338505-42FE-8849-EAA5-5B985CC623E3";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightFootBPKG";
	rename -uid "4EBE5174-47AC-A21F-53A3-048C4F40F7DA";
	setAttr ".cat" -type "string" "BodyPart";
createNode HIKControlSetNode -n "Character1_ControlRig";
	rename -uid "D5FFD3D8-49DE-A7BB-16D9-DDB06F45507A";
	setAttr ".ihi" 0;
createNode keyingGroup -n "Character1_FullBodyKG1";
	rename -uid "A8CEE5E4-4489-8E3C-F45C-FF9CD23C25B4";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dnsm";
	setAttr -s 75 ".act";
	setAttr ".cat" -type "string" "FullBody";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HipsBPKG1";
	rename -uid "F7BA33A3-4C28-0C5F-0A4F-CF9026EAC9EF";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dnsm";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_ChestBPKG1";
	rename -uid "77A3FF17-49B3-E6F8-67DC-B6A55B10AF94";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dnsm";
	setAttr -s 5 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftArmBPKG1";
	rename -uid "4763BDCF-4363-46EA-EF23-4CB4D7C3E708";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightArmBPKG1";
	rename -uid "237FBC17-4F83-F5DA-9D8A-529239F28A28";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dnsm";
	setAttr -s 7 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftLegBPKG1";
	rename -uid "915AE567-4493-815A-A474-4D8DF93CB002";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dnsm";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightLegBPKG1";
	rename -uid "EBACE922-4E39-B543-7FB2-5895A8ACA3F0";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dnsm";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_HeadBPKG1";
	rename -uid "C4D220F3-4791-03E7-FC64-48BD54F24629";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dnsm";
	setAttr -s 3 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftHandBPKG1";
	rename -uid "19087B89-4400-E869-BD46-3A848886CBA1";
	setAttr ".ihi" 0;
	setAttr -s 90 ".dnsm";
	setAttr -s 25 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightHandBPKG1";
	rename -uid "B2ED1FB9-4E28-C4EB-F6C2-569169F383C3";
	setAttr ".ihi" 0;
	setAttr -s 90 ".dnsm";
	setAttr -s 25 ".act";
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_LeftFootBPKG1";
	rename -uid "0F3E2466-4A4D-9B87-9FF1-FEBE015AB098";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode keyingGroup -n "Character1_RightFootBPKG1";
	rename -uid "1556A7B1-4627-7375-C571-C19A1E35FC3B";
	setAttr ".ihi" 0;
	setAttr ".cat" -type "string" "BodyPart";
	setAttr ".mr" yes;
createNode HIKFK2State -n "HIKFK2State1";
	rename -uid "CD2527AC-4B15-7F09-D3AC-F7806D25E28A";
	setAttr ".ihi" 0;
	setAttr ".OutputCharacterState" -type "HIKCharacterState" ;
	setAttr ".LeftUpLegGX" -type "matrix" 1 5.4738221262688167e-048 4.4408920985006262e-016 0
		 5.4738221262688167e-048 1 -4.9303806576313238e-032 0 -4.4408920985006262e-016 4.9303806576313238e-032 1 0
		 54.641761779785149 47.015262615643721 1.2132908406800069e-014 1;
	setAttr ".LeftLegGX" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.110223024625156e-016 1 -1.1102230246251575e-016 0 -5.5511151231257827e-016 1.110223024625157e-016 1 0
		 54.641761779785149 -228.20872496370197 1.2132908406800083e-014 1;
	setAttr ".LeftFootGX" -type "matrix" 1 3.0531133177191805e-016 5.5511151231257827e-016 0
		 -3.053113317719181e-016 1 8.3266726846886543e-017 0 -5.5511151231257827e-016 -8.3266726846886691e-017 1 0
		 54.64176177978517 -477.81300352815504 3.984455011752083e-014 1;
	setAttr ".RightUpLegGX" -type "matrix" 1 5.4738221262688167e-048 4.4408920985006262e-016 0
		 5.4738221262688167e-048 1 -4.9303806576313238e-032 0 -4.4408920985006262e-016 4.9303806576313238e-032 1 0
		 -54.641761779785163 47.015262615643749 -1.2132908406800072e-014 1;
	setAttr ".RightLegGX" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.110223024625156e-016 1 -1.1102230246251575e-016 0 -5.5511151231257827e-016 1.110223024625157e-016 1 0
		 -54.641761779785163 -228.20872496370197 0.0026923730037985111 1;
	setAttr ".RightFootGX" -type "matrix" 1 2.2204460492503131e-016 5.5511151231257827e-016 0
		 -2.2204460492503128e-016 1 -5.5511151231257975e-017 0 -5.5511151231257827e-016 5.5511151231257876e-017 1 0
		 -54.641761779785128 -477.81300352815504 0.0026923730038262228 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 1 4.2777601168665339e-016 3.3306690738754696e-016 0
		 -4.2777601168665344e-016 1 8.3266726846886519e-017 0 -3.3306690738754696e-016 -8.3266726846886642e-017 1 0
		 54.641822814941378 -516.21754454378004 79.446418762207074 1;
	setAttr ".RightToeBaseGX" -type "matrix" 1 3.4450928483976665e-016 3.3306690738754696e-016 0
		 -3.4450928483976665e-016 1 -5.5511151231258e-017 0 -3.3306690738754696e-016 5.5511151231257901e-017 1 0
		 -54.648445129394531 -516.21754454378004 79.449485778808608 1;
createNode HIKEffector2State -n "HIKEffector2State1";
	rename -uid "51CEBBEC-46A5-0299-9E5E-4E81EEFBFD69";
	setAttr ".ihi" 0;
	setAttr ".EFF" -type "HIKEffectorState" ;
createNode HIKPinning2State -n "HIKPinning2State1";
	rename -uid "75C629C4-4F9E-7130-A7B2-21B4282089EA";
	setAttr ".ihi" 0;
	setAttr ".OutputEffectorState" -type "HIKEffectorState" ;
	setAttr ".LeftAnkleEffectorPinT" yes;
	setAttr ".LeftAnkleEffectorPinR" yes;
	setAttr ".RightAnkleEffectorPinT" yes;
	setAttr ".RightAnkleEffectorPinR" yes;
createNode HIKState2FK -n "HIKState2FK1";
	rename -uid "7206720B-45D6-47A3-17FC-F99C67C50E9F";
	setAttr ".ihi" 0;
	setAttr ".ReferenceGX" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 536.59552001953125 0 1;
	setAttr ".HipsGX" -type "matrix" 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 1 2.4651900349420742e-032 0 -2.2204460492503131e-016 2.4651906226892496e-032 1 0
		 8.5379726766777846e-015 85.46685791015625 9.4790529088726731e-031 1;
	setAttr ".LeftUpLegGX" -type "matrix" 1 0 4.4408920985006262e-016 0 0 1 -4.9303806576313238e-032 0
		 -4.4408920985006262e-016 4.9303806576313238e-032 1 0 54.641761779785156 47.015247344970703 1.2132908406800071e-014 1;
	setAttr ".LeftLegGX" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.1102230246251565e-016 1 1.3234889800848443e-023 0 -5.5511151231257827e-016 -1.3234889800848443e-023 1 0
		 54.641761779785156 -228.20875549316406 1.2132908406800071e-014 1;
	setAttr ".LeftFootGX" -type "matrix" 1 3.0531133177191805e-016 5.5511151231257827e-016 0
		 -3.0531133177191805e-016 1 1.942890425442922e-016 0 -5.5511151231257827e-016 -1.942890425442922e-016 1 0
		 54.641761779785156 -477.81301879882812 1.2132908406800071e-014 1;
	setAttr ".RightUpLegGX" -type "matrix" 1 0 4.4408920985006262e-016 0 0 1 -4.9303806576313238e-032 0
		 -4.4408920985006262e-016 4.9303806576313238e-032 1 0 -54.641761779785156 47.015247344970703 -1.2132908406800071e-014 1;
	setAttr ".RightLegGX" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.1102230246251565e-016 1 -1.1102230246251565e-016 0 -5.5511151231257827e-016 1.1102230246251565e-016 1 0
		 -54.641761779785156 -228.20875549316406 0.0026923730038106441 1;
	setAttr ".RightFootGX" -type "matrix" 1 2.2204460492503131e-016 5.5511151231257827e-016 0
		 -2.2204460492503131e-016 1 -5.5511151231257827e-017 0 -5.5511151231257827e-016 5.5511151231257827e-017 1 0
		 -54.641761779785156 -477.81301879882812 0.0026923730038106441 1;
	setAttr ".SpineGX" -type "matrix" 1.0000001192092896 -4.6256649244058633e-016 4.2392789341149934e-016 0
		 3.8207395731463503e-016 0.98485982418060303 0.17335297167301178 0 -4.9769681335104401e-016 -0.17335297167301178 0.98485982418060303 0
		 1.8069977480474064e-014 128.39529418945312 2.0061697530116536e-030 1;
	setAttr ".LeftArmGX" -type "matrix" 0.80435055494308472 -0.48908933997154236 -0.33736115694046021 0
		 0.30046921968460083 0.82468003034591675 -0.47918856143951416 0 0.51258087158203125 0.28406879305839539 0.8102879524230957 0
		 108.59237670898437 340.81039428710937 107.20580291748047 1;
	setAttr ".LeftForeArmGX" -type "matrix" 0.050383910536766052 -0.95200949907302856 0.30189293622970581 0
		 0.85717076063156128 -0.11391296237707138 -0.50227683782577515 0 0.5125618577003479 0.28408050537109375 0.81029534339904785 0
		 243.28402709960937 258.91043090820312 50.713340759277344 1;
	setAttr ".LeftHandGX" -type "matrix" 0.22205491364002228 -0.49499905109405518 0.84004044532775879 0
		 0.16700901091098785 0.86812669038772583 0.46740204095840454 0 -0.9606248140335083 0.036505460739135742 0.27544102072715759 0
		 251.53309631347656 103.04341125488281 100.14051818847656 1;
	setAttr ".RightArmGX" -type "matrix" 0.80435055494308472 0.48908975720405579 0.33736050128936768 0
		 -0.30046987533569336 0.82467985153198242 -0.47918868064880371 0 -0.5125805139541626 0.28406882286071777 0.8102881908416748 0
		 -108.59237670898437 340.8118896484375 107.20684051513672 1;
	setAttr ".RightForeArmGX" -type "matrix" 0.050383418798446655 0.95200943946838379 -0.3018934428691864 0
		 -0.85717213153839111 -0.1139129176735878 -0.50227469205856323 0 -0.51255977153778076 0.28408092260360718 0.81029671430587769 0
		 -243.2850341796875 258.91131591796875 50.714061737060547 1;
	setAttr ".RightHandGX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -251.53392028808594 103.0455322265625 100.1409912109375 1;
	setAttr ".HeadGX" -type "matrix" 0.99999994039535522 -1.6545721363099217e-015 8.0497839669783477e-016 0
		 1.2017220646864078e-015 0.91858589649200439 0.3952212929725647 0 -1.3933639042774037e-015 -0.3952212929725647 0.91858589649200439 0
		 2.3327428313665854e-013 445.457275390625 150.14913940429687 1;
	setAttr ".LeftToeBaseGX" -type "matrix" 1 4.2777601703043483e-016 3.3306690738754696e-016 0
		 -4.2777601703043483e-016 1 1.942890425442922e-016 0 -3.3306690738754696e-016 -1.942890425442922e-016 1 0
		 54.641822814941406 -516.217529296875 79.446418762207031 1;
	setAttr ".RightToeBaseGX" -type "matrix" 1 3.4450929018354809e-016 3.3306690738754696e-016 0
		 -3.4450929018354809e-016 1 -5.5511151231257827e-017 0 -3.3306690738754696e-016 5.5511151231257827e-017 1 0
		 -54.648445129394531 -516.217529296875 79.449485778808594 1;
	setAttr ".LeftShoulderGX" -type "matrix" 1 -1.0610907726405524e-015 6.018825011380334e-016 0
		 5.3175172005584396e-016 0.82319045066833496 0.56776541471481323 0 -1.0979145771103675e-015 -0.56776541471481323 0.82319045066833496 0
		 42.928432464599609 340.80938720703125 107.20510864257813 1;
	setAttr ".RightShoulderGX" -type "matrix" 1 -1.0610907726405524e-015 6.018825011380334e-016 0
		 5.3175172005584396e-016 0.82319045066833496 0.56776541471481323 0 -1.0979145771103675e-015 -0.56776541471481323 0.82319045066833496 0
		 -42.928432464599609 340.80938720703125 107.20510864257813 1;
	setAttr ".NeckGX" -type "matrix" 0.99999994039535522 -1.3628484835613835e-015 6.8876791155426812e-016 0
		 9.7967767151961333e-016 0.91858589649200439 0.3952212929725647 0 -1.171319193473254e-015 -0.3952212929725647 0.91858589649200439 0
		 1.1311409437147341e-013 332.7901611328125 101.67414855957031 1;
	setAttr ".Spine1GX" -type "matrix" 1 -7.5223661968762488e-016 5.4516671023710234e-016 0
		 3.0970722100993105e-016 0.82319045066833496 0.56776541471481323 0 -8.7586986630621777e-016 -0.56776541471481323 0.82319045066833496 0
		 4.7749496956232818e-014 204.89923095703125 13.466062545776367 1;
	setAttr ".Spine2GX" -type "matrix" 1 -1.0610908785196708e-015 6.018825011380334e-016 0
		 5.3175177299540316e-016 0.82319045066833496 0.56776541471481323 0 -1.0979145771103675e-015 -0.56776541471481323 0.82319045066833496 0
		 7.1807556916662213e-014 268.84466552734375 57.570083618164062 1;
	setAttr ".LeftHandThumb1GX" -type "matrix" 0.22205442190170288 -0.49499893188476563 0.84004020690917969 0
		 0.16700895130634308 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505475640296936 0.27544054388999939 0
		 231.40875244140625 86.549888610839844 127.48847961425781 1;
	setAttr ".LeftHandThumb2GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700901091098785 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505505442619324 0.27544057369232178 0
		 230.113525390625 76.226776123046875 140.09089660644531 1;
	setAttr ".LeftHandThumb3GX" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 233.57675170898437 68.506507873535156 153.192626953125 1;
	setAttr ".LeftHandThumb4GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700904071331024 0.8681260347366333 0.46740204095840454 0 -0.9606245756149292 0.036505535244941711 0.27544057369232178 0
		 237.20826721191406 60.411331176757813 166.93055725097656 1;
	setAttr ".LeftHandIndex1GX" -type "matrix" 0.22205442190170288 -0.49499893188476563 0.84004020690917969 0
		 0.16700895130634308 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505475640296936 0.27544054388999939 0
		 243.29893493652344 78.103652954101563 152.02462768554688 1;
	setAttr ".LeftHandIndex2GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700901091098785 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505505442619324 0.27544057369232178 0
		 248.18228149414062 65.317672729492187 174.0277099609375 1;
	setAttr ".LeftHandIndex3GX" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 251.24948120117187 57.28692626953125 187.84761047363281 1;
	setAttr ".LeftHandIndex4GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700904071331024 0.8681260347366333 0.46740204095840454 0 -0.9606245756149292 0.036505535244941711 0.27544057369232178 0
		 253.51274108886719 51.361118316650391 198.04518127441406 1;
	setAttr ".LeftHandMiddle1GX" -type "matrix" 0.22205442190170288 -0.49499893188476563 0.84004020690917969 0
		 0.16700895130634308 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505475640296936 0.27544054388999939 0
		 256.35702514648437 79.258804321289063 149.16522216796875 1;
	setAttr ".LeftHandMiddle2GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700901091098785 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505505442619324 0.27544057369232178 0
		 262.97793579101562 64.49560546875 174.21983337402344 1;
	setAttr ".LeftHandMiddle3GX" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 266.74252319335937 56.101470947265625 188.46546936035156 1;
	setAttr ".LeftHandMiddle4GX" -type "matrix" 0.22205442190170288 -0.4949989914894104 0.84004020690917969 0
		 0.16700904071331024 0.8681260347366333 0.46740204095840454 0 -0.9606245756149292 0.036505535244941711 0.27544057369232178 0
		 269.47314453125 50.012893676757812 198.79837036132812 1;
	setAttr ".LeftHandRing1GX" -type "matrix" 0.22205442190170288 -0.49499893188476563 0.84004020690917969 0
		 0.16700895130634308 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505475640296936 0.27544054388999939 0
		 268.7060546875 77.890281677246094 145.70698547363281 1;
	setAttr ".LeftHandRing2GX" -type "matrix" 0.22205446660518646 -0.49499914050102234 0.84004020690917969 0
		 0.16700902581214905 0.8681260347366333 0.46740216016769409 0 -0.9606245756149292 0.036505475640296936 0.27544060349464417 0
		 274.88552856445312 64.115127563476563 169.08416748046875 1;
	setAttr ".LeftHandRing3GX" -type "matrix" 0.22205494344234467 -0.49499928951263428 0.84004038572311401 0
		 0.16700911521911621 0.86812669038772583 0.46740227937698364 0 -0.96062487363815308 0.036505505442619324 0.27544111013412476 0
		 278.02377319335937 57.119449615478516 180.95620727539062 1;
	setAttr ".LeftHandRing4GX" -type "matrix" 0.22205446660518646 -0.49499917030334473 0.84004014730453491 0
		 0.16700905561447144 0.8681260347366333 0.46740221977233887 0 -0.96062463521957397 0.036505535244941711 0.27544063329696655 0
		 280.64300537109375 51.28070068359375 190.8648681640625 1;
	setAttr ".LeftHandPinky1GX" -type "matrix" 0.22205442190170288 -0.49499893188476563 0.84004020690917969 0
		 0.16700895130634308 0.8681260347366333 0.46740198135375977 0 -0.9606245756149292 0.036505475640296936 0.27544054388999939 0
		 277.97918701171875 73.856277465820312 140.79472351074219 1;
	setAttr ".LeftHandPinky2GX" -type "matrix" 0.22205497324466705 -0.49499940872192383 0.84004020690917969 0
		 0.16700918972492218 0.86812639236450195 0.46740239858627319 0 -0.96062469482421875 0.036505475640296936 0.27544116973876953 0
		 282.12457275390625 64.615463256835938 156.47688293457031 1;
	setAttr ".LeftHandPinky3GX" -type "matrix" 0.22205497324466705 -0.49499940872192383 0.84004020690917969 0
		 0.16700921952724457 0.86812639236450195 0.46740239858627319 0 -0.96062469482421875 0.036505475640296936 0.27544119954109192 0
		 284.81341552734375 58.621570587158203 166.64883422851562 1;
	setAttr ".LeftHandPinky4GX" -type "matrix" 0.22205497324466705 -0.49499940872192383 0.84004014730453491 0
		 0.16700921952724457 0.86812639236450195 0.46740239858627319 0 -0.96062475442886353 0.036505505442619324 0.27544119954109192 0
		 287.08309936523437 53.562053680419922 175.23509216308594 1;
	setAttr ".RightHandThumb1GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -231.85162353515625 88.344734191894531 128.80143737792969 1;
	setAttr ".RightHandThumb2GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -230.82089233398437 79.03924560546875 142.19631958007812 1;
	setAttr ".RightHandThumb3GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -233.96400451660156 72.500411987304688 156.00234985351562 1;
	setAttr ".RightHandThumb4GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -237.25982666015625 65.643836975097656 170.47923278808594 1;
	setAttr ".RightHandIndex1GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -243.98387145996094 82.168487548828125 153.88951110839844 1;
	setAttr ".RightHandIndex2GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -250.94351196289062 71.238365173339844 176.32966613769531 1;
	setAttr ".RightHandIndex3GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -255.31477355957031 64.373260498046875 190.42410278320312 1;
	setAttr ".RightHandIndex4GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -258.54013061523437 59.307826995849609 200.82371520996094 1;
	setAttr ".RightHandMiddle1GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -257.00588989257812 83.388336181640625 150.89591979980469 1;
	setAttr ".RightHandMiddle2GX" -type "matrix" 0.23522378504276276 0.42078995704650879 -0.87613117694854736 0
		 -0.1478888988494873 0.90642333030700684 0.39563348889350891 0 0.96062421798706055 0.036507710814476013 0.27544248104095459 0
		 -265.0162353515625 70.808120727539063 176.72377014160156 1;
	setAttr ".RightHandMiddle3GX" -type "matrix" 0.23522378504276276 0.42078995704650879 -0.87613117694854736 0
		 -0.1478888988494873 0.90642333030700684 0.39563348889350891 0 0.96062421798706055 0.036507710814476013 0.27544248104095459 0
		 -269.5709228515625 63.6549072265625 191.40971374511719 1;
	setAttr ".RightHandMiddle4GX" -type "matrix" 0.23522378504276276 0.42078995704650879 -0.87613117694854736 0
		 -0.1478888988494873 0.90642333030700684 0.39563348889350891 0 0.96062421798706055 0.036507710814476013 0.27544248104095459 0
		 -272.87442016601562 58.466796875 202.06117248535156 1;
	setAttr ".RightHandRing1GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -269.37615966796875 82.029037475585938 147.51055908203125 1;
	setAttr ".RightHandRing2GX" -type "matrix" 0.2352236807346344 0.42079007625579834 -0.87613099813461304 0
		 -0.14788898825645447 0.90642309188842773 0.39563360810279846 0 0.96062415838241577 0.036507740616798401 0.27544242143630981 0
		 -276.850341796875 70.290817260742188 171.60977172851563 1;
	setAttr ".RightHandRing3GX" -type "matrix" 0.2352236807346344 0.42079007625579834 -0.87613099813461304 0
		 -0.14788898825645447 0.90642309188842773 0.39563360810279846 0 0.96062415838241577 0.036507740616798401 0.27544242143630981 0
		 -280.6461181640625 64.329551696777344 183.84857177734375 1;
	setAttr ".RightHandRing4GX" -type "matrix" 0.2352236807346344 0.42079007625579834 -0.87613099813461304 0
		 -0.14788898825645447 0.90642309188842773 0.39563360810279846 0 0.96062415838241577 0.036507740616798401 0.27544242143630981 0
		 -283.81414794921875 59.354194641113281 194.06321716308594 1;
	setAttr ".RightHandPinky1GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -278.7298583984375 77.826553344726563 142.90180969238281 1;
	setAttr ".RightHandPinky2GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -283.74978637695312 69.942123413085938 159.08758544921875 1;
	setAttr ".RightHandPinky3GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -287.005859375 64.827705383300781 169.58631896972656 1;
	setAttr ".RightHandPinky4GX" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788883924484253 0.90642333030700684 0.39563325047492981 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -289.75424194335937 60.511367797851563 178.447998046875 1;
createNode HIKState2FK -n "HIKState2FK2";
	rename -uid "74FF5CB7-457B-E17F-7B46-EAA78E25B467";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter1";
	rename -uid "569FFC98-496C-DE66-DFD1-A59CACE12A4E";
	setAttr ".ihi" 0;
createNode HIKEffectorFromCharacter -n "HIKEffectorFromCharacter2";
	rename -uid "B3EA6F18-4BF4-527E-A644-85B632121A7C";
	setAttr ".ihi" 0;
createNode HIKState2Effector -n "HIKState2Effector1";
	rename -uid "4903E5B1-433B-C55C-E637-A3BC5795CD03";
	setAttr ".ihi" 0;
	setAttr ".HipsEffectorGXM[0]" -type "matrix" 1 -2.2204460492503131e-016 2.2204460492503131e-016 0
		 2.2204460492503131e-016 1 2.4651900349420742e-032 0 -2.2204460492503131e-016 2.4651906226892496e-032 1 0
		 0 47.015247344970703 0 1;
	setAttr ".LeftAnkleEffectorGXM[0]" -type "matrix" 1 3.0531133177191805e-016 5.5511151231257827e-016 0
		 -3.0531133177191805e-016 1 1.942890425442922e-016 0 -5.5511151231257827e-016 -1.942890425442922e-016 1 0
		 54.641761779785156 -477.81301879882812 1.2132908406800071e-014 1;
	setAttr ".RightAnkleEffectorGXM[0]" -type "matrix" 1 2.2204460492503131e-016 5.5511151231257827e-016 0
		 -2.2204460492503131e-016 1 -5.5511151231257827e-017 0 -5.5511151231257827e-016 5.5511151231257827e-017 1 0
		 -54.641761779785156 -477.81301879882812 0.0026923730038106441 1;
	setAttr ".LeftWristEffectorGXM[0]" -type "matrix" 0.22205491364002228 -0.49499905109405518 0.84004044532775879 0
		 0.16700901091098785 0.86812669038772583 0.46740204095840454 0 -0.9606248140335083 0.036505460739135742 0.27544102072715759 0
		 251.53309631347656 103.04341125488281 100.14051818847656 1;
	setAttr ".RightWristEffectorGXM[0]" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788885414600372 0.90642338991165161 0.3956332802772522 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -251.53392028808594 103.0455322265625 100.1409912109375 1;
	setAttr ".LeftKneeEffectorGXM[0]" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.1102230246251565e-016 1 1.3234889800848443e-023 0 -5.5511151231257827e-016 -1.3234889800848443e-023 1 0
		 54.641761779785156 -228.20875549316406 1.2132908406800071e-014 1;
	setAttr ".RightKneeEffectorGXM[0]" -type "matrix" 1 1.1102230246251565e-016 5.5511151231257827e-016 0
		 -1.1102230246251565e-016 1 -1.1102230246251565e-016 0 -5.5511151231257827e-016 1.1102230246251565e-016 1 0
		 -54.641761779785156 -228.20875549316406 0.0026923730038106441 1;
	setAttr ".LeftElbowEffectorGXM[0]" -type "matrix" 0.050383910536766052 -0.95200949907302856 0.30189293622970581 0
		 0.85717076063156128 -0.11391296237707138 -0.50227683782577515 0 0.5125618577003479 0.28408050537109375 0.81029534339904785 0
		 243.28402709960937 258.91043090820312 50.713340759277344 1;
	setAttr ".RightElbowEffectorGXM[0]" -type "matrix" 0.050383418798446655 0.95200943946838379 -0.3018934428691864 0
		 -0.85717213153839111 -0.1139129176735878 -0.50227469205856323 0 -0.51255977153778076 0.28408092260360718 0.81029671430587769 0
		 -243.2850341796875 258.91131591796875 50.714061737060547 1;
	setAttr ".ChestOriginEffectorGXM[0]" -type "matrix" 1.0000001192092896 -4.6256649244058633e-016 4.2392789341149934e-016 0
		 3.8207395731463503e-016 0.98485982418060303 0.17335297167301178 0 -4.9769681335104401e-016 -0.17335297167301178 0.98485982418060303 0
		 1.8069977480474064e-014 128.39529418945312 2.0061697530116536e-030 1;
	setAttr ".ChestEndEffectorGXM[0]" -type "matrix" 1 -1.0610908785196708e-015 6.018825011380334e-016 0
		 5.3175177299540316e-016 0.82319045066833496 0.56776541471481323 0 -1.0979145771103675e-015 -0.56776541471481323 0.82319045066833496 0
		 0 340.80938720703125 107.20510864257813 1;
	setAttr ".LeftFootEffectorGXM[0]" -type "matrix" 1 4.2777601703043483e-016 3.3306690738754696e-016 0
		 -4.2777601703043483e-016 1 1.942890425442922e-016 0 -3.3306690738754696e-016 -1.942890425442922e-016 1 0
		 54.641822814941406 -516.217529296875 79.446418762207031 1;
	setAttr ".RightFootEffectorGXM[0]" -type "matrix" 1 3.4450929018354809e-016 3.3306690738754696e-016 0
		 -3.4450929018354809e-016 1 -5.5511151231257827e-017 0 -3.3306690738754696e-016 5.5511151231257827e-017 1 0
		 -54.648445129394531 -516.217529296875 79.449485778808594 1;
	setAttr ".LeftShoulderEffectorGXM[0]" -type "matrix" 0.80435055494308472 -0.48908933997154236 -0.33736115694046021 0
		 0.30046924948692322 0.82468008995056152 -0.47918859124183655 0 0.51258087158203125 0.28406879305839539 0.8102879524230957 0
		 108.59237670898437 340.81039428710937 107.20580291748047 1;
	setAttr ".RightShoulderEffectorGXM[0]" -type "matrix" 0.80435061454772949 0.48908978700637817 0.33736053109169006 0
		 -0.30046987533569336 0.82467985153198242 -0.47918868064880371 0 -0.5125805139541626 0.28406882286071777 0.8102881908416748 0
		 -108.59237670898437 340.8118896484375 107.20684051513672 1;
	setAttr ".HeadEffectorGXM[0]" -type "matrix" 0.99999994039535522 -1.6545721363099217e-015 8.0497839669783477e-016 0
		 1.2017220646864078e-015 0.91858589649200439 0.3952212929725647 0 -1.3933639042774037e-015 -0.3952212929725647 0.91858589649200439 0
		 2.3327428313665854e-013 445.457275390625 150.14913940429687 1;
	setAttr ".LeftHipEffectorGXM[0]" -type "matrix" 1 0 4.4408920985006262e-016 0 0 1 -4.9303806576313238e-032 0
		 -4.4408920985006262e-016 4.9303806576313238e-032 1 0 54.641761779785156 47.015247344970703 1.2132908406800071e-014 1;
	setAttr ".RightHipEffectorGXM[0]" -type "matrix" 1 0 4.4408920985006262e-016 0 0 1 -4.9303806576313238e-032 0
		 -4.4408920985006262e-016 4.9303806576313238e-032 1 0 -54.641761779785156 47.015247344970703 -1.2132908406800071e-014 1;
	setAttr ".LeftHandThumbEffectorGXM[0]" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 237.20826721191406 60.411331176757813 166.93055725097656 1;
	setAttr ".LeftHandIndexEffectorGXM[0]" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 253.51274108886719 51.361118316650391 198.04518127441406 1;
	setAttr ".LeftHandMiddleEffectorGXM[0]" -type "matrix" 0.22205491364002228 -0.49499911069869995 0.84004044532775879 0
		 0.16700910031795502 0.86812669038772583 0.4674021303653717 0 -0.9606248140335083 0.036505550146102905 0.27544108033180237 0
		 269.47314453125 50.012893676757812 198.79837036132812 1;
	setAttr ".LeftHandRingEffectorGXM[0]" -type "matrix" 0.22205494344234467 -0.49499928951263428 0.84004038572311401 0
		 0.16700911521911621 0.86812669038772583 0.46740227937698364 0 -0.96062487363815308 0.036505505442619324 0.27544111013412476 0
		 280.64300537109375 51.28070068359375 190.8648681640625 1;
	setAttr ".LeftHandPinkyEffectorGXM[0]" -type "matrix" 0.22205497324466705 -0.49499940872192383 0.84004020690917969 0
		 0.16700921952724457 0.86812639236450195 0.46740239858627319 0 -0.96062469482421875 0.036505475640296936 0.27544119954109192 0
		 287.08309936523437 53.562053680419922 175.23509216308594 1;
	setAttr ".RightHandThumbEffectorGXM[0]" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788885414600372 0.90642338991165161 0.3956332802772522 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -237.25982666015625 65.643836975097656 170.47923278808594 1;
	setAttr ".RightHandIndexEffectorGXM[0]" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788885414600372 0.90642338991165161 0.3956332802772522 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -258.54013061523437 59.307826995849609 200.82371520996094 1;
	setAttr ".RightHandMiddleEffectorGXM[0]" -type "matrix" 0.23522378504276276 0.42078995704650879 -0.87613117694854736 0
		 -0.1478889137506485 0.90642338991165161 0.3956335186958313 0 0.96062421798706055 0.036507710814476013 0.27544248104095459 0
		 -272.87442016601562 58.466796875 202.06117248535156 1;
	setAttr ".RightHandRingEffectorGXM[0]" -type "matrix" 0.2352236807346344 0.42079007625579834 -0.87613099813461304 0
		 -0.14788900315761566 0.90642315149307251 0.39563363790512085 0 0.96062415838241577 0.036507740616798401 0.27544242143630981 0
		 -283.81414794921875 59.354194641113281 194.06321716308594 1;
	setAttr ".RightHandPinkyEffectorGXM[0]" -type "matrix" 0.23522375524044037 0.42078971862792969 -0.87613123655319214 0
		 -0.14788885414600372 0.90642338991165161 0.3956332802772522 0 0.96062415838241577 0.036507710814476013 0.27544239163398743 0
		 -289.75424194335937 60.511367797851563 178.447998046875 1;
createNode HIKState2Effector -n "HIKState2Effector2";
	rename -uid "A0B281B2-4E07-D024-6296-A0BDBCB31096";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "57A504FA-45A1-2D2E-A4F8-569A31564EF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "9E57A7C2-4323-2839-0FA4-AC891BE5955B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "2DB2E8A0-4844-14DE-60C4-338116BE31DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "01E1C30E-4836-5D5C-2353-D9B7A47BEED7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "FC735A58-48D2-F75D-0B71-5A873B241D75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "39BBA7A5-4CA0-1F91-0BB5-0A84551E8FA9";
	setAttr ".ihi" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "1D56782E-4192-6BF5-8856-70904930463E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".h" 2;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak1";
	rename -uid "FADEBB10-48FD-ABC9-029E-499BE657FA40";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[0:13]" -type "float3"  61.05538559 48.89779663 -105.75096893
		 -61.055351257 48.89779663 -105.75097656 -122.11074066 48.89779663 -1.3537762e-005
		 -61.055381775 48.89779663 105.75097656 61.055351257 48.89779663 105.75097656 122.11074066
		 48.89779663 4.658159e-006 0 38.41970825 0 0 38.41970825 0 0 38.41970825 0 0 38.41970825
		 0 0 38.41970825 0 0 38.41970825 0 0 48.89780045 4.658159e-006 0 38.41970825 0;
createNode polySplit -n "polySplit1";
	rename -uid "51CE87B3-4F9D-4242-A91E-9E82984B1441";
	setAttr -s 7 ".e[0:6]"  0.63489002 0.63489002 0.63489002 0.63489002
		 0.63489002 0.63489002 0.63489002;
	setAttr -s 7 ".d[0:6]"  -2147483636 -2147483635 -2147483634 -2147483633 -2147483632 -2147483631 
		-2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1F1F9A31-42A5-AAF7-5EF0-B9BEF93CA556";
	setAttr ".ics" -type "componentList" 1 "f[12:17]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.384197 -0.45025027 ;
	setAttr ".rs" 36302;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1486748831912355 2.3841970825195311 -1.191183192799544 ;
	setAttr ".cbx" -type "double3" 1.1486748831912355 2.3841970825195311 0.2906826229345158 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "979CEAB1-48D7-2436-53AB-D2BD5A42AA22";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[14]" -type "float3" 19.141706 0 -33.154366 ;
	setAttr ".tk[15]" -type "float3" -19.141695 0 -33.154369 ;
	setAttr ".tk[16]" -type "float3" -38.283394 0 -4.2442721e-006 ;
	setAttr ".tk[17]" -type "float3" -19.141705 0 33.154366 ;
	setAttr ".tk[18]" -type "float3" 19.141697 0 33.154369 ;
	setAttr ".tk[19]" -type "float3" 38.283394 0 1.460396e-006 ;
createNode polyAverageVertex -n "polyAverageVertex1";
	rename -uid "0A4D5666-4FEC-9361-47E0-C7896486AA48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "B177EF30-429D-4C54-C016-9C9A5F958718";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0 45.881298 ;
	setAttr ".tk[7]" -type "float3" 0 0 45.881298 ;
	setAttr ".tk[8]" -type "float3" 0 0 45.881298 ;
	setAttr ".tk[9]" -type "float3" 0 -10.080718 42.292305 ;
	setAttr ".tk[10]" -type "float3" 0 -10.080718 42.292305 ;
	setAttr ".tk[11]" -type "float3" 0 0 45.881298 ;
	setAttr ".tk[16]" -type "float3" 0 0 15.538738 ;
	setAttr ".tk[17]" -type "float3" 0 0 15.538738 ;
	setAttr ".tk[19]" -type "float3" 0 149.84081 133.47385 ;
	setAttr ".tk[20]" -type "float3" 0 149.84082 133.47385 ;
	setAttr ".tk[21]" -type "float3" 0 113.51286 79.998123 ;
	setAttr ".tk[22]" -type "float3" 0 113.51286 122.35007 ;
	setAttr ".tk[23]" -type "float3" 0 48.579533 118.50529 ;
	setAttr ".tk[24]" -type "float3" 0 48.579533 118.50529 ;
	setAttr ".tk[25]" -type "float3" 0 113.51286 122.35007 ;
createNode polyAverageVertex -n "polyAverageVertex2";
	rename -uid "58196DE8-461C-13FF-7254-01A737451529";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyAverageVertex -n "polyAverageVertex3";
	rename -uid "72796196-4550-C171-8A8F-6E836F2EF86A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyAverageVertex -n "polyAverageVertex4";
	rename -uid "D2B3BAB8-4227-B765-52C0-DBBE0CDE867E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyAverageVertex -n "polyAverageVertex5";
	rename -uid "D569F304-482D-F3B1-51ED-15B86A125FBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyAverageVertex -n "polyAverageVertex6";
	rename -uid "E612DD09-458C-68BC-4FB1-B0AE33D18D62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyAverageVertex -n "polyAverageVertex7";
	rename -uid "250740AC-4847-3D28-C8A6-A1A96B11E170";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[21]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "F2CF6B85-4661-5015-B9BB-7EAC3B113B7E";
	setAttr ".ics" -type "componentList" 1 "f[12:17]";
	setAttr ".ix" -type "matrix" 1.1486748831912355 0 0 0 0 1 0 0 0 0 0.85555552755993414 0
		 0 100 -45.025025229566069 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 3.3762989 0.62766051 ;
	setAttr ".rs" 61573;
	setAttr ".lt" -type "double3" 1.9058241313221757e-023 -3.552713678800501e-017 0.50605127581251164 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1486747955542966 2.8699923706054689 -0.049240256499657846 ;
	setAttr ".cbx" -type "double3" 1.1486747955542966 3.8826052856445314 1.3045612883191466 ;
createNode polyCube -n "polyCube1";
	rename -uid "5E433CA9-40DE-8ABA-6E42-D29FD85E0ED2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr "leftShape.msg" "imagePlaneShape2.ltc";
connectAttr "HIKState2SK1.HipsSx" "Character1_Hips.sx";
connectAttr "HIKState2SK1.HipsSy" "Character1_Hips.sy";
connectAttr "HIKState2SK1.HipsSz" "Character1_Hips.sz";
connectAttr "HIKState2SK1.HipsTx" "Character1_Hips.tx";
connectAttr "HIKState2SK1.HipsTy" "Character1_Hips.ty";
connectAttr "HIKState2SK1.HipsTz" "Character1_Hips.tz";
connectAttr "HIKState2SK1.HipsRx" "Character1_Hips.rx";
connectAttr "HIKState2SK1.HipsRy" "Character1_Hips.ry";
connectAttr "HIKState2SK1.HipsRz" "Character1_Hips.rz";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "HIKState2SK1.SpineSx" "Character1_Spine.sx";
connectAttr "HIKState2SK1.SpineSy" "Character1_Spine.sy";
connectAttr "HIKState2SK1.SpineSz" "Character1_Spine.sz";
connectAttr "HIKState2SK1.SpineTx" "Character1_Spine.tx";
connectAttr "HIKState2SK1.SpineTy" "Character1_Spine.ty";
connectAttr "HIKState2SK1.SpineTz" "Character1_Spine.tz";
connectAttr "HIKState2SK1.SpineRx" "Character1_Spine.rx";
connectAttr "HIKState2SK1.SpineRy" "Character1_Spine.ry";
connectAttr "HIKState2SK1.SpineRz" "Character1_Spine.rz";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "HIKState2SK1.Spine1Sx" "Character1_Spine1.sx";
connectAttr "HIKState2SK1.Spine1Sy" "Character1_Spine1.sy";
connectAttr "HIKState2SK1.Spine1Sz" "Character1_Spine1.sz";
connectAttr "HIKState2SK1.Spine1Tx" "Character1_Spine1.tx";
connectAttr "HIKState2SK1.Spine1Ty" "Character1_Spine1.ty";
connectAttr "HIKState2SK1.Spine1Tz" "Character1_Spine1.tz";
connectAttr "HIKState2SK1.Spine1Rx" "Character1_Spine1.rx";
connectAttr "HIKState2SK1.Spine1Ry" "Character1_Spine1.ry";
connectAttr "HIKState2SK1.Spine1Rz" "Character1_Spine1.rz";
connectAttr "Character1_Spine1.s" "Character1_Spine2.is";
connectAttr "HIKState2SK1.Spine2Sx" "Character1_Spine2.sx";
connectAttr "HIKState2SK1.Spine2Sy" "Character1_Spine2.sy";
connectAttr "HIKState2SK1.Spine2Sz" "Character1_Spine2.sz";
connectAttr "HIKState2SK1.Spine2Tx" "Character1_Spine2.tx";
connectAttr "HIKState2SK1.Spine2Ty" "Character1_Spine2.ty";
connectAttr "HIKState2SK1.Spine2Tz" "Character1_Spine2.tz";
connectAttr "HIKState2SK1.Spine2Rx" "Character1_Spine2.rx";
connectAttr "HIKState2SK1.Spine2Ry" "Character1_Spine2.ry";
connectAttr "HIKState2SK1.Spine2Rz" "Character1_Spine2.rz";
connectAttr "Character1_Spine2.s" "Character1_LeftShoulder.is";
connectAttr "HIKState2SK1.LeftShoulderSx" "Character1_LeftShoulder.sx";
connectAttr "HIKState2SK1.LeftShoulderSy" "Character1_LeftShoulder.sy";
connectAttr "HIKState2SK1.LeftShoulderSz" "Character1_LeftShoulder.sz";
connectAttr "HIKState2SK1.LeftShoulderTx" "Character1_LeftShoulder.tx";
connectAttr "HIKState2SK1.LeftShoulderTy" "Character1_LeftShoulder.ty";
connectAttr "HIKState2SK1.LeftShoulderTz" "Character1_LeftShoulder.tz";
connectAttr "HIKState2SK1.LeftShoulderRx" "Character1_LeftShoulder.rx";
connectAttr "HIKState2SK1.LeftShoulderRy" "Character1_LeftShoulder.ry";
connectAttr "HIKState2SK1.LeftShoulderRz" "Character1_LeftShoulder.rz";
connectAttr "Character1_LeftShoulder.s" "Character1_LeftArm.is";
connectAttr "HIKState2SK1.LeftArmSx" "Character1_LeftArm.sx";
connectAttr "HIKState2SK1.LeftArmSy" "Character1_LeftArm.sy";
connectAttr "HIKState2SK1.LeftArmSz" "Character1_LeftArm.sz";
connectAttr "HIKState2SK1.LeftArmTx" "Character1_LeftArm.tx";
connectAttr "HIKState2SK1.LeftArmTy" "Character1_LeftArm.ty";
connectAttr "HIKState2SK1.LeftArmTz" "Character1_LeftArm.tz";
connectAttr "HIKState2SK1.LeftArmRx" "Character1_LeftArm.rx";
connectAttr "HIKState2SK1.LeftArmRy" "Character1_LeftArm.ry";
connectAttr "HIKState2SK1.LeftArmRz" "Character1_LeftArm.rz";
connectAttr "Character1_LeftArm.s" "Character1_LeftForeArm.is";
connectAttr "HIKState2SK1.LeftForeArmSx" "Character1_LeftForeArm.sx";
connectAttr "HIKState2SK1.LeftForeArmSy" "Character1_LeftForeArm.sy";
connectAttr "HIKState2SK1.LeftForeArmSz" "Character1_LeftForeArm.sz";
connectAttr "HIKState2SK1.LeftForeArmTx" "Character1_LeftForeArm.tx";
connectAttr "HIKState2SK1.LeftForeArmTy" "Character1_LeftForeArm.ty";
connectAttr "HIKState2SK1.LeftForeArmTz" "Character1_LeftForeArm.tz";
connectAttr "HIKState2SK1.LeftForeArmRx" "Character1_LeftForeArm.rx";
connectAttr "HIKState2SK1.LeftForeArmRy" "Character1_LeftForeArm.ry";
connectAttr "HIKState2SK1.LeftForeArmRz" "Character1_LeftForeArm.rz";
connectAttr "Character1_LeftForeArm.s" "Character1_LeftHand.is";
connectAttr "HIKState2SK1.LeftHandSx" "Character1_LeftHand.sx";
connectAttr "HIKState2SK1.LeftHandSy" "Character1_LeftHand.sy";
connectAttr "HIKState2SK1.LeftHandSz" "Character1_LeftHand.sz";
connectAttr "HIKState2SK1.LeftHandTx" "Character1_LeftHand.tx";
connectAttr "HIKState2SK1.LeftHandTy" "Character1_LeftHand.ty";
connectAttr "HIKState2SK1.LeftHandTz" "Character1_LeftHand.tz";
connectAttr "HIKState2SK1.LeftHandRx" "Character1_LeftHand.rx";
connectAttr "HIKState2SK1.LeftHandRy" "Character1_LeftHand.ry";
connectAttr "HIKState2SK1.LeftHandRz" "Character1_LeftHand.rz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandThumb1.is";
connectAttr "HIKState2SK1.LeftHandThumb1Sx" "Character1_LeftHandThumb1.sx";
connectAttr "HIKState2SK1.LeftHandThumb1Sy" "Character1_LeftHandThumb1.sy";
connectAttr "HIKState2SK1.LeftHandThumb1Sz" "Character1_LeftHandThumb1.sz";
connectAttr "HIKState2SK1.LeftHandThumb1Tx" "Character1_LeftHandThumb1.tx";
connectAttr "HIKState2SK1.LeftHandThumb1Ty" "Character1_LeftHandThumb1.ty";
connectAttr "HIKState2SK1.LeftHandThumb1Tz" "Character1_LeftHandThumb1.tz";
connectAttr "HIKState2SK1.LeftHandThumb1Rx" "Character1_LeftHandThumb1.rx";
connectAttr "HIKState2SK1.LeftHandThumb1Ry" "Character1_LeftHandThumb1.ry";
connectAttr "HIKState2SK1.LeftHandThumb1Rz" "Character1_LeftHandThumb1.rz";
connectAttr "Character1_LeftHandThumb1.s" "Character1_LeftHandThumb2.is";
connectAttr "HIKState2SK1.LeftHandThumb2Sx" "Character1_LeftHandThumb2.sx";
connectAttr "HIKState2SK1.LeftHandThumb2Sy" "Character1_LeftHandThumb2.sy";
connectAttr "HIKState2SK1.LeftHandThumb2Sz" "Character1_LeftHandThumb2.sz";
connectAttr "HIKState2SK1.LeftHandThumb2Tx" "Character1_LeftHandThumb2.tx";
connectAttr "HIKState2SK1.LeftHandThumb2Ty" "Character1_LeftHandThumb2.ty";
connectAttr "HIKState2SK1.LeftHandThumb2Tz" "Character1_LeftHandThumb2.tz";
connectAttr "HIKState2SK1.LeftHandThumb2Rx" "Character1_LeftHandThumb2.rx";
connectAttr "HIKState2SK1.LeftHandThumb2Ry" "Character1_LeftHandThumb2.ry";
connectAttr "HIKState2SK1.LeftHandThumb2Rz" "Character1_LeftHandThumb2.rz";
connectAttr "Character1_LeftHandThumb2.s" "Character1_LeftHandThumb3.is";
connectAttr "HIKState2SK1.LeftHandThumb3Sx" "Character1_LeftHandThumb3.sx";
connectAttr "HIKState2SK1.LeftHandThumb3Sy" "Character1_LeftHandThumb3.sy";
connectAttr "HIKState2SK1.LeftHandThumb3Sz" "Character1_LeftHandThumb3.sz";
connectAttr "HIKState2SK1.LeftHandThumb3Tx" "Character1_LeftHandThumb3.tx";
connectAttr "HIKState2SK1.LeftHandThumb3Ty" "Character1_LeftHandThumb3.ty";
connectAttr "HIKState2SK1.LeftHandThumb3Tz" "Character1_LeftHandThumb3.tz";
connectAttr "HIKState2SK1.LeftHandThumb3Rx" "Character1_LeftHandThumb3.rx";
connectAttr "HIKState2SK1.LeftHandThumb3Ry" "Character1_LeftHandThumb3.ry";
connectAttr "HIKState2SK1.LeftHandThumb3Rz" "Character1_LeftHandThumb3.rz";
connectAttr "Character1_LeftHandThumb3.s" "Character1_LeftHandThumb4.is";
connectAttr "HIKState2SK1.LeftHandThumb4Tx" "Character1_LeftHandThumb4.tx";
connectAttr "HIKState2SK1.LeftHandThumb4Ty" "Character1_LeftHandThumb4.ty";
connectAttr "HIKState2SK1.LeftHandThumb4Tz" "Character1_LeftHandThumb4.tz";
connectAttr "HIKState2SK1.LeftHandThumb4Rx" "Character1_LeftHandThumb4.rx";
connectAttr "HIKState2SK1.LeftHandThumb4Ry" "Character1_LeftHandThumb4.ry";
connectAttr "HIKState2SK1.LeftHandThumb4Rz" "Character1_LeftHandThumb4.rz";
connectAttr "HIKState2SK1.LeftHandThumb4Sx" "Character1_LeftHandThumb4.sx";
connectAttr "HIKState2SK1.LeftHandThumb4Sy" "Character1_LeftHandThumb4.sy";
connectAttr "HIKState2SK1.LeftHandThumb4Sz" "Character1_LeftHandThumb4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandIndex1.is";
connectAttr "HIKState2SK1.LeftHandIndex1Sx" "Character1_LeftHandIndex1.sx";
connectAttr "HIKState2SK1.LeftHandIndex1Sy" "Character1_LeftHandIndex1.sy";
connectAttr "HIKState2SK1.LeftHandIndex1Sz" "Character1_LeftHandIndex1.sz";
connectAttr "HIKState2SK1.LeftHandIndex1Tx" "Character1_LeftHandIndex1.tx";
connectAttr "HIKState2SK1.LeftHandIndex1Ty" "Character1_LeftHandIndex1.ty";
connectAttr "HIKState2SK1.LeftHandIndex1Tz" "Character1_LeftHandIndex1.tz";
connectAttr "HIKState2SK1.LeftHandIndex1Rx" "Character1_LeftHandIndex1.rx";
connectAttr "HIKState2SK1.LeftHandIndex1Ry" "Character1_LeftHandIndex1.ry";
connectAttr "HIKState2SK1.LeftHandIndex1Rz" "Character1_LeftHandIndex1.rz";
connectAttr "Character1_LeftHandIndex1.s" "Character1_LeftHandIndex2.is";
connectAttr "HIKState2SK1.LeftHandIndex2Sx" "Character1_LeftHandIndex2.sx";
connectAttr "HIKState2SK1.LeftHandIndex2Sy" "Character1_LeftHandIndex2.sy";
connectAttr "HIKState2SK1.LeftHandIndex2Sz" "Character1_LeftHandIndex2.sz";
connectAttr "HIKState2SK1.LeftHandIndex2Tx" "Character1_LeftHandIndex2.tx";
connectAttr "HIKState2SK1.LeftHandIndex2Ty" "Character1_LeftHandIndex2.ty";
connectAttr "HIKState2SK1.LeftHandIndex2Tz" "Character1_LeftHandIndex2.tz";
connectAttr "HIKState2SK1.LeftHandIndex2Rx" "Character1_LeftHandIndex2.rx";
connectAttr "HIKState2SK1.LeftHandIndex2Ry" "Character1_LeftHandIndex2.ry";
connectAttr "HIKState2SK1.LeftHandIndex2Rz" "Character1_LeftHandIndex2.rz";
connectAttr "Character1_LeftHandIndex2.s" "Character1_LeftHandIndex3.is";
connectAttr "HIKState2SK1.LeftHandIndex3Sx" "Character1_LeftHandIndex3.sx";
connectAttr "HIKState2SK1.LeftHandIndex3Sy" "Character1_LeftHandIndex3.sy";
connectAttr "HIKState2SK1.LeftHandIndex3Sz" "Character1_LeftHandIndex3.sz";
connectAttr "HIKState2SK1.LeftHandIndex3Tx" "Character1_LeftHandIndex3.tx";
connectAttr "HIKState2SK1.LeftHandIndex3Ty" "Character1_LeftHandIndex3.ty";
connectAttr "HIKState2SK1.LeftHandIndex3Tz" "Character1_LeftHandIndex3.tz";
connectAttr "HIKState2SK1.LeftHandIndex3Rx" "Character1_LeftHandIndex3.rx";
connectAttr "HIKState2SK1.LeftHandIndex3Ry" "Character1_LeftHandIndex3.ry";
connectAttr "HIKState2SK1.LeftHandIndex3Rz" "Character1_LeftHandIndex3.rz";
connectAttr "Character1_LeftHandIndex3.s" "Character1_LeftHandIndex4.is";
connectAttr "HIKState2SK1.LeftHandIndex4Tx" "Character1_LeftHandIndex4.tx";
connectAttr "HIKState2SK1.LeftHandIndex4Ty" "Character1_LeftHandIndex4.ty";
connectAttr "HIKState2SK1.LeftHandIndex4Tz" "Character1_LeftHandIndex4.tz";
connectAttr "HIKState2SK1.LeftHandIndex4Rx" "Character1_LeftHandIndex4.rx";
connectAttr "HIKState2SK1.LeftHandIndex4Ry" "Character1_LeftHandIndex4.ry";
connectAttr "HIKState2SK1.LeftHandIndex4Rz" "Character1_LeftHandIndex4.rz";
connectAttr "HIKState2SK1.LeftHandIndex4Sx" "Character1_LeftHandIndex4.sx";
connectAttr "HIKState2SK1.LeftHandIndex4Sy" "Character1_LeftHandIndex4.sy";
connectAttr "HIKState2SK1.LeftHandIndex4Sz" "Character1_LeftHandIndex4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandMiddle1.is";
connectAttr "HIKState2SK1.LeftHandMiddle1Sx" "Character1_LeftHandMiddle1.sx";
connectAttr "HIKState2SK1.LeftHandMiddle1Sy" "Character1_LeftHandMiddle1.sy";
connectAttr "HIKState2SK1.LeftHandMiddle1Sz" "Character1_LeftHandMiddle1.sz";
connectAttr "HIKState2SK1.LeftHandMiddle1Tx" "Character1_LeftHandMiddle1.tx";
connectAttr "HIKState2SK1.LeftHandMiddle1Ty" "Character1_LeftHandMiddle1.ty";
connectAttr "HIKState2SK1.LeftHandMiddle1Tz" "Character1_LeftHandMiddle1.tz";
connectAttr "HIKState2SK1.LeftHandMiddle1Rx" "Character1_LeftHandMiddle1.rx";
connectAttr "HIKState2SK1.LeftHandMiddle1Ry" "Character1_LeftHandMiddle1.ry";
connectAttr "HIKState2SK1.LeftHandMiddle1Rz" "Character1_LeftHandMiddle1.rz";
connectAttr "Character1_LeftHandMiddle1.s" "Character1_LeftHandMiddle2.is";
connectAttr "HIKState2SK1.LeftHandMiddle2Sx" "Character1_LeftHandMiddle2.sx";
connectAttr "HIKState2SK1.LeftHandMiddle2Sy" "Character1_LeftHandMiddle2.sy";
connectAttr "HIKState2SK1.LeftHandMiddle2Sz" "Character1_LeftHandMiddle2.sz";
connectAttr "HIKState2SK1.LeftHandMiddle2Tx" "Character1_LeftHandMiddle2.tx";
connectAttr "HIKState2SK1.LeftHandMiddle2Ty" "Character1_LeftHandMiddle2.ty";
connectAttr "HIKState2SK1.LeftHandMiddle2Tz" "Character1_LeftHandMiddle2.tz";
connectAttr "HIKState2SK1.LeftHandMiddle2Rx" "Character1_LeftHandMiddle2.rx";
connectAttr "HIKState2SK1.LeftHandMiddle2Ry" "Character1_LeftHandMiddle2.ry";
connectAttr "HIKState2SK1.LeftHandMiddle2Rz" "Character1_LeftHandMiddle2.rz";
connectAttr "Character1_LeftHandMiddle2.s" "Character1_LeftHandMiddle3.is";
connectAttr "HIKState2SK1.LeftHandMiddle3Sx" "Character1_LeftHandMiddle3.sx";
connectAttr "HIKState2SK1.LeftHandMiddle3Sy" "Character1_LeftHandMiddle3.sy";
connectAttr "HIKState2SK1.LeftHandMiddle3Sz" "Character1_LeftHandMiddle3.sz";
connectAttr "HIKState2SK1.LeftHandMiddle3Tx" "Character1_LeftHandMiddle3.tx";
connectAttr "HIKState2SK1.LeftHandMiddle3Ty" "Character1_LeftHandMiddle3.ty";
connectAttr "HIKState2SK1.LeftHandMiddle3Tz" "Character1_LeftHandMiddle3.tz";
connectAttr "HIKState2SK1.LeftHandMiddle3Rx" "Character1_LeftHandMiddle3.rx";
connectAttr "HIKState2SK1.LeftHandMiddle3Ry" "Character1_LeftHandMiddle3.ry";
connectAttr "HIKState2SK1.LeftHandMiddle3Rz" "Character1_LeftHandMiddle3.rz";
connectAttr "Character1_LeftHandMiddle3.s" "Character1_LeftHandMiddle4.is";
connectAttr "HIKState2SK1.LeftHandMiddle4Tx" "Character1_LeftHandMiddle4.tx";
connectAttr "HIKState2SK1.LeftHandMiddle4Ty" "Character1_LeftHandMiddle4.ty";
connectAttr "HIKState2SK1.LeftHandMiddle4Tz" "Character1_LeftHandMiddle4.tz";
connectAttr "HIKState2SK1.LeftHandMiddle4Rx" "Character1_LeftHandMiddle4.rx";
connectAttr "HIKState2SK1.LeftHandMiddle4Ry" "Character1_LeftHandMiddle4.ry";
connectAttr "HIKState2SK1.LeftHandMiddle4Rz" "Character1_LeftHandMiddle4.rz";
connectAttr "HIKState2SK1.LeftHandMiddle4Sx" "Character1_LeftHandMiddle4.sx";
connectAttr "HIKState2SK1.LeftHandMiddle4Sy" "Character1_LeftHandMiddle4.sy";
connectAttr "HIKState2SK1.LeftHandMiddle4Sz" "Character1_LeftHandMiddle4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandRing1.is";
connectAttr "HIKState2SK1.LeftHandRing1Sx" "Character1_LeftHandRing1.sx";
connectAttr "HIKState2SK1.LeftHandRing1Sy" "Character1_LeftHandRing1.sy";
connectAttr "HIKState2SK1.LeftHandRing1Sz" "Character1_LeftHandRing1.sz";
connectAttr "HIKState2SK1.LeftHandRing1Tx" "Character1_LeftHandRing1.tx";
connectAttr "HIKState2SK1.LeftHandRing1Ty" "Character1_LeftHandRing1.ty";
connectAttr "HIKState2SK1.LeftHandRing1Tz" "Character1_LeftHandRing1.tz";
connectAttr "HIKState2SK1.LeftHandRing1Rx" "Character1_LeftHandRing1.rx";
connectAttr "HIKState2SK1.LeftHandRing1Ry" "Character1_LeftHandRing1.ry";
connectAttr "HIKState2SK1.LeftHandRing1Rz" "Character1_LeftHandRing1.rz";
connectAttr "Character1_LeftHandRing1.s" "Character1_LeftHandRing2.is";
connectAttr "HIKState2SK1.LeftHandRing2Sx" "Character1_LeftHandRing2.sx";
connectAttr "HIKState2SK1.LeftHandRing2Sy" "Character1_LeftHandRing2.sy";
connectAttr "HIKState2SK1.LeftHandRing2Sz" "Character1_LeftHandRing2.sz";
connectAttr "HIKState2SK1.LeftHandRing2Tx" "Character1_LeftHandRing2.tx";
connectAttr "HIKState2SK1.LeftHandRing2Ty" "Character1_LeftHandRing2.ty";
connectAttr "HIKState2SK1.LeftHandRing2Tz" "Character1_LeftHandRing2.tz";
connectAttr "HIKState2SK1.LeftHandRing2Rx" "Character1_LeftHandRing2.rx";
connectAttr "HIKState2SK1.LeftHandRing2Ry" "Character1_LeftHandRing2.ry";
connectAttr "HIKState2SK1.LeftHandRing2Rz" "Character1_LeftHandRing2.rz";
connectAttr "Character1_LeftHandRing2.s" "Character1_LeftHandRing3.is";
connectAttr "HIKState2SK1.LeftHandRing3Sx" "Character1_LeftHandRing3.sx";
connectAttr "HIKState2SK1.LeftHandRing3Sy" "Character1_LeftHandRing3.sy";
connectAttr "HIKState2SK1.LeftHandRing3Sz" "Character1_LeftHandRing3.sz";
connectAttr "HIKState2SK1.LeftHandRing3Tx" "Character1_LeftHandRing3.tx";
connectAttr "HIKState2SK1.LeftHandRing3Ty" "Character1_LeftHandRing3.ty";
connectAttr "HIKState2SK1.LeftHandRing3Tz" "Character1_LeftHandRing3.tz";
connectAttr "HIKState2SK1.LeftHandRing3Rx" "Character1_LeftHandRing3.rx";
connectAttr "HIKState2SK1.LeftHandRing3Ry" "Character1_LeftHandRing3.ry";
connectAttr "HIKState2SK1.LeftHandRing3Rz" "Character1_LeftHandRing3.rz";
connectAttr "Character1_LeftHandRing3.s" "Character1_LeftHandRing4.is";
connectAttr "HIKState2SK1.LeftHandRing4Tx" "Character1_LeftHandRing4.tx";
connectAttr "HIKState2SK1.LeftHandRing4Ty" "Character1_LeftHandRing4.ty";
connectAttr "HIKState2SK1.LeftHandRing4Tz" "Character1_LeftHandRing4.tz";
connectAttr "HIKState2SK1.LeftHandRing4Rx" "Character1_LeftHandRing4.rx";
connectAttr "HIKState2SK1.LeftHandRing4Ry" "Character1_LeftHandRing4.ry";
connectAttr "HIKState2SK1.LeftHandRing4Rz" "Character1_LeftHandRing4.rz";
connectAttr "HIKState2SK1.LeftHandRing4Sx" "Character1_LeftHandRing4.sx";
connectAttr "HIKState2SK1.LeftHandRing4Sy" "Character1_LeftHandRing4.sy";
connectAttr "HIKState2SK1.LeftHandRing4Sz" "Character1_LeftHandRing4.sz";
connectAttr "Character1_LeftHand.s" "Character1_LeftHandPinky1.is";
connectAttr "HIKState2SK1.LeftHandPinky1Sx" "Character1_LeftHandPinky1.sx";
connectAttr "HIKState2SK1.LeftHandPinky1Sy" "Character1_LeftHandPinky1.sy";
connectAttr "HIKState2SK1.LeftHandPinky1Sz" "Character1_LeftHandPinky1.sz";
connectAttr "HIKState2SK1.LeftHandPinky1Tx" "Character1_LeftHandPinky1.tx";
connectAttr "HIKState2SK1.LeftHandPinky1Ty" "Character1_LeftHandPinky1.ty";
connectAttr "HIKState2SK1.LeftHandPinky1Tz" "Character1_LeftHandPinky1.tz";
connectAttr "HIKState2SK1.LeftHandPinky1Rx" "Character1_LeftHandPinky1.rx";
connectAttr "HIKState2SK1.LeftHandPinky1Ry" "Character1_LeftHandPinky1.ry";
connectAttr "HIKState2SK1.LeftHandPinky1Rz" "Character1_LeftHandPinky1.rz";
connectAttr "Character1_LeftHandPinky1.s" "Character1_LeftHandPinky2.is";
connectAttr "HIKState2SK1.LeftHandPinky2Sx" "Character1_LeftHandPinky2.sx";
connectAttr "HIKState2SK1.LeftHandPinky2Sy" "Character1_LeftHandPinky2.sy";
connectAttr "HIKState2SK1.LeftHandPinky2Sz" "Character1_LeftHandPinky2.sz";
connectAttr "HIKState2SK1.LeftHandPinky2Tx" "Character1_LeftHandPinky2.tx";
connectAttr "HIKState2SK1.LeftHandPinky2Ty" "Character1_LeftHandPinky2.ty";
connectAttr "HIKState2SK1.LeftHandPinky2Tz" "Character1_LeftHandPinky2.tz";
connectAttr "HIKState2SK1.LeftHandPinky2Rx" "Character1_LeftHandPinky2.rx";
connectAttr "HIKState2SK1.LeftHandPinky2Ry" "Character1_LeftHandPinky2.ry";
connectAttr "HIKState2SK1.LeftHandPinky2Rz" "Character1_LeftHandPinky2.rz";
connectAttr "Character1_LeftHandPinky2.s" "Character1_LeftHandPinky3.is";
connectAttr "HIKState2SK1.LeftHandPinky3Sx" "Character1_LeftHandPinky3.sx";
connectAttr "HIKState2SK1.LeftHandPinky3Sy" "Character1_LeftHandPinky3.sy";
connectAttr "HIKState2SK1.LeftHandPinky3Sz" "Character1_LeftHandPinky3.sz";
connectAttr "HIKState2SK1.LeftHandPinky3Tx" "Character1_LeftHandPinky3.tx";
connectAttr "HIKState2SK1.LeftHandPinky3Ty" "Character1_LeftHandPinky3.ty";
connectAttr "HIKState2SK1.LeftHandPinky3Tz" "Character1_LeftHandPinky3.tz";
connectAttr "HIKState2SK1.LeftHandPinky3Rx" "Character1_LeftHandPinky3.rx";
connectAttr "HIKState2SK1.LeftHandPinky3Ry" "Character1_LeftHandPinky3.ry";
connectAttr "HIKState2SK1.LeftHandPinky3Rz" "Character1_LeftHandPinky3.rz";
connectAttr "Character1_LeftHandPinky3.s" "Character1_LeftHandPinky4.is";
connectAttr "HIKState2SK1.LeftHandPinky4Tx" "Character1_LeftHandPinky4.tx";
connectAttr "HIKState2SK1.LeftHandPinky4Ty" "Character1_LeftHandPinky4.ty";
connectAttr "HIKState2SK1.LeftHandPinky4Tz" "Character1_LeftHandPinky4.tz";
connectAttr "HIKState2SK1.LeftHandPinky4Rx" "Character1_LeftHandPinky4.rx";
connectAttr "HIKState2SK1.LeftHandPinky4Ry" "Character1_LeftHandPinky4.ry";
connectAttr "HIKState2SK1.LeftHandPinky4Rz" "Character1_LeftHandPinky4.rz";
connectAttr "HIKState2SK1.LeftHandPinky4Sx" "Character1_LeftHandPinky4.sx";
connectAttr "HIKState2SK1.LeftHandPinky4Sy" "Character1_LeftHandPinky4.sy";
connectAttr "HIKState2SK1.LeftHandPinky4Sz" "Character1_LeftHandPinky4.sz";
connectAttr "groupId26.id" "L_clavShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "L_clavShape.iog.og[0].gco";
connectAttr "Character1_Spine2.s" "Character1_RightShoulder.is";
connectAttr "HIKState2SK1.RightShoulderSx" "Character1_RightShoulder.sx";
connectAttr "HIKState2SK1.RightShoulderSy" "Character1_RightShoulder.sy";
connectAttr "HIKState2SK1.RightShoulderSz" "Character1_RightShoulder.sz";
connectAttr "HIKState2SK1.RightShoulderTx" "Character1_RightShoulder.tx";
connectAttr "HIKState2SK1.RightShoulderTy" "Character1_RightShoulder.ty";
connectAttr "HIKState2SK1.RightShoulderTz" "Character1_RightShoulder.tz";
connectAttr "HIKState2SK1.RightShoulderRx" "Character1_RightShoulder.rx";
connectAttr "HIKState2SK1.RightShoulderRy" "Character1_RightShoulder.ry";
connectAttr "HIKState2SK1.RightShoulderRz" "Character1_RightShoulder.rz";
connectAttr "Character1_RightShoulder.s" "Character1_RightArm.is";
connectAttr "HIKState2SK1.RightArmSx" "Character1_RightArm.sx";
connectAttr "HIKState2SK1.RightArmSy" "Character1_RightArm.sy";
connectAttr "HIKState2SK1.RightArmSz" "Character1_RightArm.sz";
connectAttr "HIKState2SK1.RightArmTx" "Character1_RightArm.tx";
connectAttr "HIKState2SK1.RightArmTy" "Character1_RightArm.ty";
connectAttr "HIKState2SK1.RightArmTz" "Character1_RightArm.tz";
connectAttr "HIKState2SK1.RightArmRx" "Character1_RightArm.rx";
connectAttr "HIKState2SK1.RightArmRy" "Character1_RightArm.ry";
connectAttr "HIKState2SK1.RightArmRz" "Character1_RightArm.rz";
connectAttr "Character1_RightArm.s" "Character1_RightForeArm.is";
connectAttr "HIKState2SK1.RightForeArmSx" "Character1_RightForeArm.sx";
connectAttr "HIKState2SK1.RightForeArmSy" "Character1_RightForeArm.sy";
connectAttr "HIKState2SK1.RightForeArmSz" "Character1_RightForeArm.sz";
connectAttr "HIKState2SK1.RightForeArmTx" "Character1_RightForeArm.tx";
connectAttr "HIKState2SK1.RightForeArmTy" "Character1_RightForeArm.ty";
connectAttr "HIKState2SK1.RightForeArmTz" "Character1_RightForeArm.tz";
connectAttr "HIKState2SK1.RightForeArmRx" "Character1_RightForeArm.rx";
connectAttr "HIKState2SK1.RightForeArmRy" "Character1_RightForeArm.ry";
connectAttr "HIKState2SK1.RightForeArmRz" "Character1_RightForeArm.rz";
connectAttr "Character1_RightForeArm.s" "Character1_RightHand.is";
connectAttr "HIKState2SK1.RightHandSx" "Character1_RightHand.sx";
connectAttr "HIKState2SK1.RightHandSy" "Character1_RightHand.sy";
connectAttr "HIKState2SK1.RightHandSz" "Character1_RightHand.sz";
connectAttr "HIKState2SK1.RightHandTx" "Character1_RightHand.tx";
connectAttr "HIKState2SK1.RightHandTy" "Character1_RightHand.ty";
connectAttr "HIKState2SK1.RightHandTz" "Character1_RightHand.tz";
connectAttr "HIKState2SK1.RightHandRx" "Character1_RightHand.rx";
connectAttr "HIKState2SK1.RightHandRy" "Character1_RightHand.ry";
connectAttr "HIKState2SK1.RightHandRz" "Character1_RightHand.rz";
connectAttr "Character1_RightHand.s" "Character1_RightHandThumb1.is";
connectAttr "HIKState2SK1.RightHandThumb1Sx" "Character1_RightHandThumb1.sx";
connectAttr "HIKState2SK1.RightHandThumb1Sy" "Character1_RightHandThumb1.sy";
connectAttr "HIKState2SK1.RightHandThumb1Sz" "Character1_RightHandThumb1.sz";
connectAttr "HIKState2SK1.RightHandThumb1Tx" "Character1_RightHandThumb1.tx";
connectAttr "HIKState2SK1.RightHandThumb1Ty" "Character1_RightHandThumb1.ty";
connectAttr "HIKState2SK1.RightHandThumb1Tz" "Character1_RightHandThumb1.tz";
connectAttr "HIKState2SK1.RightHandThumb1Rx" "Character1_RightHandThumb1.rx";
connectAttr "HIKState2SK1.RightHandThumb1Ry" "Character1_RightHandThumb1.ry";
connectAttr "HIKState2SK1.RightHandThumb1Rz" "Character1_RightHandThumb1.rz";
connectAttr "Character1_RightHandThumb1.s" "Character1_RightHandThumb2.is";
connectAttr "HIKState2SK1.RightHandThumb2Sx" "Character1_RightHandThumb2.sx";
connectAttr "HIKState2SK1.RightHandThumb2Sy" "Character1_RightHandThumb2.sy";
connectAttr "HIKState2SK1.RightHandThumb2Sz" "Character1_RightHandThumb2.sz";
connectAttr "HIKState2SK1.RightHandThumb2Tx" "Character1_RightHandThumb2.tx";
connectAttr "HIKState2SK1.RightHandThumb2Ty" "Character1_RightHandThumb2.ty";
connectAttr "HIKState2SK1.RightHandThumb2Tz" "Character1_RightHandThumb2.tz";
connectAttr "HIKState2SK1.RightHandThumb2Rx" "Character1_RightHandThumb2.rx";
connectAttr "HIKState2SK1.RightHandThumb2Ry" "Character1_RightHandThumb2.ry";
connectAttr "HIKState2SK1.RightHandThumb2Rz" "Character1_RightHandThumb2.rz";
connectAttr "Character1_RightHandThumb2.s" "Character1_RightHandThumb3.is";
connectAttr "HIKState2SK1.RightHandThumb3Sx" "Character1_RightHandThumb3.sx";
connectAttr "HIKState2SK1.RightHandThumb3Sy" "Character1_RightHandThumb3.sy";
connectAttr "HIKState2SK1.RightHandThumb3Sz" "Character1_RightHandThumb3.sz";
connectAttr "HIKState2SK1.RightHandThumb3Tx" "Character1_RightHandThumb3.tx";
connectAttr "HIKState2SK1.RightHandThumb3Ty" "Character1_RightHandThumb3.ty";
connectAttr "HIKState2SK1.RightHandThumb3Tz" "Character1_RightHandThumb3.tz";
connectAttr "HIKState2SK1.RightHandThumb3Rx" "Character1_RightHandThumb3.rx";
connectAttr "HIKState2SK1.RightHandThumb3Ry" "Character1_RightHandThumb3.ry";
connectAttr "HIKState2SK1.RightHandThumb3Rz" "Character1_RightHandThumb3.rz";
connectAttr "Character1_RightHandThumb3.s" "Character1_RightHandThumb4.is";
connectAttr "HIKState2SK1.RightHandThumb4Tx" "Character1_RightHandThumb4.tx";
connectAttr "HIKState2SK1.RightHandThumb4Ty" "Character1_RightHandThumb4.ty";
connectAttr "HIKState2SK1.RightHandThumb4Tz" "Character1_RightHandThumb4.tz";
connectAttr "HIKState2SK1.RightHandThumb4Rx" "Character1_RightHandThumb4.rx";
connectAttr "HIKState2SK1.RightHandThumb4Ry" "Character1_RightHandThumb4.ry";
connectAttr "HIKState2SK1.RightHandThumb4Rz" "Character1_RightHandThumb4.rz";
connectAttr "HIKState2SK1.RightHandThumb4Sx" "Character1_RightHandThumb4.sx";
connectAttr "HIKState2SK1.RightHandThumb4Sy" "Character1_RightHandThumb4.sy";
connectAttr "HIKState2SK1.RightHandThumb4Sz" "Character1_RightHandThumb4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandIndex1.is";
connectAttr "HIKState2SK1.RightHandIndex1Sx" "Character1_RightHandIndex1.sx";
connectAttr "HIKState2SK1.RightHandIndex1Sy" "Character1_RightHandIndex1.sy";
connectAttr "HIKState2SK1.RightHandIndex1Sz" "Character1_RightHandIndex1.sz";
connectAttr "HIKState2SK1.RightHandIndex1Tx" "Character1_RightHandIndex1.tx";
connectAttr "HIKState2SK1.RightHandIndex1Ty" "Character1_RightHandIndex1.ty";
connectAttr "HIKState2SK1.RightHandIndex1Tz" "Character1_RightHandIndex1.tz";
connectAttr "HIKState2SK1.RightHandIndex1Rx" "Character1_RightHandIndex1.rx";
connectAttr "HIKState2SK1.RightHandIndex1Ry" "Character1_RightHandIndex1.ry";
connectAttr "HIKState2SK1.RightHandIndex1Rz" "Character1_RightHandIndex1.rz";
connectAttr "Character1_RightHandIndex1.s" "Character1_RightHandIndex2.is";
connectAttr "HIKState2SK1.RightHandIndex2Sx" "Character1_RightHandIndex2.sx";
connectAttr "HIKState2SK1.RightHandIndex2Sy" "Character1_RightHandIndex2.sy";
connectAttr "HIKState2SK1.RightHandIndex2Sz" "Character1_RightHandIndex2.sz";
connectAttr "HIKState2SK1.RightHandIndex2Tx" "Character1_RightHandIndex2.tx";
connectAttr "HIKState2SK1.RightHandIndex2Ty" "Character1_RightHandIndex2.ty";
connectAttr "HIKState2SK1.RightHandIndex2Tz" "Character1_RightHandIndex2.tz";
connectAttr "HIKState2SK1.RightHandIndex2Rx" "Character1_RightHandIndex2.rx";
connectAttr "HIKState2SK1.RightHandIndex2Ry" "Character1_RightHandIndex2.ry";
connectAttr "HIKState2SK1.RightHandIndex2Rz" "Character1_RightHandIndex2.rz";
connectAttr "Character1_RightHandIndex2.s" "Character1_RightHandIndex3.is";
connectAttr "HIKState2SK1.RightHandIndex3Sx" "Character1_RightHandIndex3.sx";
connectAttr "HIKState2SK1.RightHandIndex3Sy" "Character1_RightHandIndex3.sy";
connectAttr "HIKState2SK1.RightHandIndex3Sz" "Character1_RightHandIndex3.sz";
connectAttr "HIKState2SK1.RightHandIndex3Tx" "Character1_RightHandIndex3.tx";
connectAttr "HIKState2SK1.RightHandIndex3Ty" "Character1_RightHandIndex3.ty";
connectAttr "HIKState2SK1.RightHandIndex3Tz" "Character1_RightHandIndex3.tz";
connectAttr "HIKState2SK1.RightHandIndex3Rx" "Character1_RightHandIndex3.rx";
connectAttr "HIKState2SK1.RightHandIndex3Ry" "Character1_RightHandIndex3.ry";
connectAttr "HIKState2SK1.RightHandIndex3Rz" "Character1_RightHandIndex3.rz";
connectAttr "Character1_RightHandIndex3.s" "Character1_RightHandIndex4.is";
connectAttr "HIKState2SK1.RightHandIndex4Tx" "Character1_RightHandIndex4.tx";
connectAttr "HIKState2SK1.RightHandIndex4Ty" "Character1_RightHandIndex4.ty";
connectAttr "HIKState2SK1.RightHandIndex4Tz" "Character1_RightHandIndex4.tz";
connectAttr "HIKState2SK1.RightHandIndex4Rx" "Character1_RightHandIndex4.rx";
connectAttr "HIKState2SK1.RightHandIndex4Ry" "Character1_RightHandIndex4.ry";
connectAttr "HIKState2SK1.RightHandIndex4Rz" "Character1_RightHandIndex4.rz";
connectAttr "HIKState2SK1.RightHandIndex4Sx" "Character1_RightHandIndex4.sx";
connectAttr "HIKState2SK1.RightHandIndex4Sy" "Character1_RightHandIndex4.sy";
connectAttr "HIKState2SK1.RightHandIndex4Sz" "Character1_RightHandIndex4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandMiddle1.is";
connectAttr "HIKState2SK1.RightHandMiddle1Sx" "Character1_RightHandMiddle1.sx";
connectAttr "HIKState2SK1.RightHandMiddle1Sy" "Character1_RightHandMiddle1.sy";
connectAttr "HIKState2SK1.RightHandMiddle1Sz" "Character1_RightHandMiddle1.sz";
connectAttr "HIKState2SK1.RightHandMiddle1Tx" "Character1_RightHandMiddle1.tx";
connectAttr "HIKState2SK1.RightHandMiddle1Ty" "Character1_RightHandMiddle1.ty";
connectAttr "HIKState2SK1.RightHandMiddle1Tz" "Character1_RightHandMiddle1.tz";
connectAttr "HIKState2SK1.RightHandMiddle1Rx" "Character1_RightHandMiddle1.rx";
connectAttr "HIKState2SK1.RightHandMiddle1Ry" "Character1_RightHandMiddle1.ry";
connectAttr "HIKState2SK1.RightHandMiddle1Rz" "Character1_RightHandMiddle1.rz";
connectAttr "Character1_RightHandMiddle1.s" "Character1_RightHandMiddle2.is";
connectAttr "HIKState2SK1.RightHandMiddle2Sx" "Character1_RightHandMiddle2.sx";
connectAttr "HIKState2SK1.RightHandMiddle2Sy" "Character1_RightHandMiddle2.sy";
connectAttr "HIKState2SK1.RightHandMiddle2Sz" "Character1_RightHandMiddle2.sz";
connectAttr "HIKState2SK1.RightHandMiddle2Tx" "Character1_RightHandMiddle2.tx";
connectAttr "HIKState2SK1.RightHandMiddle2Ty" "Character1_RightHandMiddle2.ty";
connectAttr "HIKState2SK1.RightHandMiddle2Tz" "Character1_RightHandMiddle2.tz";
connectAttr "HIKState2SK1.RightHandMiddle2Rx" "Character1_RightHandMiddle2.rx";
connectAttr "HIKState2SK1.RightHandMiddle2Ry" "Character1_RightHandMiddle2.ry";
connectAttr "HIKState2SK1.RightHandMiddle2Rz" "Character1_RightHandMiddle2.rz";
connectAttr "Character1_RightHandMiddle2.s" "Character1_RightHandMiddle3.is";
connectAttr "HIKState2SK1.RightHandMiddle3Sx" "Character1_RightHandMiddle3.sx";
connectAttr "HIKState2SK1.RightHandMiddle3Sy" "Character1_RightHandMiddle3.sy";
connectAttr "HIKState2SK1.RightHandMiddle3Sz" "Character1_RightHandMiddle3.sz";
connectAttr "HIKState2SK1.RightHandMiddle3Tx" "Character1_RightHandMiddle3.tx";
connectAttr "HIKState2SK1.RightHandMiddle3Ty" "Character1_RightHandMiddle3.ty";
connectAttr "HIKState2SK1.RightHandMiddle3Tz" "Character1_RightHandMiddle3.tz";
connectAttr "HIKState2SK1.RightHandMiddle3Rx" "Character1_RightHandMiddle3.rx";
connectAttr "HIKState2SK1.RightHandMiddle3Ry" "Character1_RightHandMiddle3.ry";
connectAttr "HIKState2SK1.RightHandMiddle3Rz" "Character1_RightHandMiddle3.rz";
connectAttr "Character1_RightHandMiddle3.s" "Character1_RightHandMiddle4.is";
connectAttr "HIKState2SK1.RightHandMiddle4Tx" "Character1_RightHandMiddle4.tx";
connectAttr "HIKState2SK1.RightHandMiddle4Ty" "Character1_RightHandMiddle4.ty";
connectAttr "HIKState2SK1.RightHandMiddle4Tz" "Character1_RightHandMiddle4.tz";
connectAttr "HIKState2SK1.RightHandMiddle4Rx" "Character1_RightHandMiddle4.rx";
connectAttr "HIKState2SK1.RightHandMiddle4Ry" "Character1_RightHandMiddle4.ry";
connectAttr "HIKState2SK1.RightHandMiddle4Rz" "Character1_RightHandMiddle4.rz";
connectAttr "HIKState2SK1.RightHandMiddle4Sx" "Character1_RightHandMiddle4.sx";
connectAttr "HIKState2SK1.RightHandMiddle4Sy" "Character1_RightHandMiddle4.sy";
connectAttr "HIKState2SK1.RightHandMiddle4Sz" "Character1_RightHandMiddle4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandRing1.is";
connectAttr "HIKState2SK1.RightHandRing1Sx" "Character1_RightHandRing1.sx";
connectAttr "HIKState2SK1.RightHandRing1Sy" "Character1_RightHandRing1.sy";
connectAttr "HIKState2SK1.RightHandRing1Sz" "Character1_RightHandRing1.sz";
connectAttr "HIKState2SK1.RightHandRing1Tx" "Character1_RightHandRing1.tx";
connectAttr "HIKState2SK1.RightHandRing1Ty" "Character1_RightHandRing1.ty";
connectAttr "HIKState2SK1.RightHandRing1Tz" "Character1_RightHandRing1.tz";
connectAttr "HIKState2SK1.RightHandRing1Rx" "Character1_RightHandRing1.rx";
connectAttr "HIKState2SK1.RightHandRing1Ry" "Character1_RightHandRing1.ry";
connectAttr "HIKState2SK1.RightHandRing1Rz" "Character1_RightHandRing1.rz";
connectAttr "Character1_RightHandRing1.s" "Character1_RightHandRing2.is";
connectAttr "HIKState2SK1.RightHandRing2Sx" "Character1_RightHandRing2.sx";
connectAttr "HIKState2SK1.RightHandRing2Sy" "Character1_RightHandRing2.sy";
connectAttr "HIKState2SK1.RightHandRing2Sz" "Character1_RightHandRing2.sz";
connectAttr "HIKState2SK1.RightHandRing2Tx" "Character1_RightHandRing2.tx";
connectAttr "HIKState2SK1.RightHandRing2Ty" "Character1_RightHandRing2.ty";
connectAttr "HIKState2SK1.RightHandRing2Tz" "Character1_RightHandRing2.tz";
connectAttr "HIKState2SK1.RightHandRing2Rx" "Character1_RightHandRing2.rx";
connectAttr "HIKState2SK1.RightHandRing2Ry" "Character1_RightHandRing2.ry";
connectAttr "HIKState2SK1.RightHandRing2Rz" "Character1_RightHandRing2.rz";
connectAttr "Character1_RightHandRing2.s" "Character1_RightHandRing3.is";
connectAttr "HIKState2SK1.RightHandRing3Sx" "Character1_RightHandRing3.sx";
connectAttr "HIKState2SK1.RightHandRing3Sy" "Character1_RightHandRing3.sy";
connectAttr "HIKState2SK1.RightHandRing3Sz" "Character1_RightHandRing3.sz";
connectAttr "HIKState2SK1.RightHandRing3Tx" "Character1_RightHandRing3.tx";
connectAttr "HIKState2SK1.RightHandRing3Ty" "Character1_RightHandRing3.ty";
connectAttr "HIKState2SK1.RightHandRing3Tz" "Character1_RightHandRing3.tz";
connectAttr "HIKState2SK1.RightHandRing3Rx" "Character1_RightHandRing3.rx";
connectAttr "HIKState2SK1.RightHandRing3Ry" "Character1_RightHandRing3.ry";
connectAttr "HIKState2SK1.RightHandRing3Rz" "Character1_RightHandRing3.rz";
connectAttr "Character1_RightHandRing3.s" "Character1_RightHandRing4.is";
connectAttr "HIKState2SK1.RightHandRing4Tx" "Character1_RightHandRing4.tx";
connectAttr "HIKState2SK1.RightHandRing4Ty" "Character1_RightHandRing4.ty";
connectAttr "HIKState2SK1.RightHandRing4Tz" "Character1_RightHandRing4.tz";
connectAttr "HIKState2SK1.RightHandRing4Rx" "Character1_RightHandRing4.rx";
connectAttr "HIKState2SK1.RightHandRing4Ry" "Character1_RightHandRing4.ry";
connectAttr "HIKState2SK1.RightHandRing4Rz" "Character1_RightHandRing4.rz";
connectAttr "HIKState2SK1.RightHandRing4Sx" "Character1_RightHandRing4.sx";
connectAttr "HIKState2SK1.RightHandRing4Sy" "Character1_RightHandRing4.sy";
connectAttr "HIKState2SK1.RightHandRing4Sz" "Character1_RightHandRing4.sz";
connectAttr "Character1_RightHand.s" "Character1_RightHandPinky1.is";
connectAttr "HIKState2SK1.RightHandPinky1Sx" "Character1_RightHandPinky1.sx";
connectAttr "HIKState2SK1.RightHandPinky1Sy" "Character1_RightHandPinky1.sy";
connectAttr "HIKState2SK1.RightHandPinky1Sz" "Character1_RightHandPinky1.sz";
connectAttr "HIKState2SK1.RightHandPinky1Tx" "Character1_RightHandPinky1.tx";
connectAttr "HIKState2SK1.RightHandPinky1Ty" "Character1_RightHandPinky1.ty";
connectAttr "HIKState2SK1.RightHandPinky1Tz" "Character1_RightHandPinky1.tz";
connectAttr "HIKState2SK1.RightHandPinky1Rx" "Character1_RightHandPinky1.rx";
connectAttr "HIKState2SK1.RightHandPinky1Ry" "Character1_RightHandPinky1.ry";
connectAttr "HIKState2SK1.RightHandPinky1Rz" "Character1_RightHandPinky1.rz";
connectAttr "Character1_RightHandPinky1.s" "Character1_RightHandPinky2.is";
connectAttr "HIKState2SK1.RightHandPinky2Sx" "Character1_RightHandPinky2.sx";
connectAttr "HIKState2SK1.RightHandPinky2Sy" "Character1_RightHandPinky2.sy";
connectAttr "HIKState2SK1.RightHandPinky2Sz" "Character1_RightHandPinky2.sz";
connectAttr "HIKState2SK1.RightHandPinky2Tx" "Character1_RightHandPinky2.tx";
connectAttr "HIKState2SK1.RightHandPinky2Ty" "Character1_RightHandPinky2.ty";
connectAttr "HIKState2SK1.RightHandPinky2Tz" "Character1_RightHandPinky2.tz";
connectAttr "HIKState2SK1.RightHandPinky2Rx" "Character1_RightHandPinky2.rx";
connectAttr "HIKState2SK1.RightHandPinky2Ry" "Character1_RightHandPinky2.ry";
connectAttr "HIKState2SK1.RightHandPinky2Rz" "Character1_RightHandPinky2.rz";
connectAttr "Character1_RightHandPinky2.s" "Character1_RightHandPinky3.is";
connectAttr "HIKState2SK1.RightHandPinky3Sx" "Character1_RightHandPinky3.sx";
connectAttr "HIKState2SK1.RightHandPinky3Sy" "Character1_RightHandPinky3.sy";
connectAttr "HIKState2SK1.RightHandPinky3Sz" "Character1_RightHandPinky3.sz";
connectAttr "HIKState2SK1.RightHandPinky3Tx" "Character1_RightHandPinky3.tx";
connectAttr "HIKState2SK1.RightHandPinky3Ty" "Character1_RightHandPinky3.ty";
connectAttr "HIKState2SK1.RightHandPinky3Tz" "Character1_RightHandPinky3.tz";
connectAttr "HIKState2SK1.RightHandPinky3Rx" "Character1_RightHandPinky3.rx";
connectAttr "HIKState2SK1.RightHandPinky3Ry" "Character1_RightHandPinky3.ry";
connectAttr "HIKState2SK1.RightHandPinky3Rz" "Character1_RightHandPinky3.rz";
connectAttr "Character1_RightHandPinky3.s" "Character1_RightHandPinky4.is";
connectAttr "HIKState2SK1.RightHandPinky4Tx" "Character1_RightHandPinky4.tx";
connectAttr "HIKState2SK1.RightHandPinky4Ty" "Character1_RightHandPinky4.ty";
connectAttr "HIKState2SK1.RightHandPinky4Tz" "Character1_RightHandPinky4.tz";
connectAttr "HIKState2SK1.RightHandPinky4Rx" "Character1_RightHandPinky4.rx";
connectAttr "HIKState2SK1.RightHandPinky4Ry" "Character1_RightHandPinky4.ry";
connectAttr "HIKState2SK1.RightHandPinky4Rz" "Character1_RightHandPinky4.rz";
connectAttr "HIKState2SK1.RightHandPinky4Sx" "Character1_RightHandPinky4.sx";
connectAttr "HIKState2SK1.RightHandPinky4Sy" "Character1_RightHandPinky4.sy";
connectAttr "HIKState2SK1.RightHandPinky4Sz" "Character1_RightHandPinky4.sz";
connectAttr "groupId6.id" "R_clavShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "R_clavShape.iog.og[0].gco";
connectAttr "Character1_Spine2.s" "Character1_Neck.is";
connectAttr "HIKState2SK1.NeckSx" "Character1_Neck.sx";
connectAttr "HIKState2SK1.NeckSy" "Character1_Neck.sy";
connectAttr "HIKState2SK1.NeckSz" "Character1_Neck.sz";
connectAttr "HIKState2SK1.NeckTx" "Character1_Neck.tx";
connectAttr "HIKState2SK1.NeckTy" "Character1_Neck.ty";
connectAttr "HIKState2SK1.NeckTz" "Character1_Neck.tz";
connectAttr "HIKState2SK1.NeckRx" "Character1_Neck.rx";
connectAttr "HIKState2SK1.NeckRy" "Character1_Neck.ry";
connectAttr "HIKState2SK1.NeckRz" "Character1_Neck.rz";
connectAttr "Character1_Neck.s" "Character1_Head.is";
connectAttr "HIKState2SK1.HeadTx" "Character1_Head.tx";
connectAttr "HIKState2SK1.HeadTy" "Character1_Head.ty";
connectAttr "HIKState2SK1.HeadTz" "Character1_Head.tz";
connectAttr "HIKState2SK1.HeadRx" "Character1_Head.rx";
connectAttr "HIKState2SK1.HeadRy" "Character1_Head.ry";
connectAttr "HIKState2SK1.HeadRz" "Character1_Head.rz";
connectAttr "HIKState2SK1.HeadSx" "Character1_Head.sx";
connectAttr "HIKState2SK1.HeadSy" "Character1_Head.sy";
connectAttr "HIKState2SK1.HeadSz" "Character1_Head.sz";
connectAttr "groupId22.id" "shoulderShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "shoulderShape.iog.og[0].gco";
connectAttr "groupId23.id" "sternumShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "sternumShape.iog.og[0].gco";
connectAttr "groupId25.id" "bellyShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "bellyShape.iog.og[0].gco";
connectAttr "groupId24.id" "hipsShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "hipsShape.iog.og[0].gco";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftWristEffectorGXM[0]" "Character1_Ctrl_LeftWristEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftWristEffectorGXM[0]" "Character1_Ctrl_LeftWristEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightWristEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightWristEffectorGXM[0]" "Character1_Ctrl_RightWristEffector.agx"
		;
connectAttr "HIKState2Effector2.RightWristEffectorGXM[0]" "Character1_Ctrl_RightWristEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftKneeEffector.uagx";
connectAttr "HIKState2Effector1.LeftKneeEffectorGXM[0]" "Character1_Ctrl_LeftKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftKneeEffectorGXM[0]" "Character1_Ctrl_LeftKneeEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightKneeEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightKneeEffectorGXM[0]" "Character1_Ctrl_RightKneeEffector.agx"
		;
connectAttr "HIKState2Effector2.RightKneeEffectorGXM[0]" "Character1_Ctrl_RightKneeEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftElbowEffectorGXM[0]" "Character1_Ctrl_LeftElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftElbowEffectorGXM[0]" "Character1_Ctrl_LeftElbowEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightElbowEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightElbowEffectorGXM[0]" "Character1_Ctrl_RightElbowEffector.agx"
		;
connectAttr "HIKState2Effector2.RightElbowEffectorGXM[0]" "Character1_Ctrl_RightElbowEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_ChestOriginEffector.uagx"
		;
connectAttr "HIKState2Effector1.ChestOriginEffectorGXM[0]" "Character1_Ctrl_ChestOriginEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestOriginEffectorGXM[0]" "Character1_Ctrl_ChestOriginEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_ChestEndEffector.uagx";
connectAttr "HIKState2Effector1.ChestEndEffectorGXM[0]" "Character1_Ctrl_ChestEndEffector.agx"
		;
connectAttr "HIKState2Effector2.ChestEndEffectorGXM[0]" "Character1_Ctrl_ChestEndEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftShoulderEffectorGXM[0]" "Character1_Ctrl_LeftShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftShoulderEffectorGXM[0]" "Character1_Ctrl_LeftShoulderEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightShoulderEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightShoulderEffectorGXM[0]" "Character1_Ctrl_RightShoulderEffector.agx"
		;
connectAttr "HIKState2Effector2.RightShoulderEffectorGXM[0]" "Character1_Ctrl_RightShoulderEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_HeadEffector.uagx";
connectAttr "HIKState2Effector1.HeadEffectorGXM[0]" "Character1_Ctrl_HeadEffector.agx"
		;
connectAttr "HIKState2Effector2.HeadEffectorGXM[0]" "Character1_Ctrl_HeadEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandThumbEffectorGXM[0]" "Character1_Ctrl_LeftHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandThumbEffectorGXM[0]" "Character1_Ctrl_LeftHandThumbEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandIndexEffectorGXM[0]" "Character1_Ctrl_LeftHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandIndexEffectorGXM[0]" "Character1_Ctrl_LeftHandIndexEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddleEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandMiddleEffectorGXM[0]" "Character1_Ctrl_LeftHandMiddleEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandMiddleEffectorGXM[0]" "Character1_Ctrl_LeftHandMiddleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRingEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandRingEffectorGXM[0]" "Character1_Ctrl_LeftHandRingEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandRingEffectorGXM[0]" "Character1_Ctrl_LeftHandRingEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinkyEffector.uagx"
		;
connectAttr "HIKState2Effector1.LeftHandPinkyEffectorGXM[0]" "Character1_Ctrl_LeftHandPinkyEffector.agx"
		;
connectAttr "HIKState2Effector2.LeftHandPinkyEffectorGXM[0]" "Character1_Ctrl_LeftHandPinkyEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumbEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandThumbEffectorGXM[0]" "Character1_Ctrl_RightHandThumbEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandThumbEffectorGXM[0]" "Character1_Ctrl_RightHandThumbEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndexEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandIndexEffectorGXM[0]" "Character1_Ctrl_RightHandIndexEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandIndexEffectorGXM[0]" "Character1_Ctrl_RightHandIndexEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddleEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandMiddleEffectorGXM[0]" "Character1_Ctrl_RightHandMiddleEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandMiddleEffectorGXM[0]" "Character1_Ctrl_RightHandMiddleEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRingEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandRingEffectorGXM[0]" "Character1_Ctrl_RightHandRingEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandRingEffectorGXM[0]" "Character1_Ctrl_RightHandRingEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinkyEffector.uagx"
		;
connectAttr "HIKState2Effector1.RightHandPinkyEffectorGXM[0]" "Character1_Ctrl_RightHandPinkyEffector.agx"
		;
connectAttr "HIKState2Effector2.RightHandPinkyEffectorGXM[0]" "Character1_Ctrl_RightHandPinkyEffector.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Hips.uagx";
connectAttr "HIKState2FK1.HipsGX" "Character1_Ctrl_Hips.agx";
connectAttr "HIKState2FK2.HipsGX" "Character1_Ctrl_Hips.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine.uagx";
connectAttr "Character1_Ctrl_Hips.s" "Character1_Ctrl_Spine.is";
connectAttr "HIKState2FK1.SpineGX" "Character1_Ctrl_Spine.agx";
connectAttr "HIKState2FK2.SpineGX" "Character1_Ctrl_Spine.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine1.uagx";
connectAttr "Character1_Ctrl_Spine.s" "Character1_Ctrl_Spine1.is";
connectAttr "HIKState2FK1.Spine1GX" "Character1_Ctrl_Spine1.agx";
connectAttr "HIKState2FK2.Spine1GX" "Character1_Ctrl_Spine1.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Spine2.uagx";
connectAttr "Character1_Ctrl_Spine1.s" "Character1_Ctrl_Spine2.is";
connectAttr "HIKState2FK1.Spine2GX" "Character1_Ctrl_Spine2.agx";
connectAttr "HIKState2FK2.Spine2GX" "Character1_Ctrl_Spine2.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftShoulder.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_LeftShoulder.is";
connectAttr "HIKState2FK1.LeftShoulderGX" "Character1_Ctrl_LeftShoulder.agx";
connectAttr "HIKState2FK2.LeftShoulderGX" "Character1_Ctrl_LeftShoulder.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftArm.uagx";
connectAttr "Character1_Ctrl_LeftShoulder.s" "Character1_Ctrl_LeftArm.is";
connectAttr "HIKState2FK1.LeftArmGX" "Character1_Ctrl_LeftArm.agx";
connectAttr "HIKState2FK2.LeftArmGX" "Character1_Ctrl_LeftArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftForeArm.uagx";
connectAttr "Character1_Ctrl_LeftArm.s" "Character1_Ctrl_LeftForeArm.is";
connectAttr "HIKState2FK1.LeftForeArmGX" "Character1_Ctrl_LeftForeArm.agx";
connectAttr "HIKState2FK2.LeftForeArmGX" "Character1_Ctrl_LeftForeArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHand.uagx";
connectAttr "Character1_Ctrl_LeftForeArm.s" "Character1_Ctrl_LeftHand.is";
connectAttr "HIKState2FK1.LeftHandGX" "Character1_Ctrl_LeftHand.agx";
connectAttr "HIKState2FK2.LeftHandGX" "Character1_Ctrl_LeftHand.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandThumb1.is";
connectAttr "HIKState2FK1.LeftHandThumb1GX" "Character1_Ctrl_LeftHandThumb1.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb1GX" "Character1_Ctrl_LeftHandThumb1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb2.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb1.s" "Character1_Ctrl_LeftHandThumb2.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb2GX" "Character1_Ctrl_LeftHandThumb2.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb2GX" "Character1_Ctrl_LeftHandThumb2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb3.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb2.s" "Character1_Ctrl_LeftHandThumb3.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb3GX" "Character1_Ctrl_LeftHandThumb3.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb3GX" "Character1_Ctrl_LeftHandThumb3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandThumb4.uagx";
connectAttr "Character1_Ctrl_LeftHandThumb3.s" "Character1_Ctrl_LeftHandThumb4.is"
		;
connectAttr "HIKState2FK1.LeftHandThumb4GX" "Character1_Ctrl_LeftHandThumb4.agx"
		;
connectAttr "HIKState2FK2.LeftHandThumb4GX" "Character1_Ctrl_LeftHandThumb4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandIndex1.is";
connectAttr "HIKState2FK1.LeftHandIndex1GX" "Character1_Ctrl_LeftHandIndex1.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex1GX" "Character1_Ctrl_LeftHandIndex1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex2.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex1.s" "Character1_Ctrl_LeftHandIndex2.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex2GX" "Character1_Ctrl_LeftHandIndex2.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex2GX" "Character1_Ctrl_LeftHandIndex2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex3.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex2.s" "Character1_Ctrl_LeftHandIndex3.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex3GX" "Character1_Ctrl_LeftHandIndex3.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex3GX" "Character1_Ctrl_LeftHandIndex3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandIndex4.uagx";
connectAttr "Character1_Ctrl_LeftHandIndex3.s" "Character1_Ctrl_LeftHandIndex4.is"
		;
connectAttr "HIKState2FK1.LeftHandIndex4GX" "Character1_Ctrl_LeftHandIndex4.agx"
		;
connectAttr "HIKState2FK2.LeftHandIndex4GX" "Character1_Ctrl_LeftHandIndex4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandMiddle1.is";
connectAttr "HIKState2FK1.LeftHandMiddle1GX" "Character1_Ctrl_LeftHandMiddle1.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle1GX" "Character1_Ctrl_LeftHandMiddle1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle2.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle1.s" "Character1_Ctrl_LeftHandMiddle2.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle2GX" "Character1_Ctrl_LeftHandMiddle2.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle2GX" "Character1_Ctrl_LeftHandMiddle2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle3.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle2.s" "Character1_Ctrl_LeftHandMiddle3.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle3GX" "Character1_Ctrl_LeftHandMiddle3.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle3GX" "Character1_Ctrl_LeftHandMiddle3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandMiddle4.uagx";
connectAttr "Character1_Ctrl_LeftHandMiddle3.s" "Character1_Ctrl_LeftHandMiddle4.is"
		;
connectAttr "HIKState2FK1.LeftHandMiddle4GX" "Character1_Ctrl_LeftHandMiddle4.agx"
		;
connectAttr "HIKState2FK2.LeftHandMiddle4GX" "Character1_Ctrl_LeftHandMiddle4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandRing1.is";
connectAttr "HIKState2FK1.LeftHandRing1GX" "Character1_Ctrl_LeftHandRing1.agx";
connectAttr "HIKState2FK2.LeftHandRing1GX" "Character1_Ctrl_LeftHandRing1.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing2.uagx";
connectAttr "Character1_Ctrl_LeftHandRing1.s" "Character1_Ctrl_LeftHandRing2.is"
		;
connectAttr "HIKState2FK1.LeftHandRing2GX" "Character1_Ctrl_LeftHandRing2.agx";
connectAttr "HIKState2FK2.LeftHandRing2GX" "Character1_Ctrl_LeftHandRing2.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing3.uagx";
connectAttr "Character1_Ctrl_LeftHandRing2.s" "Character1_Ctrl_LeftHandRing3.is"
		;
connectAttr "HIKState2FK1.LeftHandRing3GX" "Character1_Ctrl_LeftHandRing3.agx";
connectAttr "HIKState2FK2.LeftHandRing3GX" "Character1_Ctrl_LeftHandRing3.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandRing4.uagx";
connectAttr "Character1_Ctrl_LeftHandRing3.s" "Character1_Ctrl_LeftHandRing4.is"
		;
connectAttr "HIKState2FK1.LeftHandRing4GX" "Character1_Ctrl_LeftHandRing4.agx";
connectAttr "HIKState2FK2.LeftHandRing4GX" "Character1_Ctrl_LeftHandRing4.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky1.uagx";
connectAttr "Character1_Ctrl_LeftHand.s" "Character1_Ctrl_LeftHandPinky1.is";
connectAttr "HIKState2FK1.LeftHandPinky1GX" "Character1_Ctrl_LeftHandPinky1.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky1GX" "Character1_Ctrl_LeftHandPinky1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky2.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky1.s" "Character1_Ctrl_LeftHandPinky2.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky2GX" "Character1_Ctrl_LeftHandPinky2.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky2GX" "Character1_Ctrl_LeftHandPinky2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky3.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky2.s" "Character1_Ctrl_LeftHandPinky3.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky3GX" "Character1_Ctrl_LeftHandPinky3.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky3GX" "Character1_Ctrl_LeftHandPinky3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_LeftHandPinky4.uagx";
connectAttr "Character1_Ctrl_LeftHandPinky3.s" "Character1_Ctrl_LeftHandPinky4.is"
		;
connectAttr "HIKState2FK1.LeftHandPinky4GX" "Character1_Ctrl_LeftHandPinky4.agx"
		;
connectAttr "HIKState2FK2.LeftHandPinky4GX" "Character1_Ctrl_LeftHandPinky4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightShoulder.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_RightShoulder.is";
connectAttr "HIKState2FK1.RightShoulderGX" "Character1_Ctrl_RightShoulder.agx";
connectAttr "HIKState2FK2.RightShoulderGX" "Character1_Ctrl_RightShoulder.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightArm.uagx";
connectAttr "Character1_Ctrl_RightShoulder.s" "Character1_Ctrl_RightArm.is";
connectAttr "HIKState2FK1.RightArmGX" "Character1_Ctrl_RightArm.agx";
connectAttr "HIKState2FK2.RightArmGX" "Character1_Ctrl_RightArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightForeArm.uagx";
connectAttr "Character1_Ctrl_RightArm.s" "Character1_Ctrl_RightForeArm.is";
connectAttr "HIKState2FK1.RightForeArmGX" "Character1_Ctrl_RightForeArm.agx";
connectAttr "HIKState2FK2.RightForeArmGX" "Character1_Ctrl_RightForeArm.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHand.uagx";
connectAttr "Character1_Ctrl_RightForeArm.s" "Character1_Ctrl_RightHand.is";
connectAttr "HIKState2FK1.RightHandGX" "Character1_Ctrl_RightHand.agx";
connectAttr "HIKState2FK2.RightHandGX" "Character1_Ctrl_RightHand.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandThumb1.is";
connectAttr "HIKState2FK1.RightHandThumb1GX" "Character1_Ctrl_RightHandThumb1.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb1GX" "Character1_Ctrl_RightHandThumb1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb2.uagx";
connectAttr "Character1_Ctrl_RightHandThumb1.s" "Character1_Ctrl_RightHandThumb2.is"
		;
connectAttr "HIKState2FK1.RightHandThumb2GX" "Character1_Ctrl_RightHandThumb2.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb2GX" "Character1_Ctrl_RightHandThumb2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb3.uagx";
connectAttr "Character1_Ctrl_RightHandThumb2.s" "Character1_Ctrl_RightHandThumb3.is"
		;
connectAttr "HIKState2FK1.RightHandThumb3GX" "Character1_Ctrl_RightHandThumb3.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb3GX" "Character1_Ctrl_RightHandThumb3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandThumb4.uagx";
connectAttr "Character1_Ctrl_RightHandThumb3.s" "Character1_Ctrl_RightHandThumb4.is"
		;
connectAttr "HIKState2FK1.RightHandThumb4GX" "Character1_Ctrl_RightHandThumb4.agx"
		;
connectAttr "HIKState2FK2.RightHandThumb4GX" "Character1_Ctrl_RightHandThumb4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandIndex1.is";
connectAttr "HIKState2FK1.RightHandIndex1GX" "Character1_Ctrl_RightHandIndex1.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex1GX" "Character1_Ctrl_RightHandIndex1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex2.uagx";
connectAttr "Character1_Ctrl_RightHandIndex1.s" "Character1_Ctrl_RightHandIndex2.is"
		;
connectAttr "HIKState2FK1.RightHandIndex2GX" "Character1_Ctrl_RightHandIndex2.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex2GX" "Character1_Ctrl_RightHandIndex2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex3.uagx";
connectAttr "Character1_Ctrl_RightHandIndex2.s" "Character1_Ctrl_RightHandIndex3.is"
		;
connectAttr "HIKState2FK1.RightHandIndex3GX" "Character1_Ctrl_RightHandIndex3.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex3GX" "Character1_Ctrl_RightHandIndex3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandIndex4.uagx";
connectAttr "Character1_Ctrl_RightHandIndex3.s" "Character1_Ctrl_RightHandIndex4.is"
		;
connectAttr "HIKState2FK1.RightHandIndex4GX" "Character1_Ctrl_RightHandIndex4.agx"
		;
connectAttr "HIKState2FK2.RightHandIndex4GX" "Character1_Ctrl_RightHandIndex4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandMiddle1.is";
connectAttr "HIKState2FK1.RightHandMiddle1GX" "Character1_Ctrl_RightHandMiddle1.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle1GX" "Character1_Ctrl_RightHandMiddle1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle2.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle1.s" "Character1_Ctrl_RightHandMiddle2.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle2GX" "Character1_Ctrl_RightHandMiddle2.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle2GX" "Character1_Ctrl_RightHandMiddle2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle3.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle2.s" "Character1_Ctrl_RightHandMiddle3.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle3GX" "Character1_Ctrl_RightHandMiddle3.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle3GX" "Character1_Ctrl_RightHandMiddle3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandMiddle4.uagx";
connectAttr "Character1_Ctrl_RightHandMiddle3.s" "Character1_Ctrl_RightHandMiddle4.is"
		;
connectAttr "HIKState2FK1.RightHandMiddle4GX" "Character1_Ctrl_RightHandMiddle4.agx"
		;
connectAttr "HIKState2FK2.RightHandMiddle4GX" "Character1_Ctrl_RightHandMiddle4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandRing1.is";
connectAttr "HIKState2FK1.RightHandRing1GX" "Character1_Ctrl_RightHandRing1.agx"
		;
connectAttr "HIKState2FK2.RightHandRing1GX" "Character1_Ctrl_RightHandRing1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing2.uagx";
connectAttr "Character1_Ctrl_RightHandRing1.s" "Character1_Ctrl_RightHandRing2.is"
		;
connectAttr "HIKState2FK1.RightHandRing2GX" "Character1_Ctrl_RightHandRing2.agx"
		;
connectAttr "HIKState2FK2.RightHandRing2GX" "Character1_Ctrl_RightHandRing2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing3.uagx";
connectAttr "Character1_Ctrl_RightHandRing2.s" "Character1_Ctrl_RightHandRing3.is"
		;
connectAttr "HIKState2FK1.RightHandRing3GX" "Character1_Ctrl_RightHandRing3.agx"
		;
connectAttr "HIKState2FK2.RightHandRing3GX" "Character1_Ctrl_RightHandRing3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandRing4.uagx";
connectAttr "Character1_Ctrl_RightHandRing3.s" "Character1_Ctrl_RightHandRing4.is"
		;
connectAttr "HIKState2FK1.RightHandRing4GX" "Character1_Ctrl_RightHandRing4.agx"
		;
connectAttr "HIKState2FK2.RightHandRing4GX" "Character1_Ctrl_RightHandRing4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky1.uagx";
connectAttr "Character1_Ctrl_RightHand.s" "Character1_Ctrl_RightHandPinky1.is";
connectAttr "HIKState2FK1.RightHandPinky1GX" "Character1_Ctrl_RightHandPinky1.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky1GX" "Character1_Ctrl_RightHandPinky1.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky2.uagx";
connectAttr "Character1_Ctrl_RightHandPinky1.s" "Character1_Ctrl_RightHandPinky2.is"
		;
connectAttr "HIKState2FK1.RightHandPinky2GX" "Character1_Ctrl_RightHandPinky2.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky2GX" "Character1_Ctrl_RightHandPinky2.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky3.uagx";
connectAttr "Character1_Ctrl_RightHandPinky2.s" "Character1_Ctrl_RightHandPinky3.is"
		;
connectAttr "HIKState2FK1.RightHandPinky3GX" "Character1_Ctrl_RightHandPinky3.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky3GX" "Character1_Ctrl_RightHandPinky3.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_RightHandPinky4.uagx";
connectAttr "Character1_Ctrl_RightHandPinky3.s" "Character1_Ctrl_RightHandPinky4.is"
		;
connectAttr "HIKState2FK1.RightHandPinky4GX" "Character1_Ctrl_RightHandPinky4.agx"
		;
connectAttr "HIKState2FK2.RightHandPinky4GX" "Character1_Ctrl_RightHandPinky4.atx"
		;
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Neck.uagx";
connectAttr "Character1_Ctrl_Spine2.s" "Character1_Ctrl_Neck.is";
connectAttr "HIKState2FK1.NeckGX" "Character1_Ctrl_Neck.agx";
connectAttr "HIKState2FK2.NeckGX" "Character1_Ctrl_Neck.atx";
connectAttr "Character1_ControlRig.rao" "Character1_Ctrl_Head.uagx";
connectAttr "Character1_Ctrl_Neck.s" "Character1_Ctrl_Head.is";
connectAttr "HIKState2FK1.HeadGX" "Character1_Ctrl_Head.agx";
connectAttr "HIKState2FK2.HeadGX" "Character1_Ctrl_Head.atx";
connectAttr ":frontShape.msg" "imagePlaneShape3.ltc";
connectAttr "polyExtrudeFace2.out" "pCylinderShape1.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "HIKproperties1.msg" "Character1.propertyState";
connectAttr "HIKSkeletonGeneratorNode1.CharacterNode" "Character1.SkeletonGenerator"
		;
connectAttr "Character1_Reference.ch" "Character1.Reference";
connectAttr "Character1_Hips.ch" "Character1.Hips";
connectAttr "Character1_Spine.ch" "Character1.Spine";
connectAttr "Character1_LeftArm.ch" "Character1.LeftArm";
connectAttr "Character1_LeftForeArm.ch" "Character1.LeftForeArm";
connectAttr "Character1_LeftHand.ch" "Character1.LeftHand";
connectAttr "Character1_RightArm.ch" "Character1.RightArm";
connectAttr "Character1_RightForeArm.ch" "Character1.RightForeArm";
connectAttr "Character1_RightHand.ch" "Character1.RightHand";
connectAttr "Character1_Head.ch" "Character1.Head";
connectAttr "Character1_LeftShoulder.ch" "Character1.LeftShoulder";
connectAttr "Character1_RightShoulder.ch" "Character1.RightShoulder";
connectAttr "Character1_Neck.ch" "Character1.Neck";
connectAttr "Character1_Spine1.ch" "Character1.Spine1";
connectAttr "Character1_Spine2.ch" "Character1.Spine2";
connectAttr "Character1_LeftHandThumb1.ch" "Character1.LeftHandThumb1";
connectAttr "Character1_LeftHandThumb2.ch" "Character1.LeftHandThumb2";
connectAttr "Character1_LeftHandThumb3.ch" "Character1.LeftHandThumb3";
connectAttr "Character1_LeftHandThumb4.ch" "Character1.LeftHandThumb4";
connectAttr "Character1_LeftHandIndex1.ch" "Character1.LeftHandIndex1";
connectAttr "Character1_LeftHandIndex2.ch" "Character1.LeftHandIndex2";
connectAttr "Character1_LeftHandIndex3.ch" "Character1.LeftHandIndex3";
connectAttr "Character1_LeftHandIndex4.ch" "Character1.LeftHandIndex4";
connectAttr "Character1_LeftHandMiddle1.ch" "Character1.LeftHandMiddle1";
connectAttr "Character1_LeftHandMiddle2.ch" "Character1.LeftHandMiddle2";
connectAttr "Character1_LeftHandMiddle3.ch" "Character1.LeftHandMiddle3";
connectAttr "Character1_LeftHandMiddle4.ch" "Character1.LeftHandMiddle4";
connectAttr "Character1_LeftHandRing1.ch" "Character1.LeftHandRing1";
connectAttr "Character1_LeftHandRing2.ch" "Character1.LeftHandRing2";
connectAttr "Character1_LeftHandRing3.ch" "Character1.LeftHandRing3";
connectAttr "Character1_LeftHandRing4.ch" "Character1.LeftHandRing4";
connectAttr "Character1_LeftHandPinky1.ch" "Character1.LeftHandPinky1";
connectAttr "Character1_LeftHandPinky2.ch" "Character1.LeftHandPinky2";
connectAttr "Character1_LeftHandPinky3.ch" "Character1.LeftHandPinky3";
connectAttr "Character1_LeftHandPinky4.ch" "Character1.LeftHandPinky4";
connectAttr "Character1_RightHandThumb1.ch" "Character1.RightHandThumb1";
connectAttr "Character1_RightHandThumb2.ch" "Character1.RightHandThumb2";
connectAttr "Character1_RightHandThumb3.ch" "Character1.RightHandThumb3";
connectAttr "Character1_RightHandThumb4.ch" "Character1.RightHandThumb4";
connectAttr "Character1_RightHandIndex1.ch" "Character1.RightHandIndex1";
connectAttr "Character1_RightHandIndex2.ch" "Character1.RightHandIndex2";
connectAttr "Character1_RightHandIndex3.ch" "Character1.RightHandIndex3";
connectAttr "Character1_RightHandIndex4.ch" "Character1.RightHandIndex4";
connectAttr "Character1_RightHandMiddle1.ch" "Character1.RightHandMiddle1";
connectAttr "Character1_RightHandMiddle2.ch" "Character1.RightHandMiddle2";
connectAttr "Character1_RightHandMiddle3.ch" "Character1.RightHandMiddle3";
connectAttr "Character1_RightHandMiddle4.ch" "Character1.RightHandMiddle4";
connectAttr "Character1_RightHandRing1.ch" "Character1.RightHandRing1";
connectAttr "Character1_RightHandRing2.ch" "Character1.RightHandRing2";
connectAttr "Character1_RightHandRing3.ch" "Character1.RightHandRing3";
connectAttr "Character1_RightHandRing4.ch" "Character1.RightHandRing4";
connectAttr "Character1_RightHandPinky1.ch" "Character1.RightHandPinky1";
connectAttr "Character1_RightHandPinky2.ch" "Character1.RightHandPinky2";
connectAttr "Character1_RightHandPinky3.ch" "Character1.RightHandPinky3";
connectAttr "Character1_RightHandPinky4.ch" "Character1.RightHandPinky4";
connectAttr "Character1_Ctrl_LeftWristEffector.pull" "HIKproperties1.CtrlChestPullLeftHand"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pull" "HIKproperties1.CtrlChestPullRightHand"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pull" "HIKproperties1.CtrlPullLeftKnee"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.stiffness" "HIKproperties1.CtrlResistLeftKnee"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pull" "HIKproperties1.CtrlPullRightKnee"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.stiffness" "HIKproperties1.CtrlResistRightKnee"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pull" "HIKproperties1.CtrlPullLeftElbow"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.stiffness" "HIKproperties1.CtrlResistLeftElbow"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pull" "HIKproperties1.CtrlPullRightElbow"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.stiffness" "HIKproperties1.CtrlResistRightElbow"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.stiffness" "HIKproperties1.ParamCtrlSpineStiffness"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pull" "HIKproperties1.CtrlResistChestPosition"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.stiffness" "HIKproperties1.CtrlResistChestOrientation"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.stiffness" "HIKproperties1.CtrlResistLeftCollar"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.stiffness" "HIKproperties1.CtrlResistRightCollar"
		;
connectAttr "Character1_Ctrl_HeadEffector.pull" "HIKproperties1.CtrlPullHead";
connectAttr "Character1_Ctrl_HeadEffector.stiffness" "HIKproperties1.ParamCtrlNeckStiffness"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKSolverNode1.InputPropertySetState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKSolverNode1.InputCharacterDefinition"
		;
connectAttr "HIKFK2State1.OutputCharacterState" "HIKSolverNode1.InputCharacterState"
		;
connectAttr "HIKPinning2State1.OutputEffectorState" "HIKSolverNode1.InputEffectorState"
		;
connectAttr "HIKPinning2State1.OutputEffectorStateNoAux" "HIKSolverNode1.InputEffectorStateNoAux"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2SK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2SK1.InputCharacterState"
		;
connectAttr "Character1_Hips.pm" "HIKState2SK1.HipsPGX";
connectAttr "Character1_Hips.jo" "HIKState2SK1.HipsPreR";
connectAttr "Character1_Hips.ssc" "HIKState2SK1.HipsSC";
connectAttr "Character1_Hips.is" "HIKState2SK1.HipsIS";
connectAttr "Character1_Hips.ro" "HIKState2SK1.HipsROrder";
connectAttr "Character1_Hips.ra" "HIKState2SK1.HipsPostR";
connectAttr "Character1_Spine.pm" "HIKState2SK1.SpinePGX";
connectAttr "Character1_Spine.jo" "HIKState2SK1.SpinePreR";
connectAttr "Character1_Spine.ssc" "HIKState2SK1.SpineSC";
connectAttr "Character1_Spine.is" "HIKState2SK1.SpineIS";
connectAttr "Character1_Spine.ro" "HIKState2SK1.SpineROrder";
connectAttr "Character1_Spine.ra" "HIKState2SK1.SpinePostR";
connectAttr "Character1_LeftArm.pm" "HIKState2SK1.LeftArmPGX";
connectAttr "Character1_LeftArm.jo" "HIKState2SK1.LeftArmPreR";
connectAttr "Character1_LeftArm.ssc" "HIKState2SK1.LeftArmSC";
connectAttr "Character1_LeftArm.is" "HIKState2SK1.LeftArmIS";
connectAttr "Character1_LeftArm.ro" "HIKState2SK1.LeftArmROrder";
connectAttr "Character1_LeftArm.ra" "HIKState2SK1.LeftArmPostR";
connectAttr "Character1_LeftForeArm.pm" "HIKState2SK1.LeftForeArmPGX";
connectAttr "Character1_LeftForeArm.jo" "HIKState2SK1.LeftForeArmPreR";
connectAttr "Character1_LeftForeArm.ssc" "HIKState2SK1.LeftForeArmSC";
connectAttr "Character1_LeftForeArm.is" "HIKState2SK1.LeftForeArmIS";
connectAttr "Character1_LeftForeArm.ro" "HIKState2SK1.LeftForeArmROrder";
connectAttr "Character1_LeftForeArm.ra" "HIKState2SK1.LeftForeArmPostR";
connectAttr "Character1_LeftHand.pm" "HIKState2SK1.LeftHandPGX";
connectAttr "Character1_LeftHand.jo" "HIKState2SK1.LeftHandPreR";
connectAttr "Character1_LeftHand.ssc" "HIKState2SK1.LeftHandSC";
connectAttr "Character1_LeftHand.is" "HIKState2SK1.LeftHandIS";
connectAttr "Character1_LeftHand.ro" "HIKState2SK1.LeftHandROrder";
connectAttr "Character1_LeftHand.ra" "HIKState2SK1.LeftHandPostR";
connectAttr "Character1_RightArm.pm" "HIKState2SK1.RightArmPGX";
connectAttr "Character1_RightArm.jo" "HIKState2SK1.RightArmPreR";
connectAttr "Character1_RightArm.ssc" "HIKState2SK1.RightArmSC";
connectAttr "Character1_RightArm.is" "HIKState2SK1.RightArmIS";
connectAttr "Character1_RightArm.ro" "HIKState2SK1.RightArmROrder";
connectAttr "Character1_RightArm.ra" "HIKState2SK1.RightArmPostR";
connectAttr "Character1_RightForeArm.pm" "HIKState2SK1.RightForeArmPGX";
connectAttr "Character1_RightForeArm.jo" "HIKState2SK1.RightForeArmPreR";
connectAttr "Character1_RightForeArm.ssc" "HIKState2SK1.RightForeArmSC";
connectAttr "Character1_RightForeArm.is" "HIKState2SK1.RightForeArmIS";
connectAttr "Character1_RightForeArm.ro" "HIKState2SK1.RightForeArmROrder";
connectAttr "Character1_RightForeArm.ra" "HIKState2SK1.RightForeArmPostR";
connectAttr "Character1_RightHand.pm" "HIKState2SK1.RightHandPGX";
connectAttr "Character1_RightHand.jo" "HIKState2SK1.RightHandPreR";
connectAttr "Character1_RightHand.ssc" "HIKState2SK1.RightHandSC";
connectAttr "Character1_RightHand.is" "HIKState2SK1.RightHandIS";
connectAttr "Character1_RightHand.ro" "HIKState2SK1.RightHandROrder";
connectAttr "Character1_RightHand.ra" "HIKState2SK1.RightHandPostR";
connectAttr "Character1_Head.pm" "HIKState2SK1.HeadPGX";
connectAttr "Character1_Head.jo" "HIKState2SK1.HeadPreR";
connectAttr "Character1_Head.ssc" "HIKState2SK1.HeadSC";
connectAttr "Character1_Head.is" "HIKState2SK1.HeadIS";
connectAttr "Character1_Head.ro" "HIKState2SK1.HeadROrder";
connectAttr "Character1_Head.ra" "HIKState2SK1.HeadPostR";
connectAttr "Character1_LeftShoulder.pm" "HIKState2SK1.LeftShoulderPGX";
connectAttr "Character1_LeftShoulder.jo" "HIKState2SK1.LeftShoulderPreR";
connectAttr "Character1_LeftShoulder.ssc" "HIKState2SK1.LeftShoulderSC";
connectAttr "Character1_LeftShoulder.is" "HIKState2SK1.LeftShoulderIS";
connectAttr "Character1_LeftShoulder.ro" "HIKState2SK1.LeftShoulderROrder";
connectAttr "Character1_LeftShoulder.ra" "HIKState2SK1.LeftShoulderPostR";
connectAttr "Character1_RightShoulder.pm" "HIKState2SK1.RightShoulderPGX";
connectAttr "Character1_RightShoulder.jo" "HIKState2SK1.RightShoulderPreR";
connectAttr "Character1_RightShoulder.ssc" "HIKState2SK1.RightShoulderSC";
connectAttr "Character1_RightShoulder.is" "HIKState2SK1.RightShoulderIS";
connectAttr "Character1_RightShoulder.ro" "HIKState2SK1.RightShoulderROrder";
connectAttr "Character1_RightShoulder.ra" "HIKState2SK1.RightShoulderPostR";
connectAttr "Character1_Neck.pm" "HIKState2SK1.NeckPGX";
connectAttr "Character1_Neck.jo" "HIKState2SK1.NeckPreR";
connectAttr "Character1_Neck.ssc" "HIKState2SK1.NeckSC";
connectAttr "Character1_Neck.is" "HIKState2SK1.NeckIS";
connectAttr "Character1_Neck.ro" "HIKState2SK1.NeckROrder";
connectAttr "Character1_Neck.ra" "HIKState2SK1.NeckPostR";
connectAttr "Character1_Spine1.pm" "HIKState2SK1.Spine1PGX";
connectAttr "Character1_Spine1.jo" "HIKState2SK1.Spine1PreR";
connectAttr "Character1_Spine1.ssc" "HIKState2SK1.Spine1SC";
connectAttr "Character1_Spine1.is" "HIKState2SK1.Spine1IS";
connectAttr "Character1_Spine1.ro" "HIKState2SK1.Spine1ROrder";
connectAttr "Character1_Spine1.ra" "HIKState2SK1.Spine1PostR";
connectAttr "Character1_Spine2.pm" "HIKState2SK1.Spine2PGX";
connectAttr "Character1_Spine2.jo" "HIKState2SK1.Spine2PreR";
connectAttr "Character1_Spine2.ssc" "HIKState2SK1.Spine2SC";
connectAttr "Character1_Spine2.is" "HIKState2SK1.Spine2IS";
connectAttr "Character1_Spine2.ro" "HIKState2SK1.Spine2ROrder";
connectAttr "Character1_Spine2.ra" "HIKState2SK1.Spine2PostR";
connectAttr "Character1_LeftHandThumb1.pm" "HIKState2SK1.LeftHandThumb1PGX";
connectAttr "Character1_LeftHandThumb1.jo" "HIKState2SK1.LeftHandThumb1PreR";
connectAttr "Character1_LeftHandThumb1.ssc" "HIKState2SK1.LeftHandThumb1SC";
connectAttr "Character1_LeftHandThumb1.is" "HIKState2SK1.LeftHandThumb1IS";
connectAttr "Character1_LeftHandThumb1.ro" "HIKState2SK1.LeftHandThumb1ROrder";
connectAttr "Character1_LeftHandThumb1.ra" "HIKState2SK1.LeftHandThumb1PostR";
connectAttr "Character1_LeftHandThumb2.pm" "HIKState2SK1.LeftHandThumb2PGX";
connectAttr "Character1_LeftHandThumb2.jo" "HIKState2SK1.LeftHandThumb2PreR";
connectAttr "Character1_LeftHandThumb2.ssc" "HIKState2SK1.LeftHandThumb2SC";
connectAttr "Character1_LeftHandThumb2.is" "HIKState2SK1.LeftHandThumb2IS";
connectAttr "Character1_LeftHandThumb2.ro" "HIKState2SK1.LeftHandThumb2ROrder";
connectAttr "Character1_LeftHandThumb2.ra" "HIKState2SK1.LeftHandThumb2PostR";
connectAttr "Character1_LeftHandThumb3.pm" "HIKState2SK1.LeftHandThumb3PGX";
connectAttr "Character1_LeftHandThumb3.jo" "HIKState2SK1.LeftHandThumb3PreR";
connectAttr "Character1_LeftHandThumb3.ssc" "HIKState2SK1.LeftHandThumb3SC";
connectAttr "Character1_LeftHandThumb3.is" "HIKState2SK1.LeftHandThumb3IS";
connectAttr "Character1_LeftHandThumb3.ro" "HIKState2SK1.LeftHandThumb3ROrder";
connectAttr "Character1_LeftHandThumb3.ra" "HIKState2SK1.LeftHandThumb3PostR";
connectAttr "Character1_LeftHandThumb4.pm" "HIKState2SK1.LeftHandThumb4PGX";
connectAttr "Character1_LeftHandThumb4.jo" "HIKState2SK1.LeftHandThumb4PreR";
connectAttr "Character1_LeftHandThumb4.ssc" "HIKState2SK1.LeftHandThumb4SC";
connectAttr "Character1_LeftHandThumb4.is" "HIKState2SK1.LeftHandThumb4IS";
connectAttr "Character1_LeftHandThumb4.ro" "HIKState2SK1.LeftHandThumb4ROrder";
connectAttr "Character1_LeftHandThumb4.ra" "HIKState2SK1.LeftHandThumb4PostR";
connectAttr "Character1_LeftHandIndex1.pm" "HIKState2SK1.LeftHandIndex1PGX";
connectAttr "Character1_LeftHandIndex1.jo" "HIKState2SK1.LeftHandIndex1PreR";
connectAttr "Character1_LeftHandIndex1.ssc" "HIKState2SK1.LeftHandIndex1SC";
connectAttr "Character1_LeftHandIndex1.is" "HIKState2SK1.LeftHandIndex1IS";
connectAttr "Character1_LeftHandIndex1.ro" "HIKState2SK1.LeftHandIndex1ROrder";
connectAttr "Character1_LeftHandIndex1.ra" "HIKState2SK1.LeftHandIndex1PostR";
connectAttr "Character1_LeftHandIndex2.pm" "HIKState2SK1.LeftHandIndex2PGX";
connectAttr "Character1_LeftHandIndex2.jo" "HIKState2SK1.LeftHandIndex2PreR";
connectAttr "Character1_LeftHandIndex2.ssc" "HIKState2SK1.LeftHandIndex2SC";
connectAttr "Character1_LeftHandIndex2.is" "HIKState2SK1.LeftHandIndex2IS";
connectAttr "Character1_LeftHandIndex2.ro" "HIKState2SK1.LeftHandIndex2ROrder";
connectAttr "Character1_LeftHandIndex2.ra" "HIKState2SK1.LeftHandIndex2PostR";
connectAttr "Character1_LeftHandIndex3.pm" "HIKState2SK1.LeftHandIndex3PGX";
connectAttr "Character1_LeftHandIndex3.jo" "HIKState2SK1.LeftHandIndex3PreR";
connectAttr "Character1_LeftHandIndex3.ssc" "HIKState2SK1.LeftHandIndex3SC";
connectAttr "Character1_LeftHandIndex3.is" "HIKState2SK1.LeftHandIndex3IS";
connectAttr "Character1_LeftHandIndex3.ro" "HIKState2SK1.LeftHandIndex3ROrder";
connectAttr "Character1_LeftHandIndex3.ra" "HIKState2SK1.LeftHandIndex3PostR";
connectAttr "Character1_LeftHandIndex4.pm" "HIKState2SK1.LeftHandIndex4PGX";
connectAttr "Character1_LeftHandIndex4.jo" "HIKState2SK1.LeftHandIndex4PreR";
connectAttr "Character1_LeftHandIndex4.ssc" "HIKState2SK1.LeftHandIndex4SC";
connectAttr "Character1_LeftHandIndex4.is" "HIKState2SK1.LeftHandIndex4IS";
connectAttr "Character1_LeftHandIndex4.ro" "HIKState2SK1.LeftHandIndex4ROrder";
connectAttr "Character1_LeftHandIndex4.ra" "HIKState2SK1.LeftHandIndex4PostR";
connectAttr "Character1_LeftHandMiddle1.pm" "HIKState2SK1.LeftHandMiddle1PGX";
connectAttr "Character1_LeftHandMiddle1.jo" "HIKState2SK1.LeftHandMiddle1PreR";
connectAttr "Character1_LeftHandMiddle1.ssc" "HIKState2SK1.LeftHandMiddle1SC";
connectAttr "Character1_LeftHandMiddle1.is" "HIKState2SK1.LeftHandMiddle1IS";
connectAttr "Character1_LeftHandMiddle1.ro" "HIKState2SK1.LeftHandMiddle1ROrder"
		;
connectAttr "Character1_LeftHandMiddle1.ra" "HIKState2SK1.LeftHandMiddle1PostR";
connectAttr "Character1_LeftHandMiddle2.pm" "HIKState2SK1.LeftHandMiddle2PGX";
connectAttr "Character1_LeftHandMiddle2.jo" "HIKState2SK1.LeftHandMiddle2PreR";
connectAttr "Character1_LeftHandMiddle2.ssc" "HIKState2SK1.LeftHandMiddle2SC";
connectAttr "Character1_LeftHandMiddle2.is" "HIKState2SK1.LeftHandMiddle2IS";
connectAttr "Character1_LeftHandMiddle2.ro" "HIKState2SK1.LeftHandMiddle2ROrder"
		;
connectAttr "Character1_LeftHandMiddle2.ra" "HIKState2SK1.LeftHandMiddle2PostR";
connectAttr "Character1_LeftHandMiddle3.pm" "HIKState2SK1.LeftHandMiddle3PGX";
connectAttr "Character1_LeftHandMiddle3.jo" "HIKState2SK1.LeftHandMiddle3PreR";
connectAttr "Character1_LeftHandMiddle3.ssc" "HIKState2SK1.LeftHandMiddle3SC";
connectAttr "Character1_LeftHandMiddle3.is" "HIKState2SK1.LeftHandMiddle3IS";
connectAttr "Character1_LeftHandMiddle3.ro" "HIKState2SK1.LeftHandMiddle3ROrder"
		;
connectAttr "Character1_LeftHandMiddle3.ra" "HIKState2SK1.LeftHandMiddle3PostR";
connectAttr "Character1_LeftHandMiddle4.pm" "HIKState2SK1.LeftHandMiddle4PGX";
connectAttr "Character1_LeftHandMiddle4.jo" "HIKState2SK1.LeftHandMiddle4PreR";
connectAttr "Character1_LeftHandMiddle4.ssc" "HIKState2SK1.LeftHandMiddle4SC";
connectAttr "Character1_LeftHandMiddle4.is" "HIKState2SK1.LeftHandMiddle4IS";
connectAttr "Character1_LeftHandMiddle4.ro" "HIKState2SK1.LeftHandMiddle4ROrder"
		;
connectAttr "Character1_LeftHandMiddle4.ra" "HIKState2SK1.LeftHandMiddle4PostR";
connectAttr "Character1_LeftHandRing1.pm" "HIKState2SK1.LeftHandRing1PGX";
connectAttr "Character1_LeftHandRing1.jo" "HIKState2SK1.LeftHandRing1PreR";
connectAttr "Character1_LeftHandRing1.ssc" "HIKState2SK1.LeftHandRing1SC";
connectAttr "Character1_LeftHandRing1.is" "HIKState2SK1.LeftHandRing1IS";
connectAttr "Character1_LeftHandRing1.ro" "HIKState2SK1.LeftHandRing1ROrder";
connectAttr "Character1_LeftHandRing1.ra" "HIKState2SK1.LeftHandRing1PostR";
connectAttr "Character1_LeftHandRing2.pm" "HIKState2SK1.LeftHandRing2PGX";
connectAttr "Character1_LeftHandRing2.jo" "HIKState2SK1.LeftHandRing2PreR";
connectAttr "Character1_LeftHandRing2.ssc" "HIKState2SK1.LeftHandRing2SC";
connectAttr "Character1_LeftHandRing2.is" "HIKState2SK1.LeftHandRing2IS";
connectAttr "Character1_LeftHandRing2.ro" "HIKState2SK1.LeftHandRing2ROrder";
connectAttr "Character1_LeftHandRing2.ra" "HIKState2SK1.LeftHandRing2PostR";
connectAttr "Character1_LeftHandRing3.pm" "HIKState2SK1.LeftHandRing3PGX";
connectAttr "Character1_LeftHandRing3.jo" "HIKState2SK1.LeftHandRing3PreR";
connectAttr "Character1_LeftHandRing3.ssc" "HIKState2SK1.LeftHandRing3SC";
connectAttr "Character1_LeftHandRing3.is" "HIKState2SK1.LeftHandRing3IS";
connectAttr "Character1_LeftHandRing3.ro" "HIKState2SK1.LeftHandRing3ROrder";
connectAttr "Character1_LeftHandRing3.ra" "HIKState2SK1.LeftHandRing3PostR";
connectAttr "Character1_LeftHandRing4.pm" "HIKState2SK1.LeftHandRing4PGX";
connectAttr "Character1_LeftHandRing4.jo" "HIKState2SK1.LeftHandRing4PreR";
connectAttr "Character1_LeftHandRing4.ssc" "HIKState2SK1.LeftHandRing4SC";
connectAttr "Character1_LeftHandRing4.is" "HIKState2SK1.LeftHandRing4IS";
connectAttr "Character1_LeftHandRing4.ro" "HIKState2SK1.LeftHandRing4ROrder";
connectAttr "Character1_LeftHandRing4.ra" "HIKState2SK1.LeftHandRing4PostR";
connectAttr "Character1_LeftHandPinky1.pm" "HIKState2SK1.LeftHandPinky1PGX";
connectAttr "Character1_LeftHandPinky1.jo" "HIKState2SK1.LeftHandPinky1PreR";
connectAttr "Character1_LeftHandPinky1.ssc" "HIKState2SK1.LeftHandPinky1SC";
connectAttr "Character1_LeftHandPinky1.is" "HIKState2SK1.LeftHandPinky1IS";
connectAttr "Character1_LeftHandPinky1.ro" "HIKState2SK1.LeftHandPinky1ROrder";
connectAttr "Character1_LeftHandPinky1.ra" "HIKState2SK1.LeftHandPinky1PostR";
connectAttr "Character1_LeftHandPinky2.pm" "HIKState2SK1.LeftHandPinky2PGX";
connectAttr "Character1_LeftHandPinky2.jo" "HIKState2SK1.LeftHandPinky2PreR";
connectAttr "Character1_LeftHandPinky2.ssc" "HIKState2SK1.LeftHandPinky2SC";
connectAttr "Character1_LeftHandPinky2.is" "HIKState2SK1.LeftHandPinky2IS";
connectAttr "Character1_LeftHandPinky2.ro" "HIKState2SK1.LeftHandPinky2ROrder";
connectAttr "Character1_LeftHandPinky2.ra" "HIKState2SK1.LeftHandPinky2PostR";
connectAttr "Character1_LeftHandPinky3.pm" "HIKState2SK1.LeftHandPinky3PGX";
connectAttr "Character1_LeftHandPinky3.jo" "HIKState2SK1.LeftHandPinky3PreR";
connectAttr "Character1_LeftHandPinky3.ssc" "HIKState2SK1.LeftHandPinky3SC";
connectAttr "Character1_LeftHandPinky3.is" "HIKState2SK1.LeftHandPinky3IS";
connectAttr "Character1_LeftHandPinky3.ro" "HIKState2SK1.LeftHandPinky3ROrder";
connectAttr "Character1_LeftHandPinky3.ra" "HIKState2SK1.LeftHandPinky3PostR";
connectAttr "Character1_LeftHandPinky4.pm" "HIKState2SK1.LeftHandPinky4PGX";
connectAttr "Character1_LeftHandPinky4.jo" "HIKState2SK1.LeftHandPinky4PreR";
connectAttr "Character1_LeftHandPinky4.ssc" "HIKState2SK1.LeftHandPinky4SC";
connectAttr "Character1_LeftHandPinky4.is" "HIKState2SK1.LeftHandPinky4IS";
connectAttr "Character1_LeftHandPinky4.ro" "HIKState2SK1.LeftHandPinky4ROrder";
connectAttr "Character1_LeftHandPinky4.ra" "HIKState2SK1.LeftHandPinky4PostR";
connectAttr "Character1_RightHandThumb1.pm" "HIKState2SK1.RightHandThumb1PGX";
connectAttr "Character1_RightHandThumb1.jo" "HIKState2SK1.RightHandThumb1PreR";
connectAttr "Character1_RightHandThumb1.ssc" "HIKState2SK1.RightHandThumb1SC";
connectAttr "Character1_RightHandThumb1.is" "HIKState2SK1.RightHandThumb1IS";
connectAttr "Character1_RightHandThumb1.ro" "HIKState2SK1.RightHandThumb1ROrder"
		;
connectAttr "Character1_RightHandThumb1.ra" "HIKState2SK1.RightHandThumb1PostR";
connectAttr "Character1_RightHandThumb2.pm" "HIKState2SK1.RightHandThumb2PGX";
connectAttr "Character1_RightHandThumb2.jo" "HIKState2SK1.RightHandThumb2PreR";
connectAttr "Character1_RightHandThumb2.ssc" "HIKState2SK1.RightHandThumb2SC";
connectAttr "Character1_RightHandThumb2.is" "HIKState2SK1.RightHandThumb2IS";
connectAttr "Character1_RightHandThumb2.ro" "HIKState2SK1.RightHandThumb2ROrder"
		;
connectAttr "Character1_RightHandThumb2.ra" "HIKState2SK1.RightHandThumb2PostR";
connectAttr "Character1_RightHandThumb3.pm" "HIKState2SK1.RightHandThumb3PGX";
connectAttr "Character1_RightHandThumb3.jo" "HIKState2SK1.RightHandThumb3PreR";
connectAttr "Character1_RightHandThumb3.ssc" "HIKState2SK1.RightHandThumb3SC";
connectAttr "Character1_RightHandThumb3.is" "HIKState2SK1.RightHandThumb3IS";
connectAttr "Character1_RightHandThumb3.ro" "HIKState2SK1.RightHandThumb3ROrder"
		;
connectAttr "Character1_RightHandThumb3.ra" "HIKState2SK1.RightHandThumb3PostR";
connectAttr "Character1_RightHandThumb4.pm" "HIKState2SK1.RightHandThumb4PGX";
connectAttr "Character1_RightHandThumb4.jo" "HIKState2SK1.RightHandThumb4PreR";
connectAttr "Character1_RightHandThumb4.ssc" "HIKState2SK1.RightHandThumb4SC";
connectAttr "Character1_RightHandThumb4.is" "HIKState2SK1.RightHandThumb4IS";
connectAttr "Character1_RightHandThumb4.ro" "HIKState2SK1.RightHandThumb4ROrder"
		;
connectAttr "Character1_RightHandThumb4.ra" "HIKState2SK1.RightHandThumb4PostR";
connectAttr "Character1_RightHandIndex1.pm" "HIKState2SK1.RightHandIndex1PGX";
connectAttr "Character1_RightHandIndex1.jo" "HIKState2SK1.RightHandIndex1PreR";
connectAttr "Character1_RightHandIndex1.ssc" "HIKState2SK1.RightHandIndex1SC";
connectAttr "Character1_RightHandIndex1.is" "HIKState2SK1.RightHandIndex1IS";
connectAttr "Character1_RightHandIndex1.ro" "HIKState2SK1.RightHandIndex1ROrder"
		;
connectAttr "Character1_RightHandIndex1.ra" "HIKState2SK1.RightHandIndex1PostR";
connectAttr "Character1_RightHandIndex2.pm" "HIKState2SK1.RightHandIndex2PGX";
connectAttr "Character1_RightHandIndex2.jo" "HIKState2SK1.RightHandIndex2PreR";
connectAttr "Character1_RightHandIndex2.ssc" "HIKState2SK1.RightHandIndex2SC";
connectAttr "Character1_RightHandIndex2.is" "HIKState2SK1.RightHandIndex2IS";
connectAttr "Character1_RightHandIndex2.ro" "HIKState2SK1.RightHandIndex2ROrder"
		;
connectAttr "Character1_RightHandIndex2.ra" "HIKState2SK1.RightHandIndex2PostR";
connectAttr "Character1_RightHandIndex3.pm" "HIKState2SK1.RightHandIndex3PGX";
connectAttr "Character1_RightHandIndex3.jo" "HIKState2SK1.RightHandIndex3PreR";
connectAttr "Character1_RightHandIndex3.ssc" "HIKState2SK1.RightHandIndex3SC";
connectAttr "Character1_RightHandIndex3.is" "HIKState2SK1.RightHandIndex3IS";
connectAttr "Character1_RightHandIndex3.ro" "HIKState2SK1.RightHandIndex3ROrder"
		;
connectAttr "Character1_RightHandIndex3.ra" "HIKState2SK1.RightHandIndex3PostR";
connectAttr "Character1_RightHandIndex4.pm" "HIKState2SK1.RightHandIndex4PGX";
connectAttr "Character1_RightHandIndex4.jo" "HIKState2SK1.RightHandIndex4PreR";
connectAttr "Character1_RightHandIndex4.ssc" "HIKState2SK1.RightHandIndex4SC";
connectAttr "Character1_RightHandIndex4.is" "HIKState2SK1.RightHandIndex4IS";
connectAttr "Character1_RightHandIndex4.ro" "HIKState2SK1.RightHandIndex4ROrder"
		;
connectAttr "Character1_RightHandIndex4.ra" "HIKState2SK1.RightHandIndex4PostR";
connectAttr "Character1_RightHandMiddle1.pm" "HIKState2SK1.RightHandMiddle1PGX";
connectAttr "Character1_RightHandMiddle1.jo" "HIKState2SK1.RightHandMiddle1PreR"
		;
connectAttr "Character1_RightHandMiddle1.ssc" "HIKState2SK1.RightHandMiddle1SC";
connectAttr "Character1_RightHandMiddle1.is" "HIKState2SK1.RightHandMiddle1IS";
connectAttr "Character1_RightHandMiddle1.ro" "HIKState2SK1.RightHandMiddle1ROrder"
		;
connectAttr "Character1_RightHandMiddle1.ra" "HIKState2SK1.RightHandMiddle1PostR"
		;
connectAttr "Character1_RightHandMiddle2.pm" "HIKState2SK1.RightHandMiddle2PGX";
connectAttr "Character1_RightHandMiddle2.jo" "HIKState2SK1.RightHandMiddle2PreR"
		;
connectAttr "Character1_RightHandMiddle2.ssc" "HIKState2SK1.RightHandMiddle2SC";
connectAttr "Character1_RightHandMiddle2.is" "HIKState2SK1.RightHandMiddle2IS";
connectAttr "Character1_RightHandMiddle2.ro" "HIKState2SK1.RightHandMiddle2ROrder"
		;
connectAttr "Character1_RightHandMiddle2.ra" "HIKState2SK1.RightHandMiddle2PostR"
		;
connectAttr "Character1_RightHandMiddle3.pm" "HIKState2SK1.RightHandMiddle3PGX";
connectAttr "Character1_RightHandMiddle3.jo" "HIKState2SK1.RightHandMiddle3PreR"
		;
connectAttr "Character1_RightHandMiddle3.ssc" "HIKState2SK1.RightHandMiddle3SC";
connectAttr "Character1_RightHandMiddle3.is" "HIKState2SK1.RightHandMiddle3IS";
connectAttr "Character1_RightHandMiddle3.ro" "HIKState2SK1.RightHandMiddle3ROrder"
		;
connectAttr "Character1_RightHandMiddle3.ra" "HIKState2SK1.RightHandMiddle3PostR"
		;
connectAttr "Character1_RightHandMiddle4.pm" "HIKState2SK1.RightHandMiddle4PGX";
connectAttr "Character1_RightHandMiddle4.jo" "HIKState2SK1.RightHandMiddle4PreR"
		;
connectAttr "Character1_RightHandMiddle4.ssc" "HIKState2SK1.RightHandMiddle4SC";
connectAttr "Character1_RightHandMiddle4.is" "HIKState2SK1.RightHandMiddle4IS";
connectAttr "Character1_RightHandMiddle4.ro" "HIKState2SK1.RightHandMiddle4ROrder"
		;
connectAttr "Character1_RightHandMiddle4.ra" "HIKState2SK1.RightHandMiddle4PostR"
		;
connectAttr "Character1_RightHandRing1.pm" "HIKState2SK1.RightHandRing1PGX";
connectAttr "Character1_RightHandRing1.jo" "HIKState2SK1.RightHandRing1PreR";
connectAttr "Character1_RightHandRing1.ssc" "HIKState2SK1.RightHandRing1SC";
connectAttr "Character1_RightHandRing1.is" "HIKState2SK1.RightHandRing1IS";
connectAttr "Character1_RightHandRing1.ro" "HIKState2SK1.RightHandRing1ROrder";
connectAttr "Character1_RightHandRing1.ra" "HIKState2SK1.RightHandRing1PostR";
connectAttr "Character1_RightHandRing2.pm" "HIKState2SK1.RightHandRing2PGX";
connectAttr "Character1_RightHandRing2.jo" "HIKState2SK1.RightHandRing2PreR";
connectAttr "Character1_RightHandRing2.ssc" "HIKState2SK1.RightHandRing2SC";
connectAttr "Character1_RightHandRing2.is" "HIKState2SK1.RightHandRing2IS";
connectAttr "Character1_RightHandRing2.ro" "HIKState2SK1.RightHandRing2ROrder";
connectAttr "Character1_RightHandRing2.ra" "HIKState2SK1.RightHandRing2PostR";
connectAttr "Character1_RightHandRing3.pm" "HIKState2SK1.RightHandRing3PGX";
connectAttr "Character1_RightHandRing3.jo" "HIKState2SK1.RightHandRing3PreR";
connectAttr "Character1_RightHandRing3.ssc" "HIKState2SK1.RightHandRing3SC";
connectAttr "Character1_RightHandRing3.is" "HIKState2SK1.RightHandRing3IS";
connectAttr "Character1_RightHandRing3.ro" "HIKState2SK1.RightHandRing3ROrder";
connectAttr "Character1_RightHandRing3.ra" "HIKState2SK1.RightHandRing3PostR";
connectAttr "Character1_RightHandRing4.pm" "HIKState2SK1.RightHandRing4PGX";
connectAttr "Character1_RightHandRing4.jo" "HIKState2SK1.RightHandRing4PreR";
connectAttr "Character1_RightHandRing4.ssc" "HIKState2SK1.RightHandRing4SC";
connectAttr "Character1_RightHandRing4.is" "HIKState2SK1.RightHandRing4IS";
connectAttr "Character1_RightHandRing4.ro" "HIKState2SK1.RightHandRing4ROrder";
connectAttr "Character1_RightHandRing4.ra" "HIKState2SK1.RightHandRing4PostR";
connectAttr "Character1_RightHandPinky1.pm" "HIKState2SK1.RightHandPinky1PGX";
connectAttr "Character1_RightHandPinky1.jo" "HIKState2SK1.RightHandPinky1PreR";
connectAttr "Character1_RightHandPinky1.ssc" "HIKState2SK1.RightHandPinky1SC";
connectAttr "Character1_RightHandPinky1.is" "HIKState2SK1.RightHandPinky1IS";
connectAttr "Character1_RightHandPinky1.ro" "HIKState2SK1.RightHandPinky1ROrder"
		;
connectAttr "Character1_RightHandPinky1.ra" "HIKState2SK1.RightHandPinky1PostR";
connectAttr "Character1_RightHandPinky2.pm" "HIKState2SK1.RightHandPinky2PGX";
connectAttr "Character1_RightHandPinky2.jo" "HIKState2SK1.RightHandPinky2PreR";
connectAttr "Character1_RightHandPinky2.ssc" "HIKState2SK1.RightHandPinky2SC";
connectAttr "Character1_RightHandPinky2.is" "HIKState2SK1.RightHandPinky2IS";
connectAttr "Character1_RightHandPinky2.ro" "HIKState2SK1.RightHandPinky2ROrder"
		;
connectAttr "Character1_RightHandPinky2.ra" "HIKState2SK1.RightHandPinky2PostR";
connectAttr "Character1_RightHandPinky3.pm" "HIKState2SK1.RightHandPinky3PGX";
connectAttr "Character1_RightHandPinky3.jo" "HIKState2SK1.RightHandPinky3PreR";
connectAttr "Character1_RightHandPinky3.ssc" "HIKState2SK1.RightHandPinky3SC";
connectAttr "Character1_RightHandPinky3.is" "HIKState2SK1.RightHandPinky3IS";
connectAttr "Character1_RightHandPinky3.ro" "HIKState2SK1.RightHandPinky3ROrder"
		;
connectAttr "Character1_RightHandPinky3.ra" "HIKState2SK1.RightHandPinky3PostR";
connectAttr "Character1_RightHandPinky4.pm" "HIKState2SK1.RightHandPinky4PGX";
connectAttr "Character1_RightHandPinky4.jo" "HIKState2SK1.RightHandPinky4PreR";
connectAttr "Character1_RightHandPinky4.ssc" "HIKState2SK1.RightHandPinky4SC";
connectAttr "Character1_RightHandPinky4.is" "HIKState2SK1.RightHandPinky4IS";
connectAttr "Character1_RightHandPinky4.ro" "HIKState2SK1.RightHandPinky4ROrder"
		;
connectAttr "Character1_RightHandPinky4.ra" "HIKState2SK1.RightHandPinky4PostR";
connectAttr "Character1_HipsBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_ChestBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftArmBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightArmBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftLegBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightLegBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_HeadBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftHandBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_RightHandBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1_LeftFootBPKG.msg" "Character1_FullBodyKG.dnsm" -na;
connectAttr "Character1.OutputCharacterDefinition" "Character1_ControlRig.HIC";
connectAttr "Character1_Ctrl_Reference.ch" "Character1_ControlRig.Reference";
connectAttr "Character1_Ctrl_Hips.ch" "Character1_ControlRig.Hips";
connectAttr "Character1_Ctrl_Spine.ch" "Character1_ControlRig.Spine";
connectAttr "Character1_Ctrl_LeftArm.ch" "Character1_ControlRig.LeftArm";
connectAttr "Character1_Ctrl_LeftForeArm.ch" "Character1_ControlRig.LeftForeArm"
		;
connectAttr "Character1_Ctrl_LeftHand.ch" "Character1_ControlRig.LeftHand";
connectAttr "Character1_Ctrl_RightArm.ch" "Character1_ControlRig.RightArm";
connectAttr "Character1_Ctrl_RightForeArm.ch" "Character1_ControlRig.RightForeArm"
		;
connectAttr "Character1_Ctrl_RightHand.ch" "Character1_ControlRig.RightHand";
connectAttr "Character1_Ctrl_Head.ch" "Character1_ControlRig.Head";
connectAttr "Character1_Ctrl_LeftShoulder.ch" "Character1_ControlRig.LeftShoulder"
		;
connectAttr "Character1_Ctrl_RightShoulder.ch" "Character1_ControlRig.RightShoulder"
		;
connectAttr "Character1_Ctrl_Neck.ch" "Character1_ControlRig.Neck";
connectAttr "Character1_Ctrl_Spine1.ch" "Character1_ControlRig.Spine1";
connectAttr "Character1_Ctrl_Spine2.ch" "Character1_ControlRig.Spine2";
connectAttr "Character1_Ctrl_LeftHandThumb1.ch" "Character1_ControlRig.LeftHandThumb1"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.ch" "Character1_ControlRig.LeftHandThumb2"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.ch" "Character1_ControlRig.LeftHandThumb3"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.ch" "Character1_ControlRig.LeftHandThumb4"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.ch" "Character1_ControlRig.LeftHandIndex1"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.ch" "Character1_ControlRig.LeftHandIndex2"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.ch" "Character1_ControlRig.LeftHandIndex3"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.ch" "Character1_ControlRig.LeftHandIndex4"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.ch" "Character1_ControlRig.LeftHandMiddle1"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.ch" "Character1_ControlRig.LeftHandMiddle2"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.ch" "Character1_ControlRig.LeftHandMiddle3"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.ch" "Character1_ControlRig.LeftHandMiddle4"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.ch" "Character1_ControlRig.LeftHandRing1"
		;
connectAttr "Character1_Ctrl_LeftHandRing2.ch" "Character1_ControlRig.LeftHandRing2"
		;
connectAttr "Character1_Ctrl_LeftHandRing3.ch" "Character1_ControlRig.LeftHandRing3"
		;
connectAttr "Character1_Ctrl_LeftHandRing4.ch" "Character1_ControlRig.LeftHandRing4"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.ch" "Character1_ControlRig.LeftHandPinky1"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.ch" "Character1_ControlRig.LeftHandPinky2"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.ch" "Character1_ControlRig.LeftHandPinky3"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.ch" "Character1_ControlRig.LeftHandPinky4"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.ch" "Character1_ControlRig.RightHandThumb1"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.ch" "Character1_ControlRig.RightHandThumb2"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.ch" "Character1_ControlRig.RightHandThumb3"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.ch" "Character1_ControlRig.RightHandThumb4"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.ch" "Character1_ControlRig.RightHandIndex1"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.ch" "Character1_ControlRig.RightHandIndex2"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.ch" "Character1_ControlRig.RightHandIndex3"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.ch" "Character1_ControlRig.RightHandIndex4"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.ch" "Character1_ControlRig.RightHandMiddle1"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.ch" "Character1_ControlRig.RightHandMiddle2"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.ch" "Character1_ControlRig.RightHandMiddle3"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.ch" "Character1_ControlRig.RightHandMiddle4"
		;
connectAttr "Character1_Ctrl_RightHandRing1.ch" "Character1_ControlRig.RightHandRing1"
		;
connectAttr "Character1_Ctrl_RightHandRing2.ch" "Character1_ControlRig.RightHandRing2"
		;
connectAttr "Character1_Ctrl_RightHandRing3.ch" "Character1_ControlRig.RightHandRing3"
		;
connectAttr "Character1_Ctrl_RightHandRing4.ch" "Character1_ControlRig.RightHandRing4"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.ch" "Character1_ControlRig.RightHandPinky1"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.ch" "Character1_ControlRig.RightHandPinky2"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.ch" "Character1_ControlRig.RightHandPinky3"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.ch" "Character1_ControlRig.RightHandPinky4"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.ch" "Character1_ControlRig.LeftWristEffector[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.ch" "Character1_ControlRig.RightWristEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.ch" "Character1_ControlRig.LeftKneeEffector[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.ch" "Character1_ControlRig.RightKneeEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.ch" "Character1_ControlRig.LeftElbowEffector[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.ch" "Character1_ControlRig.RightElbowEffector[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.ch" "Character1_ControlRig.ChestOriginEffector[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ch" "Character1_ControlRig.ChestEndEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ch" "Character1_ControlRig.LeftShoulderEffector[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.ch" "Character1_ControlRig.RightShoulderEffector[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.ch" "Character1_ControlRig.HeadEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ch" "Character1_ControlRig.LeftHandThumbEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ch" "Character1_ControlRig.LeftHandIndexEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ch" "Character1_ControlRig.LeftHandMiddleEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ch" "Character1_ControlRig.LeftHandRingEffector[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ch" "Character1_ControlRig.LeftHandPinkyEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ch" "Character1_ControlRig.RightHandThumbEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ch" "Character1_ControlRig.RightHandIndexEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ch" "Character1_ControlRig.RightHandMiddleEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.ch" "Character1_ControlRig.RightHandRingEffector[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ch" "Character1_ControlRig.RightHandPinkyEffector[0]"
		;
connectAttr "HIKproperties1.ra" "Character1_ControlRig.ra";
connectAttr "Character1_HipsBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_ChestBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_LeftArmBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_RightArmBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_LeftLegBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_RightLegBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_HeadBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_LeftHandBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_RightHandBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_LeftFootBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_RightFootBPKG1.msg" "Character1_FullBodyKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.msg" "Character1_FullBodyKG1.act[0]";
connectAttr "Character1_Ctrl_Spine.msg" "Character1_FullBodyKG1.act[7]";
connectAttr "Character1_Ctrl_LeftArm.msg" "Character1_FullBodyKG1.act[8]";
connectAttr "Character1_Ctrl_LeftForeArm.msg" "Character1_FullBodyKG1.act[9]";
connectAttr "Character1_Ctrl_LeftHand.msg" "Character1_FullBodyKG1.act[10]";
connectAttr "Character1_Ctrl_RightArm.msg" "Character1_FullBodyKG1.act[11]";
connectAttr "Character1_Ctrl_RightForeArm.msg" "Character1_FullBodyKG1.act[12]";
connectAttr "Character1_Ctrl_RightHand.msg" "Character1_FullBodyKG1.act[13]";
connectAttr "Character1_Ctrl_Head.msg" "Character1_FullBodyKG1.act[14]";
connectAttr "Character1_Ctrl_LeftShoulder.msg" "Character1_FullBodyKG1.act[17]";
connectAttr "Character1_Ctrl_RightShoulder.msg" "Character1_FullBodyKG1.act[18]"
		;
connectAttr "Character1_Ctrl_Neck.msg" "Character1_FullBodyKG1.act[19]";
connectAttr "Character1_Ctrl_Spine1.msg" "Character1_FullBodyKG1.act[20]";
connectAttr "Character1_Ctrl_Spine2.msg" "Character1_FullBodyKG1.act[21]";
connectAttr "Character1_Ctrl_LeftHandThumb1.msg" "Character1_FullBodyKG1.act[22]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.msg" "Character1_FullBodyKG1.act[23]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.msg" "Character1_FullBodyKG1.act[24]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.msg" "Character1_FullBodyKG1.act[25]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.msg" "Character1_FullBodyKG1.act[26]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.msg" "Character1_FullBodyKG1.act[27]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.msg" "Character1_FullBodyKG1.act[28]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.msg" "Character1_FullBodyKG1.act[29]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.msg" "Character1_FullBodyKG1.act[30]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.msg" "Character1_FullBodyKG1.act[31]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.msg" "Character1_FullBodyKG1.act[32]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.msg" "Character1_FullBodyKG1.act[33]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.msg" "Character1_FullBodyKG1.act[34]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2.msg" "Character1_FullBodyKG1.act[35]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3.msg" "Character1_FullBodyKG1.act[36]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4.msg" "Character1_FullBodyKG1.act[37]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.msg" "Character1_FullBodyKG1.act[38]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.msg" "Character1_FullBodyKG1.act[39]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.msg" "Character1_FullBodyKG1.act[40]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.msg" "Character1_FullBodyKG1.act[41]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.msg" "Character1_FullBodyKG1.act[42]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.msg" "Character1_FullBodyKG1.act[43]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.msg" "Character1_FullBodyKG1.act[44]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.msg" "Character1_FullBodyKG1.act[45]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.msg" "Character1_FullBodyKG1.act[46]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.msg" "Character1_FullBodyKG1.act[47]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.msg" "Character1_FullBodyKG1.act[48]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.msg" "Character1_FullBodyKG1.act[49]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.msg" "Character1_FullBodyKG1.act[50]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.msg" "Character1_FullBodyKG1.act[51]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.msg" "Character1_FullBodyKG1.act[52]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.msg" "Character1_FullBodyKG1.act[53]"
		;
connectAttr "Character1_Ctrl_RightHandRing1.msg" "Character1_FullBodyKG1.act[54]"
		;
connectAttr "Character1_Ctrl_RightHandRing2.msg" "Character1_FullBodyKG1.act[55]"
		;
connectAttr "Character1_Ctrl_RightHandRing3.msg" "Character1_FullBodyKG1.act[56]"
		;
connectAttr "Character1_Ctrl_RightHandRing4.msg" "Character1_FullBodyKG1.act[57]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.msg" "Character1_FullBodyKG1.act[58]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.msg" "Character1_FullBodyKG1.act[59]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.msg" "Character1_FullBodyKG1.act[60]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.msg" "Character1_FullBodyKG1.act[61]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.msg" "Character1_FullBodyKG1.act[65]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.msg" "Character1_FullBodyKG1.act[66]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.msg" "Character1_FullBodyKG1.act[67]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.msg" "Character1_FullBodyKG1.act[68]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.msg" "Character1_FullBodyKG1.act[69]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.msg" "Character1_FullBodyKG1.act[70]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.msg" "Character1_FullBodyKG1.act[71]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.msg" "Character1_FullBodyKG1.act[72]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.msg" "Character1_FullBodyKG1.act[75]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.msg" "Character1_FullBodyKG1.act[76]"
		;
connectAttr "Character1_Ctrl_HeadEffector.msg" "Character1_FullBodyKG1.act[77]";
connectAttr "Character1_Ctrl_LeftHandThumbEffector.msg" "Character1_FullBodyKG1.act[80]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.msg" "Character1_FullBodyKG1.act[81]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.msg" "Character1_FullBodyKG1.act[82]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.msg" "Character1_FullBodyKG1.act[83]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.msg" "Character1_FullBodyKG1.act[84]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.msg" "Character1_FullBodyKG1.act[85]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.msg" "Character1_FullBodyKG1.act[86]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.msg" "Character1_FullBodyKG1.act[87]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.msg" "Character1_FullBodyKG1.act[88]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.msg" "Character1_FullBodyKG1.act[89]"
		;
connectAttr "Character1_Ctrl_Hips.rz" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.ry" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.rx" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.tz" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.ty" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.tx" "Character1_HipsBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Hips.msg" "Character1_HipsBPKG1.act[0]";
connectAttr "Character1_Ctrl_Spine.rz" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine.ry" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine.rx" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.rz" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.ry" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine1.rx" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.rz" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.ry" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Spine2.rx" "Character1_ChestBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.rz" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.ry" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.rx" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.tz" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.ty" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestOriginEffector.tx" "Character1_ChestBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_ChestEndEffector.rz" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ry" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rx" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.tz" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.ty" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_ChestEndEffector.tx" "Character1_ChestBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_Spine.msg" "Character1_ChestBPKG1.act[0]";
connectAttr "Character1_Ctrl_Spine1.msg" "Character1_ChestBPKG1.act[1]";
connectAttr "Character1_Ctrl_Spine2.msg" "Character1_ChestBPKG1.act[2]";
connectAttr "Character1_Ctrl_ChestOriginEffector.msg" "Character1_ChestBPKG1.act[3]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.msg" "Character1_ChestBPKG1.act[4]"
		;
connectAttr "Character1_Ctrl_LeftArm.rz" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftArm.ry" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftArm.rx" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.rz" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.ry" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftForeArm.rx" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.rz" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.ry" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftHand.rx" "Character1_LeftArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_LeftShoulder.rz" "Character1_LeftArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftShoulder.ry" "Character1_LeftArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftShoulder.rx" "Character1_LeftArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftWristEffector.rz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.ry" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.rx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.tz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.ty" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftWristEffector.tx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.rz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.ry" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.rx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.tz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.ty" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftElbowEffector.tx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ry" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.tz" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.ty" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftShoulderEffector.tx" "Character1_LeftArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftArm.msg" "Character1_LeftArmBPKG1.act[0]";
connectAttr "Character1_Ctrl_LeftForeArm.msg" "Character1_LeftArmBPKG1.act[1]";
connectAttr "Character1_Ctrl_LeftHand.msg" "Character1_LeftArmBPKG1.act[2]";
connectAttr "Character1_Ctrl_LeftShoulder.msg" "Character1_LeftArmBPKG1.act[3]";
connectAttr "Character1_Ctrl_LeftWristEffector.msg" "Character1_LeftArmBPKG1.act[4]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.msg" "Character1_LeftArmBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.msg" "Character1_LeftArmBPKG1.act[6]"
		;
connectAttr "Character1_Ctrl_RightArm.rz" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightArm.ry" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightArm.rx" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightForeArm.rz" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightForeArm.ry" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightForeArm.rx" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightHand.rz" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightHand.ry" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightHand.rx" "Character1_RightArmBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_RightShoulder.rz" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightShoulder.ry" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightShoulder.rx" "Character1_RightArmBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_RightWristEffector.rz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.ry" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.rx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.tz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.ty" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightWristEffector.tx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.rz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.ry" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.rx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.tz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.ty" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightElbowEffector.tx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.rz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.ry" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.rx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.tz" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.ty" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightShoulderEffector.tx" "Character1_RightArmBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightArm.msg" "Character1_RightArmBPKG1.act[0]";
connectAttr "Character1_Ctrl_RightForeArm.msg" "Character1_RightArmBPKG1.act[1]"
		;
connectAttr "Character1_Ctrl_RightHand.msg" "Character1_RightArmBPKG1.act[2]";
connectAttr "Character1_Ctrl_RightShoulder.msg" "Character1_RightArmBPKG1.act[3]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.msg" "Character1_RightArmBPKG1.act[4]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.msg" "Character1_RightArmBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.msg" "Character1_RightArmBPKG1.act[6]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.rz" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.ry" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.rx" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.tz" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.ty" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.tx" "Character1_LeftLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftKneeEffector.msg" "Character1_LeftLegBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.rz" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.ry" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.rx" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.tz" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.ty" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.tx" "Character1_RightLegBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightKneeEffector.msg" "Character1_RightLegBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_Head.rz" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Head.ry" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Head.rx" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.rz" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.ry" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Neck.rx" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.rz" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.ry" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.rx" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.tz" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.ty" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_HeadEffector.tx" "Character1_HeadBPKG1.dnsm" -na;
connectAttr "Character1_Ctrl_Head.msg" "Character1_HeadBPKG1.act[0]";
connectAttr "Character1_Ctrl_Neck.msg" "Character1_HeadBPKG1.act[1]";
connectAttr "Character1_Ctrl_HeadEffector.msg" "Character1_HeadBPKG1.act[2]";
connectAttr "Character1_Ctrl_LeftHandThumb1.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb1.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb1.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb2.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb2.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb2.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb3.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb3.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb3.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb4.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb4.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumb4.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex1.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex1.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex1.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex2.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex2.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex2.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex3.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex3.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex3.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex4.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex4.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandIndex4.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandMiddle1.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle1.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle1.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle2.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle3.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddle4.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRing1.rz" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing1.ry" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing1.rx" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.rz" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.ry" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing2.rx" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.rz" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.ry" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing3.rx" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.rz" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.ry" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandRing4.rx" "Character1_LeftHandBPKG1.dnsm" -na
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky1.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky1.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky2.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky2.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky2.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky3.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky3.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky3.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky4.rz" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky4.ry" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandPinky4.rx" "Character1_LeftHandBPKG1.dnsm" 
		-na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.tz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.ty" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.tx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.tz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.ty" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.tx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.tz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.ty" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.tx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.tz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.ty" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandRingEffector.tx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ry" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.tz" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.ty" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.tx" "Character1_LeftHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_LeftHandThumb1.msg" "Character1_LeftHandBPKG1.act[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2.msg" "Character1_LeftHandBPKG1.act[1]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3.msg" "Character1_LeftHandBPKG1.act[2]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb4.msg" "Character1_LeftHandBPKG1.act[3]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1.msg" "Character1_LeftHandBPKG1.act[4]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2.msg" "Character1_LeftHandBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3.msg" "Character1_LeftHandBPKG1.act[6]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex4.msg" "Character1_LeftHandBPKG1.act[7]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1.msg" "Character1_LeftHandBPKG1.act[8]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.msg" "Character1_LeftHandBPKG1.act[9]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.msg" "Character1_LeftHandBPKG1.act[10]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.msg" "Character1_LeftHandBPKG1.act[11]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.msg" "Character1_LeftHandBPKG1.act[12]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2.msg" "Character1_LeftHandBPKG1.act[13]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3.msg" "Character1_LeftHandBPKG1.act[14]"
		;
connectAttr "Character1_Ctrl_LeftHandRing4.msg" "Character1_LeftHandBPKG1.act[15]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1.msg" "Character1_LeftHandBPKG1.act[16]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2.msg" "Character1_LeftHandBPKG1.act[17]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3.msg" "Character1_LeftHandBPKG1.act[18]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky4.msg" "Character1_LeftHandBPKG1.act[19]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.msg" "Character1_LeftHandBPKG1.act[20]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.msg" "Character1_LeftHandBPKG1.act[21]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.msg" "Character1_LeftHandBPKG1.act[22]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.msg" "Character1_LeftHandBPKG1.act[23]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.msg" "Character1_LeftHandBPKG1.act[24]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb2.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb3.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb4.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex1.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex2.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex3.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndex4.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle1.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle2.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle3.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddle4.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing1.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing1.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing1.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing2.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing2.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing2.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing3.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing3.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing3.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing4.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing4.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRing4.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky1.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky1.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky1.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky2.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky3.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinky4.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.tz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.ty" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumbEffector.tx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.tz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.ty" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandIndexEffector.tx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.tz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.ty" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.tx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.tz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.ty" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandRingEffector.tx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ry" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.tz" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.ty" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.tx" "Character1_RightHandBPKG1.dnsm"
		 -na;
connectAttr "Character1_Ctrl_RightHandThumb1.msg" "Character1_RightHandBPKG1.act[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.msg" "Character1_RightHandBPKG1.act[1]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.msg" "Character1_RightHandBPKG1.act[2]"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.msg" "Character1_RightHandBPKG1.act[3]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.msg" "Character1_RightHandBPKG1.act[4]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.msg" "Character1_RightHandBPKG1.act[5]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.msg" "Character1_RightHandBPKG1.act[6]"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.msg" "Character1_RightHandBPKG1.act[7]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.msg" "Character1_RightHandBPKG1.act[8]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.msg" "Character1_RightHandBPKG1.act[9]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.msg" "Character1_RightHandBPKG1.act[10]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.msg" "Character1_RightHandBPKG1.act[11]"
		;
connectAttr "Character1_Ctrl_RightHandRing1.msg" "Character1_RightHandBPKG1.act[12]"
		;
connectAttr "Character1_Ctrl_RightHandRing2.msg" "Character1_RightHandBPKG1.act[13]"
		;
connectAttr "Character1_Ctrl_RightHandRing3.msg" "Character1_RightHandBPKG1.act[14]"
		;
connectAttr "Character1_Ctrl_RightHandRing4.msg" "Character1_RightHandBPKG1.act[15]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1.msg" "Character1_RightHandBPKG1.act[16]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.msg" "Character1_RightHandBPKG1.act[17]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.msg" "Character1_RightHandBPKG1.act[18]"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.msg" "Character1_RightHandBPKG1.act[19]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.msg" "Character1_RightHandBPKG1.act[20]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.msg" "Character1_RightHandBPKG1.act[21]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.msg" "Character1_RightHandBPKG1.act[22]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.msg" "Character1_RightHandBPKG1.act[23]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.msg" "Character1_RightHandBPKG1.act[24]"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKFK2State1.InputCharacterDefinition"
		;
connectAttr "Character1_Ctrl_Reference.wm" "HIKFK2State1.ReferenceGX";
connectAttr "Character1_Ctrl_Hips.wm" "HIKFK2State1.HipsGX";
connectAttr "Character1_Ctrl_Spine.wm" "HIKFK2State1.SpineGX";
connectAttr "Character1_Ctrl_LeftArm.wm" "HIKFK2State1.LeftArmGX";
connectAttr "Character1_Ctrl_LeftForeArm.wm" "HIKFK2State1.LeftForeArmGX";
connectAttr "Character1_Ctrl_LeftHand.wm" "HIKFK2State1.LeftHandGX";
connectAttr "Character1_Ctrl_RightArm.wm" "HIKFK2State1.RightArmGX";
connectAttr "Character1_Ctrl_RightForeArm.wm" "HIKFK2State1.RightForeArmGX";
connectAttr "Character1_Ctrl_RightHand.wm" "HIKFK2State1.RightHandGX";
connectAttr "Character1_Ctrl_Head.wm" "HIKFK2State1.HeadGX";
connectAttr "Character1_Ctrl_LeftShoulder.wm" "HIKFK2State1.LeftShoulderGX";
connectAttr "Character1_Ctrl_RightShoulder.wm" "HIKFK2State1.RightShoulderGX";
connectAttr "Character1_Ctrl_Neck.wm" "HIKFK2State1.NeckGX";
connectAttr "Character1_Ctrl_Spine1.wm" "HIKFK2State1.Spine1GX";
connectAttr "Character1_Ctrl_Spine2.wm" "HIKFK2State1.Spine2GX";
connectAttr "Character1_Ctrl_LeftHandThumb1.wm" "HIKFK2State1.LeftHandThumb1GX";
connectAttr "Character1_Ctrl_LeftHandThumb2.wm" "HIKFK2State1.LeftHandThumb2GX";
connectAttr "Character1_Ctrl_LeftHandThumb3.wm" "HIKFK2State1.LeftHandThumb3GX";
connectAttr "Character1_Ctrl_LeftHandThumb4.wm" "HIKFK2State1.LeftHandThumb4GX";
connectAttr "Character1_Ctrl_LeftHandIndex1.wm" "HIKFK2State1.LeftHandIndex1GX";
connectAttr "Character1_Ctrl_LeftHandIndex2.wm" "HIKFK2State1.LeftHandIndex2GX";
connectAttr "Character1_Ctrl_LeftHandIndex3.wm" "HIKFK2State1.LeftHandIndex3GX";
connectAttr "Character1_Ctrl_LeftHandIndex4.wm" "HIKFK2State1.LeftHandIndex4GX";
connectAttr "Character1_Ctrl_LeftHandMiddle1.wm" "HIKFK2State1.LeftHandMiddle1GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2.wm" "HIKFK2State1.LeftHandMiddle2GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3.wm" "HIKFK2State1.LeftHandMiddle3GX"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle4.wm" "HIKFK2State1.LeftHandMiddle4GX"
		;
connectAttr "Character1_Ctrl_LeftHandRing1.wm" "HIKFK2State1.LeftHandRing1GX";
connectAttr "Character1_Ctrl_LeftHandRing2.wm" "HIKFK2State1.LeftHandRing2GX";
connectAttr "Character1_Ctrl_LeftHandRing3.wm" "HIKFK2State1.LeftHandRing3GX";
connectAttr "Character1_Ctrl_LeftHandRing4.wm" "HIKFK2State1.LeftHandRing4GX";
connectAttr "Character1_Ctrl_LeftHandPinky1.wm" "HIKFK2State1.LeftHandPinky1GX";
connectAttr "Character1_Ctrl_LeftHandPinky2.wm" "HIKFK2State1.LeftHandPinky2GX";
connectAttr "Character1_Ctrl_LeftHandPinky3.wm" "HIKFK2State1.LeftHandPinky3GX";
connectAttr "Character1_Ctrl_LeftHandPinky4.wm" "HIKFK2State1.LeftHandPinky4GX";
connectAttr "Character1_Ctrl_RightHandThumb1.wm" "HIKFK2State1.RightHandThumb1GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb2.wm" "HIKFK2State1.RightHandThumb2GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb3.wm" "HIKFK2State1.RightHandThumb3GX"
		;
connectAttr "Character1_Ctrl_RightHandThumb4.wm" "HIKFK2State1.RightHandThumb4GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex1.wm" "HIKFK2State1.RightHandIndex1GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex2.wm" "HIKFK2State1.RightHandIndex2GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex3.wm" "HIKFK2State1.RightHandIndex3GX"
		;
connectAttr "Character1_Ctrl_RightHandIndex4.wm" "HIKFK2State1.RightHandIndex4GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1.wm" "HIKFK2State1.RightHandMiddle1GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2.wm" "HIKFK2State1.RightHandMiddle2GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3.wm" "HIKFK2State1.RightHandMiddle3GX"
		;
connectAttr "Character1_Ctrl_RightHandMiddle4.wm" "HIKFK2State1.RightHandMiddle4GX"
		;
connectAttr "Character1_Ctrl_RightHandRing1.wm" "HIKFK2State1.RightHandRing1GX";
connectAttr "Character1_Ctrl_RightHandRing2.wm" "HIKFK2State1.RightHandRing2GX";
connectAttr "Character1_Ctrl_RightHandRing3.wm" "HIKFK2State1.RightHandRing3GX";
connectAttr "Character1_Ctrl_RightHandRing4.wm" "HIKFK2State1.RightHandRing4GX";
connectAttr "Character1_Ctrl_RightHandPinky1.wm" "HIKFK2State1.RightHandPinky1GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky2.wm" "HIKFK2State1.RightHandPinky2GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky3.wm" "HIKFK2State1.RightHandPinky3GX"
		;
connectAttr "Character1_Ctrl_RightHandPinky4.wm" "HIKFK2State1.RightHandPinky4GX"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.wm" "HIKEffector2State1.LeftWristEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.rt" "HIKEffector2State1.LeftWristEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.rr" "HIKEffector2State1.LeftWristEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKEffector2State1.LeftWristEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pull" "HIKEffector2State1.LeftWristEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.stiffness" "HIKEffector2State1.LeftWristEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightWristEffector.wm" "HIKEffector2State1.RightWristEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.rt" "HIKEffector2State1.RightWristEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.rr" "HIKEffector2State1.RightWristEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKEffector2State1.RightWristEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pull" "HIKEffector2State1.RightWristEffectorPull"
		;
connectAttr "Character1_Ctrl_RightWristEffector.stiffness" "HIKEffector2State1.RightWristEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.wm" "HIKEffector2State1.LeftKneeEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.rt" "HIKEffector2State1.LeftKneeEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.rr" "HIKEffector2State1.LeftKneeEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKEffector2State1.LeftKneeEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pull" "HIKEffector2State1.LeftKneeEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.stiffness" "HIKEffector2State1.LeftKneeEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.wm" "HIKEffector2State1.RightKneeEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.rt" "HIKEffector2State1.RightKneeEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.rr" "HIKEffector2State1.RightKneeEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKEffector2State1.RightKneeEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pull" "HIKEffector2State1.RightKneeEffectorPull"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.stiffness" "HIKEffector2State1.RightKneeEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.wm" "HIKEffector2State1.LeftElbowEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.rt" "HIKEffector2State1.LeftElbowEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.rr" "HIKEffector2State1.LeftElbowEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKEffector2State1.LeftElbowEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pull" "HIKEffector2State1.LeftElbowEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.stiffness" "HIKEffector2State1.LeftElbowEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.wm" "HIKEffector2State1.RightElbowEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.rt" "HIKEffector2State1.RightElbowEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.rr" "HIKEffector2State1.RightElbowEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKEffector2State1.RightElbowEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pull" "HIKEffector2State1.RightElbowEffectorPull"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.stiffness" "HIKEffector2State1.RightElbowEffectorStiffness"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.wm" "HIKEffector2State1.ChestOriginEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.rt" "HIKEffector2State1.ChestOriginEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.rr" "HIKEffector2State1.ChestOriginEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKEffector2State1.ChestOriginEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pull" "HIKEffector2State1.ChestOriginEffectorPull"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.stiffness" "HIKEffector2State1.ChestOriginEffectorStiffness"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.wm" "HIKEffector2State1.ChestEndEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rt" "HIKEffector2State1.ChestEndEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.rr" "HIKEffector2State1.ChestEndEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKEffector2State1.ChestEndEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pull" "HIKEffector2State1.ChestEndEffectorPull"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.stiffness" "HIKEffector2State1.ChestEndEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.wm" "HIKEffector2State1.LeftShoulderEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rt" "HIKEffector2State1.LeftShoulderEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.rr" "HIKEffector2State1.LeftShoulderEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKEffector2State1.LeftShoulderEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pull" "HIKEffector2State1.LeftShoulderEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.stiffness" "HIKEffector2State1.LeftShoulderEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.wm" "HIKEffector2State1.RightShoulderEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.rt" "HIKEffector2State1.RightShoulderEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.rr" "HIKEffector2State1.RightShoulderEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKEffector2State1.RightShoulderEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pull" "HIKEffector2State1.RightShoulderEffectorPull"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.stiffness" "HIKEffector2State1.RightShoulderEffectorStiffness"
		;
connectAttr "Character1_Ctrl_HeadEffector.wm" "HIKEffector2State1.HeadEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.rt" "HIKEffector2State1.HeadEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.rr" "HIKEffector2State1.HeadEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKEffector2State1.HeadEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.pull" "HIKEffector2State1.HeadEffectorPull"
		;
connectAttr "Character1_Ctrl_HeadEffector.stiffness" "HIKEffector2State1.HeadEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.wm" "HIKEffector2State1.LeftHandThumbEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rt" "HIKEffector2State1.LeftHandThumbEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.rr" "HIKEffector2State1.LeftHandThumbEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKEffector2State1.LeftHandThumbEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pull" "HIKEffector2State1.LeftHandThumbEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.stiffness" "HIKEffector2State1.LeftHandThumbEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.wm" "HIKEffector2State1.LeftHandIndexEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rt" "HIKEffector2State1.LeftHandIndexEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.rr" "HIKEffector2State1.LeftHandIndexEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKEffector2State1.LeftHandIndexEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pull" "HIKEffector2State1.LeftHandIndexEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.stiffness" "HIKEffector2State1.LeftHandIndexEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.wm" "HIKEffector2State1.LeftHandMiddleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rt" "HIKEffector2State1.LeftHandMiddleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.rr" "HIKEffector2State1.LeftHandMiddleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKEffector2State1.LeftHandMiddleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pull" "HIKEffector2State1.LeftHandMiddleEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.stiffness" "HIKEffector2State1.LeftHandMiddleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.wm" "HIKEffector2State1.LeftHandRingEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rt" "HIKEffector2State1.LeftHandRingEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.rr" "HIKEffector2State1.LeftHandRingEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKEffector2State1.LeftHandRingEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pull" "HIKEffector2State1.LeftHandRingEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.stiffness" "HIKEffector2State1.LeftHandRingEffectorStiffness"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.wm" "HIKEffector2State1.LeftHandPinkyEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rt" "HIKEffector2State1.LeftHandPinkyEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.rr" "HIKEffector2State1.LeftHandPinkyEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKEffector2State1.LeftHandPinkyEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pull" "HIKEffector2State1.LeftHandPinkyEffectorPull"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.stiffness" "HIKEffector2State1.LeftHandPinkyEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.wm" "HIKEffector2State1.RightHandThumbEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rt" "HIKEffector2State1.RightHandThumbEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.rr" "HIKEffector2State1.RightHandThumbEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKEffector2State1.RightHandThumbEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pull" "HIKEffector2State1.RightHandThumbEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.stiffness" "HIKEffector2State1.RightHandThumbEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.wm" "HIKEffector2State1.RightHandIndexEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rt" "HIKEffector2State1.RightHandIndexEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.rr" "HIKEffector2State1.RightHandIndexEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKEffector2State1.RightHandIndexEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pull" "HIKEffector2State1.RightHandIndexEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.stiffness" "HIKEffector2State1.RightHandIndexEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.wm" "HIKEffector2State1.RightHandMiddleEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rt" "HIKEffector2State1.RightHandMiddleEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.rr" "HIKEffector2State1.RightHandMiddleEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKEffector2State1.RightHandMiddleEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pull" "HIKEffector2State1.RightHandMiddleEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.stiffness" "HIKEffector2State1.RightHandMiddleEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.wm" "HIKEffector2State1.RightHandRingEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.rt" "HIKEffector2State1.RightHandRingEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.rr" "HIKEffector2State1.RightHandRingEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKEffector2State1.RightHandRingEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pull" "HIKEffector2State1.RightHandRingEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.stiffness" "HIKEffector2State1.RightHandRingEffectorStiffness"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.wm" "HIKEffector2State1.RightHandPinkyEffectorGX[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rt" "HIKEffector2State1.RightHandPinkyEffectorReachT[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.rr" "HIKEffector2State1.RightHandPinkyEffectorReachR[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKEffector2State1.RightHandPinkyEffectorPivot[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pull" "HIKEffector2State1.RightHandPinkyEffectorPull"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.stiffness" "HIKEffector2State1.RightHandPinkyEffectorStiffness"
		;
connectAttr "HIKEffector2State1.EFF" "HIKPinning2State1.InputEffectorState";
connectAttr "HIKEffector2State1.EFFNA" "HIKPinning2State1.InputEffectorStateNoAux"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pint" "HIKPinning2State1.LeftWristEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.pinr" "HIKPinning2State1.LeftWristEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pint" "HIKPinning2State1.RightWristEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightWristEffector.pinr" "HIKPinning2State1.RightWristEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pint" "HIKPinning2State1.LeftKneeEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.pinr" "HIKPinning2State1.LeftKneeEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pint" "HIKPinning2State1.RightKneeEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.pinr" "HIKPinning2State1.RightKneeEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pint" "HIKPinning2State1.LeftElbowEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.pinr" "HIKPinning2State1.LeftElbowEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pint" "HIKPinning2State1.RightElbowEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.pinr" "HIKPinning2State1.RightElbowEffectorPinR"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pint" "HIKPinning2State1.ChestOriginEffectorPinT"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.pinr" "HIKPinning2State1.ChestOriginEffectorPinR"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pint" "HIKPinning2State1.ChestEndEffectorPinT"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.pinr" "HIKPinning2State1.ChestEndEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pint" "HIKPinning2State1.LeftShoulderEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.pinr" "HIKPinning2State1.LeftShoulderEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pint" "HIKPinning2State1.RightShoulderEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.pinr" "HIKPinning2State1.RightShoulderEffectorPinR"
		;
connectAttr "Character1_Ctrl_HeadEffector.pint" "HIKPinning2State1.HeadEffectorPinT"
		;
connectAttr "Character1_Ctrl_HeadEffector.pinr" "HIKPinning2State1.HeadEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pint" "HIKPinning2State1.LeftHandThumbEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.pinr" "HIKPinning2State1.LeftHandThumbEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pint" "HIKPinning2State1.LeftHandIndexEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.pinr" "HIKPinning2State1.LeftHandIndexEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pint" "HIKPinning2State1.LeftHandMiddleEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.pinr" "HIKPinning2State1.LeftHandMiddleEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pint" "HIKPinning2State1.LeftHandRingEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.pinr" "HIKPinning2State1.LeftHandRingEffectorPinR"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pint" "HIKPinning2State1.LeftHandPinkyEffectorPinT"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.pinr" "HIKPinning2State1.LeftHandPinkyEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pint" "HIKPinning2State1.RightHandThumbEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.pinr" "HIKPinning2State1.RightHandThumbEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pint" "HIKPinning2State1.RightHandIndexEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.pinr" "HIKPinning2State1.RightHandIndexEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pint" "HIKPinning2State1.RightHandMiddleEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.pinr" "HIKPinning2State1.RightHandMiddleEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pint" "HIKPinning2State1.RightHandRingEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.pinr" "HIKPinning2State1.RightHandRingEffectorPinR"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pint" "HIKPinning2State1.RightHandPinkyEffectorPinT"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.pinr" "HIKPinning2State1.RightHandPinkyEffectorPinR"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2FK1.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKState2FK1.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKState2FK2.InputCharacterDefinition"
		;
connectAttr "HIKSolverNode1.decs" "HIKState2FK2.InputCharacterState";
connectAttr "HIKSolverNode1.OutputCharacterState" "HIKEffectorFromCharacter1.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKEffectorFromCharacter1.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter1.InputPropertySetState"
		;
connectAttr "HIKSolverNode1.decs" "HIKEffectorFromCharacter2.InputCharacterState"
		;
connectAttr "Character1.OutputCharacterDefinition" "HIKEffectorFromCharacter2.InputCharacterDefinition"
		;
connectAttr "HIKproperties1.OutputPropertySetState" "HIKEffectorFromCharacter2.InputPropertySetState"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKState2Effector1.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKState2Effector1.RightWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKState2Effector1.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKState2Effector1.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKState2Effector1.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKState2Effector1.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKState2Effector1.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKState2Effector1.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector1.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKState2Effector1.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKState2Effector1.HeadEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector1.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector1.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKState2Effector1.LeftHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKState2Effector1.LeftHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKState2Effector1.LeftHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKState2Effector1.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKState2Effector1.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKState2Effector1.RightHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKState2Effector1.RightHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKState2Effector1.RightHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter1.OutputEffectorState" "HIKState2Effector1.InputEffectorState"
		;
connectAttr "Character1_Ctrl_LeftWristEffector.po" "HIKState2Effector2.LeftWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightWristEffector.po" "HIKState2Effector2.RightWristEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector.po" "HIKState2Effector2.LeftKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector.po" "HIKState2Effector2.RightKneeEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector.po" "HIKState2Effector2.LeftElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector.po" "HIKState2Effector2.RightElbowEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector.po" "HIKState2Effector2.ChestOriginEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector.po" "HIKState2Effector2.ChestEndEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector.po" "HIKState2Effector2.LeftShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector.po" "HIKState2Effector2.RightShoulderEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_HeadEffector.po" "HIKState2Effector2.HeadEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector.po" "HIKState2Effector2.LeftHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector.po" "HIKState2Effector2.LeftHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector.po" "HIKState2Effector2.LeftHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector.po" "HIKState2Effector2.LeftHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector.po" "HIKState2Effector2.LeftHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector.po" "HIKState2Effector2.RightHandThumbEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector.po" "HIKState2Effector2.RightHandIndexEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector.po" "HIKState2Effector2.RightHandMiddleEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector.po" "HIKState2Effector2.RightHandRingEffectorpivotOffset[0]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector.po" "HIKState2Effector2.RightHandPinkyEffectorpivotOffset[0]"
		;
connectAttr "HIKEffectorFromCharacter2.OutputEffectorState" "HIKState2Effector2.InputEffectorState"
		;
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyAverageVertex1.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyAverageVertex1.out" "polyAverageVertex2.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex2.mp";
connectAttr "polyAverageVertex2.out" "polyAverageVertex3.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex3.mp";
connectAttr "polyAverageVertex3.out" "polyAverageVertex4.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex4.mp";
connectAttr "polyAverageVertex4.out" "polyAverageVertex5.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex5.mp";
connectAttr "polyAverageVertex5.out" "polyAverageVertex6.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex6.mp";
connectAttr "polyAverageVertex6.out" "polyAverageVertex7.ip";
connectAttr "pCylinderShape1.wm" "polyAverageVertex7.mp";
connectAttr "polyAverageVertex7.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "headShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_upperarmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_forearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_handShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_clavShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "R_upperarmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_forearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_handShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "shoulderShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "sternumShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "hipsShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "bellyShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "L_clavShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
// End of greybox_rig_boss.001.ma
