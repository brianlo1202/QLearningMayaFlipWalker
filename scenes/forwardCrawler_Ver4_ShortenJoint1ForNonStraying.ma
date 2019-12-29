//Maya ASCII 2018ff09 scene
//Name: forwardCrawler_Ver4_ShortenJoint1ForNonStraying.ma
//Last modified: Sat, Dec 28, 2019 03:30:55 PM
//Codeset: UTF-8
requires maya "2018ff09";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "3.1.2.1";
requires -nodeType "bulletRigidBodyShape" -nodeType "bulletRigidBodyConstraintShape"
		 -nodeType "bulletSolverShape" -dataType "bulletSolverData" -dataType "bulletRigidBodyData"
		 -dataType "bulletSoftBodyData" -dataType "bulletSoftConstraintData" -dataType "BulletRigidBodyConstraintData"
		 -dataType "bulletColliderData" -dataType "bulletRigidInitialStateGeometry" -dataType "bulletMotionsStates"
		 -dataType "bulletCollisionShapes" "bullet" "Mar 23 2019";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Mac OS X 10.14.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "9A70F6E7-D74F-C1F7-6007-489F5B1C65F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.0160568496963 5.6060926517311369 0.5819149973736808 ;
	setAttr ".r" -type "double3" -21.338352730166346 88.999999999886398 -3.6448322385016535e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B3168FD2-EC41-4D78-D3BE-889AFFC02B51";
	setAttr -k off ".v" no;
	setAttr ".fl" 20;
	setAttr ".coi" 12.450854408892626;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.8817841970012523e-16 2.3095974603238418 -3.202247286967669 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "0BA189A3-8047-C908-8D1F-098F756FB1B9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.015863138220141293 1000.1 -17.344033055472007 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "946EF7D6-9644-761B-5935-33A9DF3E6375";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 20.281519179444107;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "908A0AFE-5B48-7608-832E-10BCCDC69DD9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.027898590946328239 1.2332842370521213 1000.1013274613694 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1E6467F6-1948-951D-7707-B486A0CF854C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.607205995381;
	setAttr ".ow" 15.018103148776133;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 1.6307016846022835 -1.5058785340116509 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "13F2AF08-DA4A-7846-BF5D-DFAB4B8A7CCE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1028997310423 2.2151794766724233 -0.095412310154490143 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "66C67E8E-9C4D-C735-476E-C0A221C9686A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.102899731042;
	setAttr ".ow" 8.7650072904493221;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 1.6307016846022835 -1.5058785340116509 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "joint5";
	rename -uid "6DC663AD-7645-8954-355E-5EA5D7566A79";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.60241417685927867;
createNode joint -n "joint6" -p "joint5";
	rename -uid "9E63283C-1D4C-9871-D473-329309E75134";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.51233334354026439;
createNode joint -n "joint7" -p "joint6";
	rename -uid "C379E50D-BD49-6B65-16B7-FC8392EECFBC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.51634020696260741;
createNode joint -n "joint8" -p "joint7";
	rename -uid "E5546A26-0748-9284-36A3-518EDAC157AB";
	setAttr ".t" -type "double3" 1.9495484793812339e-16 -1.3158474318895992 0.012900465018515389 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.51634020696260741;
createNode transform -n "pCylinder1" -p "joint7";
	rename -uid "7A5CBBC3-5645-D601-24E2-A5B381B8B767";
	setAttr ".t" -type "double3" 8.8679167353026147e-16 0.00023524370565031205 0.0014085636884031416 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 1.1865648307681091 1 1.1865648307681091 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "167669F2-E545-067D-A8FE-5E83E890832A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3" -p "joint7";
	rename -uid "18B8E93A-1147-F717-55A1-5394DAE79AC8";
	setAttr ".t" -type "double3" -1.3867461698637651e-18 -0.5903682935451382 0.016964991581572608 ;
	setAttr ".s" -type "double3" 1 0.75419751230769394 1 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "319F5680-6448-41B2-848B-32A86E5CECEF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1" -p "joint7";
	rename -uid "BA5B1EAB-604D-2CD9-8F08-A69947B6DFE3";
	setAttr ".t" -type "double3" -1.3867461698637651e-18 -0.86600866438768986 0.011035617928655039 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "781817E4-D04B-E77D-FE4C-26A73FBA7B0A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.82500004768371582 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 141 ".pt";
	setAttr ".pt[240]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[241]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[242]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[243]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[244]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[245]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[246]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[247]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[248]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[249]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[250]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[251]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[252]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[253]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[254]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[255]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[256]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[257]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[258]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[259]" -type "float3" 0 0.00064573262 0 ;
	setAttr ".pt[260]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[261]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[262]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[263]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[264]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[265]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[266]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[267]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[268]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[269]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[270]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[271]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[272]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[273]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[274]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[275]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[276]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[277]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[278]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[279]" -type "float3" 0 -0.032802608 0 ;
	setAttr ".pt[280]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[281]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[282]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[283]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[284]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[285]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[286]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[287]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[288]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[289]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[290]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[291]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[292]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[293]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[294]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[295]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[296]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[297]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[298]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[299]" -type "float3" 0 -0.062632702 0 ;
	setAttr ".pt[300]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[301]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[303]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[304]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[306]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[307]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[311]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[315]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[319]" -type "float3" 0 -0.08811 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[321]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[322]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[323]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[324]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[325]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[326]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[327]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[328]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[329]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[330]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[331]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[332]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[333]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[334]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[335]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[336]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[337]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[338]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[339]" -type "float3" 0 -0.10860717 0 ;
	setAttr ".pt[340]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[341]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[342]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[343]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[344]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[345]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[346]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[347]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[348]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[349]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[350]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[351]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[352]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[353]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[354]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[355]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[356]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[357]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[358]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[359]" -type "float3" 0 -0.12361953 0 ;
	setAttr ".pt[360]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[361]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[362]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[363]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[364]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[365]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[366]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[367]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[368]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[369]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[370]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[371]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[372]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[373]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[374]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[375]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[376]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[377]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[378]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[379]" -type "float3" 0 -0.13277739 0 ;
	setAttr ".pt[381]" -type "float3" 0 -0.13585527 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "joint7_parentConstraint1" -p "joint7";
	rename -uid "135A46AE-AF4F-EF34-9B73-79A1C280089D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint7_joint8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1453124226790123e-08 -1.1900617113980161e-07 
		1.6310833239607803e-09 ;
	setAttr ".tg[0].tor" -type "double3" 0.56185630274473641 -89.214760465057807 89.999927365680207 ;
	setAttr ".lr" -type "double3" -3.7861544314397002 0.020534911736561051 0.10448722681611537 ;
	setAttr ".rst" -type "double3" 9.6155595959812953e-18 8.992806499463768e-15 -1.2384446417784467 ;
	setAttr ".rsrr" -type "double3" -1.3358329662146771e-13 -5.5168608622572436e-15 
		-3.4830905727540107e-15 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation_joint2Rotation" -p "joint6";
	rename -uid "9219AFF0-D941-9D08-5C4C-039D5369BAB9";
	setAttr ".t" -type "double3" 2.7877547610632535e-18 -2.309362246420505 1.9652111641741408 ;
	setAttr ".rp" -type "double3" -3.0237804426786722e-18 2.3093621730804443 -3.2036557197570801 ;
	setAttr ".sp" -type "double3" -3.0237804426786722e-18 2.3093621730804443 -3.2036557197570801 ;
createNode nurbsCurve -n "sensor_rotation_joint2RotationShape" -p "sensor_rotation_joint2Rotation";
	rename -uid "138D486A-DF4C-B396-DC40-EABEAEEFF6DB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.5127453167095708 2.3093621730804434 -3.71640103646665
		-8.5752600582686969e-17 2.3093621730804426 -3.9287871006910424
		-0.51274531670957024 2.309362173080443 -3.71640103646665
		-0.72513138093396234 2.3093621730804452 -3.2036557197570801
		-0.51274531670957046 2.309362173080447 -2.6909104030475097
		-2.2152001726792846e-16 2.3093621730804479 -2.4785243388231177
		0.51274531670957002 2.309362173080447 -2.6909104030475097
		0.72513138093396234 2.3093621730804452 -3.2036557197570796
		0.5127453167095708 2.3093621730804434 -3.71640103646665
		-8.5752600582686969e-17 2.3093621730804426 -3.9287871006910424
		-0.51274531670957024 2.309362173080443 -3.71640103646665
		;
createNode orientConstraint -n "yeah" -p "sensor_rotation_joint2Rotation";
	rename -uid "921890A8-264F-DDC9-F26C-48B40CDD47A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.7861544314397002 0.020534911736561055 0.10448722681611537 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder2" -p "joint6";
	rename -uid "90418993-CA4A-191C-2E79-1A9AD92AB166";
	setAttr ".t" -type "double3" 8.9096512058048138e-16 0.00023524370565919384 -0.0051151687193233819 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 1.1865648307681091 1 1.1865648307681091 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "CBD70B2D-BE40-39DF-F2FF-89941DBECED6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.23776428 -0.2 -0.077254295 0.20225438 -0.2 -0.1469464
		 0.1469464 -0.2 -0.20225437 0.077254288 -0.2 -0.23776425 0 -0.2 -0.25000012 -0.077254288 -0.2 -0.23776424
		 -0.14694637 -0.2 -0.20225433 -0.20225431 -0.2 -0.14694636 -0.23776419 -0.2 -0.077254266
		 -0.25000006 -0.2 0 -0.23776419 -0.2 0.077254266 -0.2022543 -0.2 0.14694634 -0.14694634 -0.2 0.20225428
		 -0.077254266 -0.2 0.23776416 -7.4505806e-09 -0.2 0.25000003 0.077254243 -0.2 0.23776415
		 0.14694631 -0.2 0.20225427 0.20225425 -0.2 0.14694633 0.23776414 -0.2 0.077254251
		 0.25 -0.2 0 0.23776428 0.2 -0.077254295 0.20225438 0.2 -0.1469464 0.1469464 0.2 -0.20225437
		 0.077254288 0.2 -0.23776425 0 0.2 -0.25000012 -0.077254288 0.2 -0.23776424 -0.14694637 0.2 -0.20225433
		 -0.20225431 0.2 -0.14694636 -0.23776419 0.2 -0.077254266 -0.25000006 0.2 0 -0.23776419 0.2 0.077254266
		 -0.2022543 0.2 0.14694634 -0.14694634 0.2 0.20225428 -0.077254266 0.2 0.23776416
		 -7.4505806e-09 0.2 0.25000003 0.077254243 0.2 0.23776415 0.14694631 0.2 0.20225427
		 0.20225425 0.2 0.14694633 0.23776414 0.2 0.077254251 0.25 0.2 0 0 -0.2 0 0 0.2 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4" -p "joint6";
	rename -uid "C1E1DA90-3344-F820-255A-158125C93FB9";
	setAttr ".t" -type "double3" 2.7867008803561426e-18 -0.0047721609571804713 -0.60969850531782099 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "0FA1F630-F64F-544E-C09C-BD9A532E7EEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.14265858 -0.60000002 -0.04635258 0.12135264 -0.60000002 -0.088167846
		 0.088167846 -0.60000002 -0.12135263 0.046352573 -0.60000002 -0.14265856 0 -0.60000002 -0.15000008
		 -0.046352573 -0.60000002 -0.14265855 -0.088167824 -0.60000002 -0.1213526 -0.12135259 -0.60000002 -0.088167816
		 -0.14265852 -0.60000002 -0.046352562 -0.15000004 -0.60000002 0 -0.14265852 -0.60000002 0.046352562
		 -0.12135258 -0.60000002 0.088167809 -0.088167809 -0.60000002 0.12135258 -0.046352562 -0.60000002 0.1426585
		 -4.4703485e-09 -0.60000002 0.15000002 0.046352547 -0.60000002 0.1426585 0.088167787 -0.60000002 0.12135256
		 0.12135255 -0.60000002 0.088167801 0.14265849 -0.60000002 0.04635255 0.15000001 -0.60000002 0
		 0.14265858 0.60000002 -0.04635258 0.12135264 0.60000002 -0.088167846 0.088167846 0.60000002 -0.12135263
		 0.046352573 0.60000002 -0.14265856 0 0.60000002 -0.15000008 -0.046352573 0.60000002 -0.14265855
		 -0.088167824 0.60000002 -0.1213526 -0.12135259 0.60000002 -0.088167816 -0.14265852 0.60000002 -0.046352562
		 -0.15000004 0.60000002 0 -0.14265852 0.60000002 0.046352562 -0.12135258 0.60000002 0.088167809
		 -0.088167809 0.60000002 0.12135258 -0.046352562 0.60000002 0.1426585 -4.4703485e-09 0.60000002 0.15000002
		 0.046352547 0.60000002 0.1426585 0.088167787 0.60000002 0.12135256 0.12135255 0.60000002 0.088167801
		 0.14265849 0.60000002 0.04635255 0.15000001 0.60000002 0 0 -0.60000002 0 0 0.60000002 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "joint6_parentConstraint1" -p "joint6";
	rename -uid "BFF68EB4-6040-7AA3-76D7-38B02C498EEF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint6_joint7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.7780471901812689e-08 -8.1672726741366386e-11 
		-2.0912566234265739e-08 ;
	setAttr ".tg[0].tor" -type "double3" 89.99999952877684 -0.22352857593563585 -89.999927372397295 ;
	setAttr ".lr" -type "double3" 98.447342927115812 180.01515436284717 180.04305503152654 ;
	setAttr ".rst" -type "double3" -9.9150623216658293e-19 2.1538326677728037e-14 -2.9800074192793864 ;
	setAttr ".rsrr" -type "double3" -2.9271173222318864e-31 5.3308483787208097e-15 -6.2921117536554727e-15 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation_joint1Rotation" -p "joint5";
	rename -uid "A2888235-5A49-83BE-5F8E-D8A6824CC13D";
	setAttr ".t" -type "double3" 2.2198177559442423e-18 -2.3093622464204833 -1.0147962551052465 ;
	setAttr ".rp" -type "double3" -2.7877547946443226e-18 2.3093621730804443 -1.9652111530303955 ;
	setAttr ".sp" -type "double3" -2.7877547946443226e-18 2.3093621730804443 -1.9652111530303955 ;
createNode nurbsCurve -n "sensor_rotation_joint1RotationShape" -p "sensor_rotation_joint1Rotation";
	rename -uid "37B70FC8-C346-0EF5-5979-B4B63ADD9749";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.5127453167095708 2.3093621730804443 -2.4779564697399654
		-8.5516574934652668e-17 2.3093621730804443 -2.6903425339643579
		-0.51274531670957024 2.3093621730804443 -2.4779564697399659
		-0.72513138093396234 2.3093621730804443 -1.9652111530303957
		-0.51274531670957046 2.3093621730804443 -1.4524658363208254
		-2.2128399161989403e-16 2.3093621730804443 -1.2400797720964332
		0.51274531670957002 2.3093621730804443 -1.4524658363208252
		0.72513138093396234 2.3093621730804443 -1.9652111530303951
		0.5127453167095708 2.3093621730804443 -2.4779564697399654
		-8.5516574934652668e-17 2.3093621730804443 -2.6903425339643579
		-0.51274531670957024 2.3093621730804443 -2.4779564697399659
		;
createNode orientConstraint -n "yeah" -p "sensor_rotation_joint1Rotation";
	rename -uid "13463498-1A4A-A7FD-AA53-43935590C896";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -81.552657072884188 -0.01515436284715913 0.043055031526532422 ;
	setAttr -k on ".w0";
createNode transform -n "pCube1" -p "joint5";
	rename -uid "259E68F2-7540-33C2-3D34-BEB515F42511";
	setAttr ".t" -type "double3" 2.2197402104589309e-18 -0.0070485396178936455 -1.4973102836280219 ;
	setAttr ".s" -type "double3" 3.0007542579661131 2.0109876326521992 3.014320991704909 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "F55B612F-114B-7544-DC6B-BB9E30838B6F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "joint5_parentConstraint1" -p "joint5";
	rename -uid "43D74C09-3F48-DCE0-6561-96B4AD7995C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5_joint6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0916232695556971e-08 -3.6681621715800583e-11 
		-9.4058859589907229e-09 ;
	setAttr ".tg[0].tor" -type "double3" 89.99999952877684 -0.22352857593563585 -89.999927372397295 ;
	setAttr ".lr" -type "double3" 96.880487469695794 4.0268253729783918 0.10331919516550228 ;
	setAttr ".rst" -type "double3" -2.7577577359649407e-18 0.51666540995400867 0.96615814217811358 ;
	setAttr ".rsrr" -type "double3" 89.776471519524577 6.3128610985418573e-15 5.3062604070961781e-15 ;
	setAttr -k on ".w0";
createNode transform -n "bulletSolver1";
	rename -uid "A17EB9EC-3542-EC20-0A18-E6A91F7FC9D9";
createNode bulletSolverShape -n "bulletSolverShape1" -p "bulletSolver1";
	rename -uid "B84E4ED4-0B4B-E5D0-A964-A397402ACC17";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".rb";
	setAttr -s 2 ".rbc";
createNode transform -n "notes";
	rename -uid "D247D5E3-E543-5844-503E-52A5B6DF1E21";
	setAttr ".v" no;
createNode locator -n "notesShape" -p "notes";
	rename -uid "7AE67607-EA40-4926-B2A6-24A4BD85D7C3";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr -k off ".v";
	setAttr ".nts" -type "string" "can restrain movements in constraints\ncan rotate with \"motor speed\" in motors section in constraints";
createNode transform -n "sensor_translate_body";
	rename -uid "4C0D7813-564F-5AC0-907C-0E868CCBB24F";
	setAttr ".rp" -type "double3" -8.8866343643460736e-16 3.9633477305400535 0 ;
	setAttr ".sp" -type "double3" -8.8866343643460736e-16 3.9633477305400535 0 ;
createNode nurbsCurve -n "sensor_translate_bodyShape" -p "sensor_translate_body";
	rename -uid "86B98B7F-784B-D685-B067-888D118C2AC2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35251809902576503 3.9633477305400535 -0.35251809902576525
		-9.4554041894426716e-16 3.9633477305400535 -0.49853587662421939
		-0.35251809902576642 3.9633477305400535 -0.35251809902576547
		-0.49853587662422033 3.9633477305400535 -1.1102230246251565e-16
		-0.35251809902576653 3.9633477305400535 0.35251809902576547
		-1.0388820255466527e-15 3.9633477305400535 0.49853587662421955
		0.35251809902576448 3.9633477305400535 0.35251809902576559
		0.49853587662421855 3.9633477305400535 2.2204460492503131e-16
		0.35251809902576503 3.9633477305400535 -0.35251809902576525
		-9.4554041894426716e-16 3.9633477305400535 -0.49853587662421939
		-0.35251809902576642 3.9633477305400535 -0.35251809902576547
		;
createNode pointConstraint -n "yeah" -p "sensor_translate_body";
	rename -uid "B996BBE3-0A41-3A02-4379-5283BF4D65B5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -8.8470897274817162e-16 1.6539854841195707 -1.0420590545092467 ;
	setAttr ".rst" -type "double3" -0.030263601115819883 -2.299382391410429 0 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation_bodyRotation";
	rename -uid "B8AC3042-F64B-D0F3-8A21-2FB14083327B";
	setAttr ".rp" -type "double3" -2.2198177559442423e-18 2.3093621730804443 1.014796257019043 ;
	setAttr ".sp" -type "double3" -2.2198177559442423e-18 2.3093621730804443 1.014796257019043 ;
createNode nurbsCurve -n "sensor_rotation_bodyRotationShape" -p "sensor_rotation_bodyRotation";
	rename -uid "93C90B97-E54B-FAAA-B1A1-68897B340AA4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.5127453167095708 2.3093621730804443 0.50205094030947295
		-8.4948637895952588e-17 2.3093621730804443 0.28966487608508062
		-0.51274531670957024 2.3093621730804443 0.50205094030947273
		-0.72513138093396234 2.3093621730804443 1.0147962570190427
		-0.51274531670957046 2.3093621730804443 1.5275415737286131
		-2.2071605458119395e-16 2.3093621730804443 1.7399276379530053
		0.51274531670957002 2.3093621730804443 1.5275415737286133
		0.72513138093396234 2.3093621730804443 1.0147962570190434
		0.5127453167095708 2.3093621730804443 0.50205094030947295
		-8.4948637895952588e-17 2.3093621730804443 0.28966487608508062
		-0.51274531670957024 2.3093621730804443 0.50205094030947273
		;
createNode orientConstraint -n "yeah" -p "sensor_rotation_bodyRotation";
	rename -uid "E5E2F321-0141-4848-20A4-869D28292075";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 96.880487469695794 4.0268253729783927 0.10331919516550234 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "yeah1" -p "sensor_rotation_bodyRotation";
	rename -uid "D3755961-4F48-2B27-7B16-C7AAE8563736";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 -7.3340038930780338e-08 1.9137964546445119e-09 ;
	setAttr -k on ".w0";
createNode transform -n "rewardGate1";
	rename -uid "745A6B84-F246-5B55-627F-51B5902301ED";
	setAttr ".t" -type "double3" 0 0 -1 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape1" -p "rewardGate1";
	rename -uid "557DBC61-C14F-2FEF-1762-5EB3870573A2";
	setAttr -k off ".v";
createNode transform -n "rewardGate2";
	rename -uid "2E3F6084-1F47-6DC9-87F9-AF9CD44B6B2C";
	setAttr ".t" -type "double3" 0 0 -2 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape2" -p "rewardGate2";
	rename -uid "D053A052-B948-1E75-AB46-C5A36F0E6E50";
	setAttr -k off ".v";
createNode transform -n "rewardGate3";
	rename -uid "89DC296A-C045-DC97-2A30-ECAE97A9C1D7";
	setAttr ".t" -type "double3" 0 0 -3 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape3" -p "rewardGate3";
	rename -uid "6C4B1EA5-184D-A5BD-6D08-75ABB8397961";
	setAttr -k off ".v";
createNode transform -n "rewardGate4";
	rename -uid "2B3BD865-C644-69E7-D1A4-118D90B2DFC2";
	setAttr ".t" -type "double3" 0 0 -4 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape4" -p "rewardGate4";
	rename -uid "057DEEB5-934C-8D50-905A-16B7E09A23E3";
	setAttr -k off ".v";
createNode transform -n "rewardGate5";
	rename -uid "DC247AD7-064C-C207-845D-4692BA13050F";
	setAttr ".t" -type "double3" 0 0 -5 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape5" -p "rewardGate5";
	rename -uid "132B96BE-024F-9845-0196-7E86F155C799";
	setAttr -k off ".v";
createNode transform -n "rewardGate6";
	rename -uid "8D5806EF-2747-77E2-2F28-FDA885B1A159";
	setAttr ".t" -type "double3" 0 0 -6 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape6" -p "rewardGate6";
	rename -uid "DF875C93-8D44-D73D-12D7-B382E58B9299";
	setAttr -k off ".v";
createNode transform -n "rewardGate7";
	rename -uid "C80C8FA2-0A45-5EC0-78D5-BA99765FADF1";
	setAttr ".t" -type "double3" 0 0 -7 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape7" -p "rewardGate7";
	rename -uid "6672C22A-1442-3D7D-CDFE-18B9DCE66DF5";
	setAttr -k off ".v";
createNode transform -n "rewardGate8";
	rename -uid "3C297CD2-C94A-B56C-BCDB-D598F2765D25";
	setAttr ".t" -type "double3" 0 0 -8 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape8" -p "rewardGate8";
	rename -uid "F115B2CF-564C-7290-D77C-DFAECF0CA6DC";
	setAttr -k off ".v";
createNode transform -n "rewardGate9";
	rename -uid "93D62C41-BC46-B702-CABF-5980B3BB65DA";
	setAttr ".t" -type "double3" 0 0 -9 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape9" -p "rewardGate9";
	rename -uid "1EF0B57A-4649-4F9D-8190-FCB14CBC72B0";
	setAttr -k off ".v";
createNode transform -n "rewardGate10";
	rename -uid "26C4C936-1B4E-C9B7-233F-4B8F73DDCE99";
	setAttr ".t" -type "double3" 0 0 -10 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape10" -p "rewardGate10";
	rename -uid "7144792E-0345-FEB6-7628-4B8B88CB9A45";
	setAttr -k off ".v";
createNode transform -n "rewardGate20";
	rename -uid "122AF030-EE44-7554-7DD2-8B9910C4DEB4";
	setAttr ".t" -type "double3" 0 0 -20 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape20" -p "rewardGate20";
	rename -uid "22374F59-944B-F667-023D-DBA76E7CD60E";
	setAttr -k off ".v";
createNode transform -n "rewardGate19";
	rename -uid "4CA422A4-0A44-B70B-CD7C-4E9C86E5308B";
	setAttr ".t" -type "double3" 0 0 -19 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape19" -p "rewardGate19";
	rename -uid "9B96CDB2-3742-77D0-0104-7CB8522F0AB9";
	setAttr -k off ".v";
createNode transform -n "rewardGate18";
	rename -uid "DF9F54A7-7A44-CC2E-676B-4DAB5C5BFB5D";
	setAttr ".t" -type "double3" 0 0 -18 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape18" -p "rewardGate18";
	rename -uid "BAA7ED7B-C54E-09B1-D9F4-95B559FC1596";
	setAttr -k off ".v";
createNode transform -n "rewardGate17";
	rename -uid "8193D419-4D4C-42E1-3188-D580D5D8D672";
	setAttr ".t" -type "double3" 0 0 -17 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape17" -p "rewardGate17";
	rename -uid "982676B7-C44A-020F-71E8-B481BC1AAE1C";
	setAttr -k off ".v";
createNode transform -n "rewardGate16";
	rename -uid "8A0ED7E7-4E48-AE9B-C696-15A9165E6315";
	setAttr ".t" -type "double3" 0 0 -16 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape16" -p "rewardGate16";
	rename -uid "9EE68792-1F46-232C-5D3E-CE8B280E3D1A";
	setAttr -k off ".v";
createNode transform -n "rewardGate15";
	rename -uid "3A58AF29-074B-314E-5A96-3AA286254A9C";
	setAttr ".t" -type "double3" 0 0 -15 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape15" -p "rewardGate15";
	rename -uid "5554FF89-D441-66B2-6ABD-198EC177AF3F";
	setAttr -k off ".v";
createNode transform -n "rewardGate14";
	rename -uid "79FB5644-F64E-D64A-E5C5-ECA37093500A";
	setAttr ".t" -type "double3" 0 0 -14 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape14" -p "rewardGate14";
	rename -uid "0CA04CEC-D143-EC89-3D03-DC8E060938CF";
	setAttr -k off ".v";
createNode transform -n "rewardGate13";
	rename -uid "D526823C-E441-2C69-D268-90950EBAA6E4";
	setAttr ".t" -type "double3" 0 0 -13 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape13" -p "rewardGate13";
	rename -uid "9A8C3830-DC4E-43CC-8897-FCAA7D6DAB18";
	setAttr -k off ".v";
createNode transform -n "rewardGate12";
	rename -uid "C34A55A5-694D-1C09-81E1-B3AE141680F7";
	setAttr ".t" -type "double3" 0 0 -12 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape12" -p "rewardGate12";
	rename -uid "6C8DF22E-C647-83CC-22C1-2EAB8FAA920E";
	setAttr -k off ".v";
createNode transform -n "rewardGate11";
	rename -uid "EF34F668-3941-DDBC-723F-1286DB690F98";
	setAttr ".t" -type "double3" 0 0 -11 ;
	setAttr ".s" -type "double3" 0.28397509380508201 0.28397509380508201 0.28397509380508201 ;
createNode locator -n "rewardGateShape11" -p "rewardGate11";
	rename -uid "A31AEB31-0F41-9C88-86FF-0DAC38CA5E08";
	setAttr -k off ".v";
createNode transform -n "floor";
	rename -uid "46659795-544A-65F3-7F79-F7B27CDA856E";
createNode bulletRigidBodyShape -n "floorShape" -p "floor";
	rename -uid "340BFC8C-2944-E24F-2369-CA9797DC4736";
	setAttr -k off ".v";
	setAttr ".colshtyp" 6;
	setAttr ".bdytyp" 0;
createNode transform -n "sensor_translate_foot";
	rename -uid "69BD2388-7041-DDAF-5712-1D954FAE2DDE";
	setAttr ".s" -type "double3" 0.38151875646868683 0.38151875646868683 0.38151875646868683 ;
createNode nurbsCurve -n "sensor_translate_footShape" -p "sensor_translate_foot";
	rename -uid "4A45889D-6541-CAC5-C1F2-7FAB0D6FC050";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode pointConstraint -n "nurbsCircle1_pointConstraint1" -p "sensor_translate_foot";
	rename -uid "AB0C2993-E048-93FC-A91F-4AAF811FBFA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -0.0081077344060121823 0.1719306790724564 0.0087472295919814869 ;
	setAttr ".rst" -type "double3" 0 -0.024723249114918744 -3.2077415785229775 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_translate_knee";
	rename -uid "0D6FF749-634D-D5A0-299D-838BDC041807";
	setAttr ".rp" -type "double3" -0.043637852248180661 0.39798267231467632 -3.2100487027632854 ;
	setAttr ".sp" -type "double3" -0.043637852248180661 0.39798267231467632 -3.2100487027632854 ;
createNode nurbsCurve -n "sensor_translate_kneeShape" -p "sensor_translate_knee";
	rename -uid "83955F51-4843-69FC-79E3-FEA61520A3D0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.30795445986666764 0.39797525146549184 -3.5615624069347627
		-0.043582262810158964 0.3980446629647445 -3.7072197309624961
		-0.39515154902585364 0.39807776118192756 -3.5616410094901081
		-0.54080887902909125 0.39805515763030552 -3.2101042831631887
		-0.39523016436302877 0.3979900931638608 -2.858534998591808
		-0.043693441686202567 0.39792068166460814 -2.7128776745640746
		0.30787584452949207 0.39788758344742509 -2.8584563960364626
		0.45353317453272995 0.39791018699904712 -3.209993122363382
		0.30795445986666764 0.39797525146549184 -3.5615624069347627
		-0.043582262810158964 0.3980446629647445 -3.7072197309624961
		-0.39515154902585364 0.39807776118192756 -3.5616410094901081
		;
createNode parentConstraint -n "yeah" -p "sensor_translate_knee";
	rename -uid "B1BEFDC7-8042-0786-9D68-2E985583DB1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.9248173326089697e-05 0.043965665735172355 
		-1.2359018491650642 ;
	setAttr ".tg[0].tor" -type "double3" 83.482939285220255 -0.27241989990430138 -2.5984431796493626 ;
	setAttr ".lr" -type "double3" -81.386031395476465 175.59430225528587 177.49740266510221 ;
	setAttr ".rst" -type "double3" -0.00032929417825863783 -0.25436095939162662 4.103522178056096e-05 ;
	setAttr ".rsrr" -type "double3" -3.1813311840712951e-15 7.7650260777917874e-18 2.4848083448933719e-17 ;
	setAttr -k on ".w0";
createNode transform -n "Ragdoll1";
	rename -uid "78E8B21C-D648-7DAB-BDBF-D78FDBD41A2A";
createNode transform -n "joint5_joint6" -p "Ragdoll1";
	rename -uid "704375AC-964B-1C7A-D334-39B2AAB1CE63";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape1" -p "joint5_joint6";
	rename -uid "D9F405E2-1241-9505-7AA1-8881C14BB012";
	setAttr -k off ".v";
	setAttr ".ms" 4;
	setAttr ".com" -type "float3" 1.4900037 0 0 ;
	setAttr ".fric" 0.10000000149011612;
	setAttr ".bdytyp" 2;
	setAttr ".len" 2.0860052108764648;
	setAttr ".rad" 0.2980007529258728;
	setAttr ".ext" -type "float3" 3 3 1 ;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" -2.2197402e-18 0.5166654 0.96615815 ;
	setAttr ".irot" -type "float3" 0.0039013047 0.0039013047 1.5707951 ;
	setAttr ".af" no;
createNode transform -n "joint6_joint7" -p "Ragdoll1";
	rename -uid "00B959F2-8845-F2D3-B515-9F9F1124C67B";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape2" -p "joint6_joint7";
	rename -uid "BB56864A-5548-D65D-478C-F7BC3380F5C9";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.61922234 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.86691123247146606;
	setAttr ".rad" 0.12384446710348129;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" -2.786701e-18 3.4966502 0.95453227 ;
	setAttr ".irot" -type "float3" 0.0039013047 0.0039013047 1.5707951 ;
	setAttr ".af" no;
createNode transform -n "motor1" -p "Ragdoll1";
	rename -uid "50D5A854-4148-E466-9C85-D698E3D0C650";
	setAttr ".t" -type "double3" -2.7867008803561426e-18 3.4966501511020813 0.9545322450150121 ;
	setAttr ".r" -type "double3" 5143.8129176451948 0 0 ;
createNode bulletRigidBodyConstraintShape -n "motorShape1" -p "motor1";
	rename -uid "D5E532CC-3E40-6EA6-D823-5D9932E0A2C3";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 160 160 160 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 2;
	setAttr ".angcony" 1;
	setAttr ".angconz" 1;
	setAttr ".acmin" -type "float3" -91 -91 -91 ;
	setAttr ".acmax" -type "float3" 91 91 91 ;
createNode transform -n "joint7_joint8" -p "Ragdoll1";
	rename -uid "5B067B96-4D4F-F217-FB5D-AE8C34119F8C";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape3" -p "joint7_joint8";
	rename -uid "A2A00D1D-EF40-11E1-A041-33A50DAA66F7";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.65795535 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.92113745212554932;
	setAttr ".rad" 0.1315910667181015;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 1.3867462e-18 4.7350855 0.94970071 ;
	setAttr ".irot" -type "float3" -1.55709 1.55709 -1.5707951 ;
	setAttr ".af" no;
createNode transform -n "motor2" -p "Ragdoll1";
	rename -uid "8DA0BD43-3A46-FB15-EBA2-C5B7F64E2089";
	setAttr ".t" -type "double3" 1.3867461698637651e-18 4.7350853682025793 0.94970070333683987 ;
	setAttr ".r" -type "double3" 5143.8129176451948 0 0 ;
createNode bulletRigidBodyConstraintShape -n "motorShape2" -p "motor2";
	rename -uid "089A2174-B545-857F-75A6-06AD66065E7C";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 160 160 160 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 2;
	setAttr ".angcony" 1;
	setAttr ".angconz" 1;
	setAttr ".acmin" -type "float3" -91 -91 -91 ;
	setAttr ".acmax" -type "float3" 91 91 91 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "47AC1901-7047-0F92-B681-40A0ED3B9D9C";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "96D95D62-1748-A217-AC45-BE93204083FD";
createNode displayLayer -n "defaultLayer";
	rename -uid "5DB5BE6E-1041-77BA-1095-459CF275EB87";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D3A79E2E-024E-8BFE-2084-CD84977249B2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DC2A4185-A948-88E3-BD95-208D1B7F7327";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "ECFC7719-8649-81D0-52B2-6AB27F9F345F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "39596D1C-4946-7D9B-5AE2-51A65A70391A";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4A402B59-4C4A-2971-A332-BBA75E2F7B0D";
	setAttr ".version" -type "string" "3.1.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "EB87C0D1-3E49-50B8-A9DE-8585C7C88BE4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "3DB53BA1-8845-700E-80D7-CAABB7F2A4E5";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "15FC3B11-C64D-BED8-0337-B094B513C0D3";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3AD5205C-3342-F3AB-C67A-2B889DDD12AF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 637\n            -height 476\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 637\n            -height 595\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 3\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 3\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 637\\n    -height 595\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 3\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 637\\n    -height 595\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FC082DD9-9447-609F-C168-9F9136A4538F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 384 -ast 1 -aet 384 ";
	setAttr ".st" 6;
createNode shadingEngine -n "lambert2SG";
	rename -uid "FB3F0BA9-734F-F974-879E-C9A5B7DD0D23";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "ACD91551-404E-FEF5-5C04-72A0E8F03C6E";
createNode blinn -n "yellow";
	rename -uid "C386253E-4748-2101-EE30-98B5240CF25B";
	setAttr ".c" -type "float3" 1 0.77284271 0.23400003 ;
createNode lambert -n "black";
	rename -uid "AC9121CF-7C4A-CF5A-D87E-E18F965DAF5A";
	setAttr ".c" -type "float3" 0.057 0.057 0.057 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "BFE6BE4E-2E42-98E3-A9BE-AABD79675C46";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "173175C3-704C-6325-FAFC-6BBB88DD064E";
createNode pairBlend -n "translateRotate6";
	rename -uid "E04B5C36-434F-58E7-6FE2-7891E9DFB9B3";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "194C218B-964E-50EC-D9B5-FFA87417D9B5";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "5A7B5B17-0D4F-D8C1-9430-9A88B1E2C1D8";
	setAttr ".r" 0.25;
	setAttr ".h" 0.4;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySphere -n "polySphere1";
	rename -uid "F5889BAF-184B-873F-42B8-11B89AE7A91D";
	setAttr ".r" 0.25;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "38746F2B-8846-8175-531E-C9A498E4A526";
	setAttr ".r" 0.15;
	setAttr ".h" 1.2;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	rename -uid "020E185B-9A41-7B7C-F287-B883B056972B";
	setAttr ".cuv" 4;
createNode blinn -n "yellow1";
	rename -uid "1F40AAF3-4C4D-B521-E065-4EA64A416D23";
	setAttr ".c" -type "float3" 1 0.70185709 0.21399999 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "FD6DA273-1944-B3F4-76E5-9B99B9EB4EFB";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C8DB90AC-F84B-D6B9-AF8F-A6ACEF931DA3";
createNode blinn -n "black1";
	rename -uid "D3DC849E-D54C-A2C0-8379-8FA3C9F0A299";
	setAttr ".c" -type "float3" 0.050999999 0.050999999 0.050999999 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "3776C15A-A844-FD02-9DED-3187CD52244F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "320405A6-C248-3A50-9567-2DBAF6587946";
createNode pairBlend -n "translateRotate";
	rename -uid "8A469759-C041-039B-8B2D-078934E08ED8";
	setAttr ".it1" -type "double3" -2.2197402077618155e-18 0.51666539907455444 0.96615815162658691 ;
	setAttr ".ir1" -type "double3" 0.22352829259412807 0.22352829259412807 89.999927372397295 ;
createNode pairBlend -n "translateRotate7";
	rename -uid "023E2F9A-D04F-D6C4-CA34-22A160BE74D6";
	setAttr ".it1" -type "double3" -2.7867009665439301e-18 3.496650218963623 0.95453226566314697 ;
	setAttr ".ir1" -type "double3" 0.22352829259412807 0.22352829259412807 89.999927372397295 ;
createNode pairBlend -n "translateRotate8";
	rename -uid "F8F547ED-5146-6EE7-6BC9-E5AC18E18C16";
	setAttr ".it1" -type "double3" 1.3867461698637651e-18 4.7350854873657227 0.94970071315765381 ;
	setAttr ".ir1" -type "double3" -89.214687844277606 89.214687844277606 -89.999927372397295 ;
select -ne :time1;
	setAttr ".o" 143;
	setAttr ".unw" 143;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "joint5_parentConstraint1.crx" "joint5.rx";
connectAttr "joint5_parentConstraint1.cry" "joint5.ry";
connectAttr "joint5_parentConstraint1.crz" "joint5.rz";
connectAttr "joint5_parentConstraint1.ctx" "joint5.tx";
connectAttr "joint5_parentConstraint1.cty" "joint5.ty";
connectAttr "joint5_parentConstraint1.ctz" "joint5.tz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6_parentConstraint1.crx" "joint6.rx";
connectAttr "joint6_parentConstraint1.cry" "joint6.ry";
connectAttr "joint6_parentConstraint1.crz" "joint6.rz";
connectAttr "joint6_parentConstraint1.ctx" "joint6.tx";
connectAttr "joint6_parentConstraint1.cty" "joint6.ty";
connectAttr "joint6_parentConstraint1.ctz" "joint6.tz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_parentConstraint1.crx" "joint7.rx";
connectAttr "joint7_parentConstraint1.cry" "joint7.ry";
connectAttr "joint7_parentConstraint1.crz" "joint7.rz";
connectAttr "joint7_parentConstraint1.ctx" "joint7.tx";
connectAttr "joint7_parentConstraint1.cty" "joint7.ty";
connectAttr "joint7_parentConstraint1.ctz" "joint7.tz";
connectAttr "joint7.s" "joint8.is";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "polyCylinder2.out" "pCylinderShape3.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "joint7.ro" "joint7_parentConstraint1.cro";
connectAttr "joint7.pim" "joint7_parentConstraint1.cpim";
connectAttr "joint7.rp" "joint7_parentConstraint1.crp";
connectAttr "joint7.rpt" "joint7_parentConstraint1.crt";
connectAttr "joint7.jo" "joint7_parentConstraint1.cjo";
connectAttr "joint7_joint8.t" "joint7_parentConstraint1.tg[0].tt";
connectAttr "joint7_joint8.rp" "joint7_parentConstraint1.tg[0].trp";
connectAttr "joint7_joint8.rpt" "joint7_parentConstraint1.tg[0].trt";
connectAttr "joint7_joint8.r" "joint7_parentConstraint1.tg[0].tr";
connectAttr "joint7_joint8.ro" "joint7_parentConstraint1.tg[0].tro";
connectAttr "joint7_joint8.s" "joint7_parentConstraint1.tg[0].ts";
connectAttr "joint7_joint8.pm" "joint7_parentConstraint1.tg[0].tpm";
connectAttr "joint7_parentConstraint1.w0" "joint7_parentConstraint1.tg[0].tw";
connectAttr "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.crx" "sensor_rotation_joint2Rotation.rx"
		;
connectAttr "sensor_rotation_joint2Rotation.ro" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.cro"
		;
connectAttr "sensor_rotation_joint2Rotation.pim" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.cpim"
		;
connectAttr "joint7.r" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.tg[0].tr"
		;
connectAttr "joint7.ro" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.tg[0].tro"
		;
connectAttr "joint7.pm" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.tg[0].tpm"
		;
connectAttr "joint7.jo" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.tg[0].tjo"
		;
connectAttr "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.w0" "|joint5|joint6|sensor_rotation_joint2Rotation|yeah.tg[0].tw"
		;
connectAttr "joint6.ro" "joint6_parentConstraint1.cro";
connectAttr "joint6.pim" "joint6_parentConstraint1.cpim";
connectAttr "joint6.rp" "joint6_parentConstraint1.crp";
connectAttr "joint6.rpt" "joint6_parentConstraint1.crt";
connectAttr "joint6.jo" "joint6_parentConstraint1.cjo";
connectAttr "joint6_joint7.t" "joint6_parentConstraint1.tg[0].tt";
connectAttr "joint6_joint7.rp" "joint6_parentConstraint1.tg[0].trp";
connectAttr "joint6_joint7.rpt" "joint6_parentConstraint1.tg[0].trt";
connectAttr "joint6_joint7.r" "joint6_parentConstraint1.tg[0].tr";
connectAttr "joint6_joint7.ro" "joint6_parentConstraint1.tg[0].tro";
connectAttr "joint6_joint7.s" "joint6_parentConstraint1.tg[0].ts";
connectAttr "joint6_joint7.pm" "joint6_parentConstraint1.tg[0].tpm";
connectAttr "joint6_parentConstraint1.w0" "joint6_parentConstraint1.tg[0].tw";
connectAttr "|joint5|sensor_rotation_joint1Rotation|yeah.crx" "sensor_rotation_joint1Rotation.rx"
		;
connectAttr "sensor_rotation_joint1Rotation.ro" "|joint5|sensor_rotation_joint1Rotation|yeah.cro"
		;
connectAttr "sensor_rotation_joint1Rotation.pim" "|joint5|sensor_rotation_joint1Rotation|yeah.cpim"
		;
connectAttr "joint6.r" "|joint5|sensor_rotation_joint1Rotation|yeah.tg[0].tr";
connectAttr "joint6.ro" "|joint5|sensor_rotation_joint1Rotation|yeah.tg[0].tro";
connectAttr "joint6.pm" "|joint5|sensor_rotation_joint1Rotation|yeah.tg[0].tpm";
connectAttr "joint6.jo" "|joint5|sensor_rotation_joint1Rotation|yeah.tg[0].tjo";
connectAttr "|joint5|sensor_rotation_joint1Rotation|yeah.w0" "|joint5|sensor_rotation_joint1Rotation|yeah.tg[0].tw"
		;
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "joint5.ro" "joint5_parentConstraint1.cro";
connectAttr "joint5.pim" "joint5_parentConstraint1.cpim";
connectAttr "joint5.rp" "joint5_parentConstraint1.crp";
connectAttr "joint5.rpt" "joint5_parentConstraint1.crt";
connectAttr "joint5.jo" "joint5_parentConstraint1.cjo";
connectAttr "joint5_joint6.t" "joint5_parentConstraint1.tg[0].tt";
connectAttr "joint5_joint6.rp" "joint5_parentConstraint1.tg[0].trp";
connectAttr "joint5_joint6.rpt" "joint5_parentConstraint1.tg[0].trt";
connectAttr "joint5_joint6.r" "joint5_parentConstraint1.tg[0].tr";
connectAttr "joint5_joint6.ro" "joint5_parentConstraint1.tg[0].tro";
connectAttr "joint5_joint6.s" "joint5_parentConstraint1.tg[0].ts";
connectAttr "joint5_joint6.pm" "joint5_parentConstraint1.tg[0].tpm";
connectAttr "joint5_parentConstraint1.w0" "joint5_parentConstraint1.tg[0].tw";
connectAttr ":time1.o" "bulletSolverShape1.ct";
connectAttr "floorShape.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape1.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape2.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape3.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "motorShape1.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "motorShape2.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "|sensor_translate_body|yeah.ctx" "sensor_translate_body.tx";
connectAttr "|sensor_translate_body|yeah.cty" "sensor_translate_body.ty";
connectAttr "|sensor_translate_body|yeah.ctz" "sensor_translate_body.tz";
connectAttr "sensor_translate_body.pim" "|sensor_translate_body|yeah.cpim";
connectAttr "sensor_translate_body.rp" "|sensor_translate_body|yeah.crp";
connectAttr "sensor_translate_body.rpt" "|sensor_translate_body|yeah.crt";
connectAttr "joint5.t" "|sensor_translate_body|yeah.tg[0].tt";
connectAttr "joint5.rp" "|sensor_translate_body|yeah.tg[0].trp";
connectAttr "joint5.rpt" "|sensor_translate_body|yeah.tg[0].trt";
connectAttr "joint5.pm" "|sensor_translate_body|yeah.tg[0].tpm";
connectAttr "|sensor_translate_body|yeah.w0" "|sensor_translate_body|yeah.tg[0].tw"
		;
connectAttr "|sensor_rotation_bodyRotation|yeah.crx" "sensor_rotation_bodyRotation.rx"
		;
connectAttr "yeah1.ctx" "sensor_rotation_bodyRotation.tx";
connectAttr "yeah1.cty" "sensor_rotation_bodyRotation.ty";
connectAttr "yeah1.ctz" "sensor_rotation_bodyRotation.tz";
connectAttr "sensor_rotation_bodyRotation.ro" "|sensor_rotation_bodyRotation|yeah.cro"
		;
connectAttr "sensor_rotation_bodyRotation.pim" "|sensor_rotation_bodyRotation|yeah.cpim"
		;
connectAttr "joint5.r" "|sensor_rotation_bodyRotation|yeah.tg[0].tr";
connectAttr "joint5.ro" "|sensor_rotation_bodyRotation|yeah.tg[0].tro";
connectAttr "joint5.pm" "|sensor_rotation_bodyRotation|yeah.tg[0].tpm";
connectAttr "joint5.jo" "|sensor_rotation_bodyRotation|yeah.tg[0].tjo";
connectAttr "|sensor_rotation_bodyRotation|yeah.w0" "|sensor_rotation_bodyRotation|yeah.tg[0].tw"
		;
connectAttr "sensor_rotation_bodyRotation.pim" "yeah1.cpim";
connectAttr "sensor_rotation_bodyRotation.rp" "yeah1.crp";
connectAttr "sensor_rotation_bodyRotation.rpt" "yeah1.crt";
connectAttr "joint5.t" "yeah1.tg[0].tt";
connectAttr "joint5.rp" "yeah1.tg[0].trp";
connectAttr "joint5.rpt" "yeah1.tg[0].trt";
connectAttr "joint5.pm" "yeah1.tg[0].tpm";
connectAttr "yeah1.w0" "yeah1.tg[0].tw";
connectAttr "translateRotate6.otx" "floor.tx";
connectAttr "translateRotate6.oty" "floor.ty";
connectAttr "translateRotate6.otz" "floor.tz";
connectAttr "translateRotate6.orx" "floor.rx";
connectAttr "translateRotate6.ory" "floor.ry";
connectAttr "translateRotate6.orz" "floor.rz";
connectAttr "floor.wm" "floorShape.inwmat";
connectAttr "floor.pim" "floorShape.inpim";
connectAttr "bulletSolverShape1.solinitdata" "floorShape.solinit";
connectAttr "bulletSolverShape1.soldata" "floorShape.solup";
connectAttr "bulletSolverShape1.st" "floorShape.st";
connectAttr "bulletSolverShape1.ct" "floorShape.ct";
connectAttr "floor.rp" "floorShape.ptrs";
connectAttr "nurbsCircle1_pointConstraint1.ctx" "sensor_translate_foot.tx";
connectAttr "nurbsCircle1_pointConstraint1.cty" "sensor_translate_foot.ty";
connectAttr "nurbsCircle1_pointConstraint1.ctz" "sensor_translate_foot.tz";
connectAttr "makeNurbCircle1.oc" "sensor_translate_footShape.cr";
connectAttr "sensor_translate_foot.pim" "nurbsCircle1_pointConstraint1.cpim";
connectAttr "sensor_translate_foot.rp" "nurbsCircle1_pointConstraint1.crp";
connectAttr "sensor_translate_foot.rpt" "nurbsCircle1_pointConstraint1.crt";
connectAttr "joint8.t" "nurbsCircle1_pointConstraint1.tg[0].tt";
connectAttr "joint8.rp" "nurbsCircle1_pointConstraint1.tg[0].trp";
connectAttr "joint8.rpt" "nurbsCircle1_pointConstraint1.tg[0].trt";
connectAttr "joint8.pm" "nurbsCircle1_pointConstraint1.tg[0].tpm";
connectAttr "nurbsCircle1_pointConstraint1.w0" "nurbsCircle1_pointConstraint1.tg[0].tw"
		;
connectAttr "|sensor_translate_knee|yeah.ctx" "sensor_translate_knee.tx";
connectAttr "|sensor_translate_knee|yeah.cty" "sensor_translate_knee.ty";
connectAttr "|sensor_translate_knee|yeah.ctz" "sensor_translate_knee.tz";
connectAttr "|sensor_translate_knee|yeah.crx" "sensor_translate_knee.rx";
connectAttr "|sensor_translate_knee|yeah.cry" "sensor_translate_knee.ry";
connectAttr "|sensor_translate_knee|yeah.crz" "sensor_translate_knee.rz";
connectAttr "sensor_translate_knee.ro" "|sensor_translate_knee|yeah.cro";
connectAttr "sensor_translate_knee.pim" "|sensor_translate_knee|yeah.cpim";
connectAttr "sensor_translate_knee.rp" "|sensor_translate_knee|yeah.crp";
connectAttr "sensor_translate_knee.rpt" "|sensor_translate_knee|yeah.crt";
connectAttr "joint6.t" "|sensor_translate_knee|yeah.tg[0].tt";
connectAttr "joint6.rp" "|sensor_translate_knee|yeah.tg[0].trp";
connectAttr "joint6.rpt" "|sensor_translate_knee|yeah.tg[0].trt";
connectAttr "joint6.r" "|sensor_translate_knee|yeah.tg[0].tr";
connectAttr "joint6.ro" "|sensor_translate_knee|yeah.tg[0].tro";
connectAttr "joint6.s" "|sensor_translate_knee|yeah.tg[0].ts";
connectAttr "joint6.pm" "|sensor_translate_knee|yeah.tg[0].tpm";
connectAttr "joint6.jo" "|sensor_translate_knee|yeah.tg[0].tjo";
connectAttr "joint6.ssc" "|sensor_translate_knee|yeah.tg[0].tsc";
connectAttr "joint6.is" "|sensor_translate_knee|yeah.tg[0].tis";
connectAttr "|sensor_translate_knee|yeah.w0" "|sensor_translate_knee|yeah.tg[0].tw"
		;
connectAttr "translateRotate.otx" "joint5_joint6.tx";
connectAttr "translateRotate.oty" "joint5_joint6.ty";
connectAttr "translateRotate.otz" "joint5_joint6.tz";
connectAttr "translateRotate.orx" "joint5_joint6.rx";
connectAttr "translateRotate.ory" "joint5_joint6.ry";
connectAttr "translateRotate.orz" "joint5_joint6.rz";
connectAttr "joint5_joint6.wm" "bulletRigidBodyShape1.inwmat";
connectAttr "joint5_joint6.pim" "bulletRigidBodyShape1.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape1.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape1.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape1.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape1.ct";
connectAttr "joint5_joint6.rp" "bulletRigidBodyShape1.ptrs";
connectAttr "translateRotate7.otx" "joint6_joint7.tx";
connectAttr "translateRotate7.oty" "joint6_joint7.ty";
connectAttr "translateRotate7.otz" "joint6_joint7.tz";
connectAttr "translateRotate7.orx" "joint6_joint7.rx";
connectAttr "translateRotate7.ory" "joint6_joint7.ry";
connectAttr "translateRotate7.orz" "joint6_joint7.rz";
connectAttr "joint6_joint7.wm" "bulletRigidBodyShape2.inwmat";
connectAttr "joint6_joint7.pim" "bulletRigidBodyShape2.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape2.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape2.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape2.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape2.ct";
connectAttr "joint6_joint7.rp" "bulletRigidBodyShape2.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motorShape1.solinit";
connectAttr "bulletRigidBodyShape1.rbdata" "motorShape1.rba";
connectAttr "bulletRigidBodyShape2.rbdata" "motorShape1.rbb";
connectAttr "bulletSolverShape1.st" "motorShape1.st";
connectAttr "bulletSolverShape1.ct" "motorShape1.ct";
connectAttr "translateRotate8.otx" "joint7_joint8.tx";
connectAttr "translateRotate8.oty" "joint7_joint8.ty";
connectAttr "translateRotate8.otz" "joint7_joint8.tz";
connectAttr "translateRotate8.orx" "joint7_joint8.rx";
connectAttr "translateRotate8.ory" "joint7_joint8.ry";
connectAttr "translateRotate8.orz" "joint7_joint8.rz";
connectAttr "joint7_joint8.wm" "bulletRigidBodyShape3.inwmat";
connectAttr "joint7_joint8.pim" "bulletRigidBodyShape3.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape3.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape3.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape3.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape3.ct";
connectAttr "joint7_joint8.rp" "bulletRigidBodyShape3.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motorShape2.solinit";
connectAttr "bulletRigidBodyShape2.rbdata" "motorShape2.rba";
connectAttr "bulletRigidBodyShape3.rbdata" "motorShape2.rbb";
connectAttr "bulletSolverShape1.st" "motorShape2.st";
connectAttr "bulletSolverShape1.ct" "motorShape2.ct";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "yellow.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "yellow.msg" "materialInfo1.m";
connectAttr "black.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "black.msg" "materialInfo2.m";
connectAttr "floorShape.sot" "translateRotate6.it2";
connectAttr "floorShape.sor" "translateRotate6.ir2";
connectAttr "floorShape.isdriven" "translateRotate6.w";
connectAttr "yellow1.oc" "blinn1SG.ss";
connectAttr "pCylinderShape3.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape4.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "yellow1.msg" "materialInfo3.m";
connectAttr "black1.oc" "blinn2SG.ss";
connectAttr "pCylinderShape2.iog" "blinn2SG.dsm" -na;
connectAttr "pSphereShape1.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape1.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo4.sg";
connectAttr "black1.msg" "materialInfo4.m";
connectAttr "bulletRigidBodyShape1.sot" "translateRotate.it2";
connectAttr "bulletRigidBodyShape1.sor" "translateRotate.ir2";
connectAttr "bulletRigidBodyShape1.isdriven" "translateRotate.w";
connectAttr "bulletRigidBodyShape2.sot" "translateRotate7.it2";
connectAttr "bulletRigidBodyShape2.sor" "translateRotate7.ir2";
connectAttr "bulletRigidBodyShape2.isdriven" "translateRotate7.w";
connectAttr "bulletRigidBodyShape3.sot" "translateRotate8.it2";
connectAttr "bulletRigidBodyShape3.sor" "translateRotate8.ir2";
connectAttr "bulletRigidBodyShape3.isdriven" "translateRotate8.w";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "yellow.msg" ":defaultShaderList1.s" -na;
connectAttr "black.msg" ":defaultShaderList1.s" -na;
connectAttr "yellow1.msg" ":defaultShaderList1.s" -na;
connectAttr "black1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of forwardCrawler_Ver4_ShortenJoint1ForNonStraying.ma
