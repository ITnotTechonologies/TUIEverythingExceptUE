//Maya ASCII 2018 scene
//Name: missile.ma
//Last modified: Mon, Jun 07, 2021 05:05:13 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" "mtoa" "2.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "vrayBuild" "3.60.01 fedb29f";
createNode transform -s -n "persp";
	rename -uid "9E829D22-4421-7E8E-40E4-2A9DD4E844C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -13.673120628254811 49.508207026739242 69.104236082067516 ;
	setAttr ".r" -type "double3" -25.538352729242753 709.79999999977554 -8.0790715171662234e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "12CE6F62-4D4A-1205-3A71-4CA2D201D3A1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 77.43826134392134;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B88CF6D0-4B1A-077A-5D7A-3BB47358D6C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.25486314033640256 1000.1018218856321 0.0126650443929337 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "76386DCB-436F-A700-C3C6-828D01702985";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1018218856321;
	setAttr ".ow" 8.2564612877743482;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -1.2283272283272231 0 1.4612840862839089 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3B36651D-4155-F702-B0AB-A7A654370DBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9C19CC0A-40BE-9363-8569-70914AB8F525";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 155.34921886149698;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E83269A3-4FC2-3AB9-5031-18ABB09F754D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E5605A79-4947-EDAC-1C08-CAA2CBB4D617";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder3";
	rename -uid "F9C9E47E-43FD-934C-076A-FA95C151FE32";
	setAttr ".t" -type "double3" 0 16.454146960161928 0 ;
	setAttr ".s" -type "double3" 1.5665765125736435 11.552790164957056 1.5665765125736435 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "39791398-46E2-3C8C-638E-9E8C50006FB0";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53708088397979736 0.50000002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "46417E4C-40C6-072A-B01D-D8834E924B56";
	setAttr ".t" -type "double3" 0 7.9048103041039308 0 ;
	setAttr ".s" -type "double3" 10.731069813606663 5.7434457710338895 0.11873730974232148 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "07C4BE3A-479D-8D3B-EC69-AA92D8CA875F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "937BC52D-430A-A2C2-48DA-CE98691E10D9";
	setAttr ".t" -type "double3" 0 7.9048103041039308 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 10.731069813606663 5.7434457710338895 0.11873730974232148 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "E2717C35-4717-A755-45A3-8299D0E74A83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 -0.72320026 0 0 -0.72320026 
		0 0 -0.72320026 0 0 -0.72320026 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	rename -uid "8056D657-4F3B-2BFB-C53F-C99AA8673F4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "aiSkyDomeLight1";
	rename -uid "9EBF16D3-4C5C-BA96-F384-0C88350CBCD3";
	setAttr ".r" -type "double3" 0 106.90607642856662 0 ;
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "A621F2D0-4187-201B-24E1-E58121725E06";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".camera" 0;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "left";
	rename -uid "3D78A7A3-4201-5C57-AF56-CF936B9D8C9E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1247.686414207828 22.804232804232804 -2.1164021164021198 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "B655EE80-4066-8198-9DEC-F4A735856309";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1247.686414207828;
	setAttr ".ow" 48.730284392482488;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube3";
	rename -uid "3D87EC1A-4C9D-404A-8E03-6A999007B5B6";
	setAttr ".t" -type "double3" 13.004624296398877 7.9048103041039308 0 ;
	setAttr ".s" -type "double3" 10.731069813606663 5.7434457710338895 0.11873730974232148 ;
createNode transform -n "transform3" -p "pCube3";
	rename -uid "5712C320-4370-8954-3F12-9EBDF7466001";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform3";
	rename -uid "E7E2812E-44D8-807A-D109-9D90B74872FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.46370047 0.5 0.46370047 0.75 0.46370047 0 0.46370047
		 1 0.46370047 0.25 0.53629798 0.5 0.53629798 0.75 0.53629798 0 0.53629798 1 0.53629798
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.7232002 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.7232002 0 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.14519817 0.5 -0.5 -0.14519817 -0.5 -0.5
		 -0.14519817 -0.5 0.5 -0.14519817 0.5 0.5 0.14519182 0.5 -0.5 0.14519182 -0.5 -0.5
		 0.14519182 -0.5 0.5 0.14519182 0.5 0.5;
	setAttr -s 28 ".ed[0:27]"  0 10 0 2 11 0 4 8 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 12 0 9 13 0 8 9 1 10 14 0 9 10 1 11 15 0 10 11 1
		 11 8 1 12 5 0 13 7 0 12 13 1 14 1 0 13 14 1 15 3 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 18 -2 -5
		mu 0 4 0 16 18 2
		f 4 1 19 -3 -7
		mu 0 4 2 18 14 4
		f 4 2 14 -4 -9
		mu 0 4 4 14 15 6
		f 4 3 16 -1 -11
		mu 0 4 6 15 17 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 22 -14 -15
		mu 0 4 14 19 20 15
		f 4 -17 13 24 -16
		mu 0 4 17 15 20 22
		f 4 -19 15 26 -18
		mu 0 4 18 16 21 23
		f 4 -20 17 27 -13
		mu 0 4 14 18 23 19
		f 4 20 9 -22 -23
		mu 0 4 19 5 7 20
		f 4 -25 21 11 -24
		mu 0 4 22 20 7 9
		f 4 -27 23 5 -26
		mu 0 4 23 21 1 3
		f 4 -28 25 7 -21
		mu 0 4 19 23 3 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "DCE0B775-4800-1933-E9E1-11A0D2E27D37";
	setAttr ".t" -type "double3" 13.004624296398877 7.9048103041039308 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 10.731069813606663 5.7434457710338895 0.11873730974232148 ;
createNode mesh -n "polySurfaceShape1" -p "pCube4";
	rename -uid "7FD1ECB6-4687-AA8F-067B-FAB44C3A3969";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform2" -p "pCube4";
	rename -uid "091A5E45-4323-CED3-CD25-F88C285DC243";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform2";
	rename -uid "2F1FF333-4A0F-A485-98DD-8AB84E1CB2BB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.53634292 0.5 0.53634292 0.75 0.53634292 0 0.53634292
		 1 0.53634292 0.25 0.46357581 0.5 0.46357581 0.75 0.46357581 0 0.46357581 1 0.46357581
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 -0.72320026 0 0 -0.72320026 
		0 0 -0.72320026 0 0 -0.72320026 0;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.14537174 0.5 -0.5 0.14537174 -0.5 -0.5
		 0.14537174 -0.5 0.5 0.14537174 0.5 0.5 -0.14569676 0.5 -0.5 -0.14569676 -0.5 -0.5
		 -0.14569676 -0.5 0.5 -0.14569676 0.5 0.5;
	setAttr -s 28 ".ed[0:27]"  0 14 0 2 15 0 4 12 0 6 13 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 5 0 9 7 0 8 9 1 10 1 0 9 10 1 11 3 0 10 11 1 11 8 1
		 12 8 0 13 9 0 12 13 1 14 10 0 13 14 1 15 11 0 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 26 -2 -5
		mu 0 4 0 21 23 2
		f 4 1 27 -3 -7
		mu 0 4 2 23 19 4
		f 4 2 22 -4 -9
		mu 0 4 4 19 20 6
		f 4 3 24 -1 -11
		mu 0 4 6 20 22 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 9 -14 -15
		mu 0 4 14 5 7 15
		f 4 -17 13 11 -16
		mu 0 4 17 15 7 9
		f 4 -19 15 5 -18
		mu 0 4 18 16 1 3
		f 4 -20 17 7 -13
		mu 0 4 14 18 3 5
		f 4 20 14 -22 -23
		mu 0 4 19 14 15 20
		f 4 -25 21 16 -24
		mu 0 4 22 20 15 17
		f 4 -27 23 18 -26
		mu 0 4 23 21 16 18
		f 4 -28 25 19 -21
		mu 0 4 19 23 18 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4";
	rename -uid "9B5A4B1C-4531-472A-8206-758380BB76DB";
	setAttr ".t" -type "double3" 13.004624296398877 16.454146960161928 0 ;
	setAttr ".s" -type "double3" 1.5665765125736435 11.552790164957056 1.5665765125736435 ;
createNode transform -n "transform1" -p "pCylinder4";
	rename -uid "E6A2C50F-493E-7CB1-6E35-0384128DEC7F";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform1";
	rename -uid "88BB6A87-42BE-9293-F35E-CA9FE062D2A7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 3 "f[41:82]" "f[84]" "f[86:106]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[107:147]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 3 "f[0:40]" "f[83]" "f[85]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.53708088397979736 0.50000002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 199 ".uvst[0].uvsp[0:198]" -type "float2" 0.48965031 0 0.47954315
		 0 0.77444172 0.042840153 0.79886687 0.042842329 0.46991551 0 0.79886687 0.95715767
		 0.46099299 0 0.77444178 0.95715988 0.45298475 0 0.82329029 0.042845905 0.44607854
		 0 0.82329029 0.9571541 0.44043624 0 0.84771132 0.042850763 0.43619001 0 0.84771132
		 0.95714927 0.43343943 0 0.87212914 0.042856842 0.43224895 0 0.87212914 0.95714319
		 0.43264657 0 0.89654315 0.042863965 0.43462288 0 0.89654315 0.95713603 0.43813157
		 0 0.9209528 0.042871952 0.44309038 0 0.9209528 0.95712805 0.44938308 0 0.94535768
		 0.042880654 0.45686227 0 0.94535768 0.95711935 0.46535254 0 0.96975732 0.042889833
		 0.47465491 0 0.96975732 0.95711017 0.48455131 0 0.49480987 0 0.99415159 0.95710075
		 0.50519001 0 0.018540442 0.042908818 0.51544857 0 0.018540442 0.95709121 0.52534509
		 0 0.042923838 0.042918146 0.53464746 0 0.042923838 0.95708185 0.54313767 0 0.067301959
		 0.042927116 0.55061686 0 0.067301959 0.95707291 0.55690956 0 0.091675073 0.042935461
		 0.56186843 0 0.091675073 0.95706451 0.56537712 0 0.11604366 0.042943031 0.56735349
		 0 0.11604366 0.957057 0.56775105 0 0.14040813 0.042949617 0.56656063 0 0.14040813
		 0.95705038 0.56380999 0 0.16476917 0.042955101 0.55956376 0 0.16476917 0.9570449
		 0.55392146 0 0.18912742 0.042959303 0.54701531 0 0.18912742 0.95704067 0.53900707
		 0 0.2134836 0.042962164 0.53008449 0 0.2134836 0.95703781 0.52045691 0 0.23783857
		 0.042963624 0.51034975 0 0.23783857 0.95703638 0.5 0 0.26219311 0.042963624 0.5 0
		 0.48965031 0 0.26219314 0.95703638 0.28654808 0.042962193 0.47954315 0 0.48965031
		 0 0.5 0 0.46991551 0 0.46099299 0 0.45298475 0 0.44607854 0 0.44043624 0 0.43619001
		 0 0.43343943 0 0.43224895 0 0.43264657 0 0.43462288 0 0.43813157 0 0.44309038 0 0.44938308
		 0 0.45686227 0 0.46535254 0 0.47465491 0 0.48455131 0 0.49480987 0 0.5 0 0.61890221
		 0.68843985 0.62499976 0.68843985 0.5 0.84360123 0.65625 0.84375 0.65441877 0.86760145
		 0.64896816 0.89089382 0.64002585 0.91308123 0.62780142 0.93364358 0.61258143 0.95209885
		 0.59472269 0.96801448 0.57464367 0.98101753 0.55281508 0.99080312 0.52974856 0.99714196
		 0.50598472 0.99988532 0.48208067 0.99896908 0.61890221 0.68843985 0.62499976 0.68843985
		 0.65441877 0.81989866 0.64896816 0.7966063 0.64002585 0.77441889 0.62780142 0.75385654
		 0.61258149 0.73540127 0.59472275 0.71948558 0.57464373 0.70648253 0.5528152 0.69669694
		 0.52974868 0.69035816 0.50598484 0.68761468 0.48208076 0.68853092 0.45859671 0.69308537
		 0.43608308 0.70117128 0.41506761 0.71259916 0.39604288 0.72710103 0.37945485 0.74433708
		 0.36569226 0.76390326 0.35507774 0.78534102 0.3478601 0.80814785 0.34420845 0.83178914
		 0.34420845 0.85571074 0.34786004 0.87935209 0.35507768 0.90215886 0.3656922 0.92359662
		 0.37945476 0.9431628 0.39604279 0.96039891 0.41506752 0.97490084 0.43608296 0.98632866
		 0.45859659 0.99441457 0.28654808 0.95703781 0.31090429 0.042959303 0.31090432 0.95704067
		 0.33526254 0.042955071 0.33526254 0.95704496 0.35962355 0.042949617 0.35962355 0.95705038
		 0.38398805 0.042943031 0.38398805 0.957057 0.40835661 0.042935461 0.40835661 0.95706451
		 0.43272975 0.042927116 0.43272975 0.95707285 0.4571079 0.042918146 0.4571079 0.95708185
		 0.48149127 0.042908788 0.48149127 0.95709121 0.50588012 0.042899281 0.50588012 0.95710075
		 0.53027439 0.042889833 0.53027439 0.95711017 0.55467409 0.042880654 0.55467409 0.95711935
		 0.57907891 0.042871952 0.57907891 0.95712805 0.60348856 0.042863965 0.60348856 0.95713603
		 0.62790263 0.042856842 0.62790263 0.95714319 0.65232044 0.042850792 0.65232044 0.95714921
		 0.67674148 0.042845905 0.67674142 0.9571541 0.7011649 0.042842358 0.70116484 0.95715761
		 0.72558999 0.042840183 0.72558999 0.95715982 0.75001591 0.042839438 0.75001591 0.95716059
		 0.75001591 0.042839438 0.77444172 0.042840153 0.77444172 0.95715988 0.75001591 0.95716059
		 0.99415159 0.042899281 1.018540382 0.042908818 1.018540382 0.95709121;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 109 ".vt[0:108]"  0.98828024 -1 -0.15264858 0.95339638 -1 -0.3017199
		 0.89616561 -1 -0.44371915 0.81792957 -1 -0.57531798 0.72052181 -1 -0.69343191 0.60622573 -1 -0.79529232
		 0.47772023 -1 -0.87851173 0.33801737 -1 -0.9411397 0.19039162 -1 -0.98170799 0.038303249 -1 -0.99926609
		 -0.1146829 -1 -0.993402 -0.26498097 -1 -0.96425349 -0.4090682 -1 -0.91250366 -0.54356706 -1 -0.83936554
		 -0.66532528 -1 -0.74655342 -0.77148885 -1 -0.63624269 -0.85956937 -1 -0.51101899
		 -0.92750221 -1 -0.37381741 -0.97369528 -1 -0.22785383 -0.99706578 -1 -0.076549597
		 -0.99706578 -1 0.076548815 -0.97369552 -1 0.22785321 -0.92750263 -1 0.37381673 -0.85956967 -1 0.51101828
		 -0.77148938 -1 0.63624215 -0.66532588 -1 0.74655306 -0.54356772 -1 0.83936524 -0.40906888 -1 0.91250354
		 -0.26498166 -1 0.96425337 -0.11468361 -1 0.99340194 0.038302585 -1 0.99926609 0.190391 -1 0.98170829
		 0.33801675 -1 0.94114 0.47771969 -1 0.87851232 0.60622525 -1 0.79529285 0.72052151 -1 0.69343245
		 0.81792927 -1 0.57531857 0.89616555 -1 0.4437198 0.95339638 -1 0.30172053 0.98828042 -1 0.15264918
		 1 -1 0 0.98828024 1.000000596046 -0.1526487 0.95339638 1.000000596046 -0.3017199
		 0.89616561 1.000000596046 -0.44371915 0.81792957 1.000000596046 -0.57531798 0.72052181 1.000000596046 -0.69343191
		 0.60622573 1.000000596046 -0.79529232 0.47772023 1.000000596046 -0.87851173 0.33801737 1.000000596046 -0.9411397
		 0.19039162 1.000000596046 -0.98170799 0.038303249 1.000000596046 -0.99926609 -0.1146829 1.000000596046 -0.993402
		 -0.26498097 1.000000596046 -0.96425349 -0.4090682 1.000000596046 -0.91250366 -0.54356706 1.000000596046 -0.83936554
		 -0.66532528 1.000000596046 -0.74655342 -0.77148885 1.000000596046 -0.63624269 -0.85956937 1.000000596046 -0.51101899
		 -0.92750221 1.000000596046 -0.37381741 -0.97369528 1.000000596046 -0.22785383 -0.99706578 1.000000596046 -0.076549597
		 -0.99706578 1.000000596046 0.076548934 -0.97369552 1.000000596046 0.22785321 -0.92750263 1.000000596046 0.37381679
		 -0.85956967 1.000000596046 0.5110184 -0.77148938 1.000000596046 0.63624215 -0.66532588 1.000000596046 0.74655306
		 -0.54356772 1.000000596046 0.83936524 -0.40906888 1.000000596046 0.91250354 -0.26498169 1.000000596046 0.96425337
		 -0.11468361 1.000000596046 0.993402 0.038302556 1.000000596046 0.99926615 0.19039093 1.000000596046 0.98170829
		 0.33801672 1.000000596046 0.94114006 0.47771969 1.000000596046 0.87851232 0.60622525 1.000000596046 0.79529291
		 0.72052151 1.000000596046 0.69343257 0.81792927 1.000000596046 0.57531869 0.89616555 1.000000596046 0.44371986
		 0.95339638 1.000000596046 0.30172065 0.98828042 1.000000596046 0.1526493 1 1.000000596046 0
		 0 -1 0 1 -1 0 0.98828024 -1 -0.15264858 0.98828024 1.000000596046 -0.15264858 1 1.000000596046 0
		 0.98828024 -1 -0.15264858 0.95339638 -1 -0.3017199 0 -1 0 0.89616561 -1 -0.44371915
		 0.81792957 -1 -0.57531798 0.72052181 -1 -0.69343191 0.60622573 -1 -0.79529232 0.47772023 -1 -0.87851173
		 0.33801737 -1 -0.9411397 0.19039162 -1 -0.98170799 0.038303249 -1 -0.99926609 -0.1146829 -1 -0.993402
		 -0.26498097 -1 -0.96425349 -0.4090682 -1 -0.91250366 -0.54356706 -1 -0.83936554 -0.66532528 -1 -0.74655342
		 -0.77148885 -1 -0.63624269 -0.85956937 -1 -0.51101899 -0.92750221 -1 -0.37381741
		 -0.97369528 -1 -0.22785383 -0.99706578 -1 -0.076549597 6.8634883e-08 1.83656919 -1.9767267e-06;
	setAttr -s 255 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 0 0 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 41 0 0 41 0 1 42 1 2 43 1 3 44 1
		 4 45 1 5 46 1 6 47 1 7 48 1 8 49 1 9 50 1 10 51 1 11 52 1 12 53 1 13 54 1 14 55 1
		 15 56 1 16 57 1 17 58 1 18 59 1 19 60 1 20 61 1 21 62 1 22 63 1 23 64 1 24 65 1 25 66 1
		 26 67 1 27 68 1 28 69 1 29 70 1 30 71 1 31 72 1 32 73 1 33 74 1 34 75 1 35 76 1 36 77 1
		 37 78 1 38 79 1 39 80 1 40 81 0 82 0 0 82 19 0 82 20 1 82 21 1 82 22 1 82 23 1 82 24 1
		 82 25 1 82 26 1 82 27 1 82 28 1 82 29 1 82 30 1 82 31 1 82 32 1 82 33 1 82 34 1 82 35 1
		 82 36 1 82 37 1 82 38 1 82 39 1 82 40 1 40 83 0 0 84 0 83 84 0 41 85 0 84 85 0 81 86 0
		 86 85 0 83 86 0 0 87 0 1 88 0 87 88 0 82 89 0 89 87 0 89 88 1 2 90 0 88 90 0 89 90 1
		 3 91 0 90 91 0 89 91 1;
	setAttr ".ed[166:254]" 4 92 0 91 92 0 89 92 1 5 93 0 92 93 0 89 93 1 6 94 0
		 93 94 0 89 94 1 7 95 0 94 95 0 89 95 1 8 96 0 95 96 0 89 96 1 9 97 0 96 97 0 89 97 1
		 10 98 0 97 98 0 89 98 1 11 99 0 98 99 0 89 99 1 12 100 0 99 100 0 89 100 1 13 101 0
		 100 101 0 89 101 1 14 102 0 101 102 0 89 102 1 15 103 0 102 103 0 89 103 1 16 104 0
		 103 104 0 89 104 1 17 105 0 104 105 0 89 105 1 18 106 0 105 106 0 89 106 1 19 107 0
		 106 107 0 89 107 0 41 108 1 42 108 1 43 108 1 44 108 1 45 108 1 46 108 1 47 108 1
		 48 108 1 49 108 1 50 108 1 51 108 1 52 108 1 53 108 1 54 108 1 55 108 1 56 108 1
		 57 108 1 58 108 1 59 108 1 60 108 1 61 108 1 62 108 1 63 108 1 64 108 1 65 108 1
		 66 108 1 67 108 1 68 108 1 69 108 1 70 108 1 71 108 1 72 108 1 73 108 1 74 108 1
		 75 108 1 76 108 1 77 108 1 78 108 1 79 108 1 80 108 1 81 108 1;
	setAttr -s 148 -ch 510 ".fc[0:147]" -type "polyFaces" 
		f 4 0 83 -42 -83
		mu 0 4 2 3 5 7
		f 4 1 84 -43 -84
		mu 0 4 3 9 11 5
		f 4 2 85 -44 -85
		mu 0 4 9 13 15 11
		f 4 3 86 -45 -86
		mu 0 4 13 17 19 15
		f 4 4 87 -46 -87
		mu 0 4 17 21 23 19
		f 4 5 88 -47 -88
		mu 0 4 21 25 27 23
		f 4 6 89 -48 -89
		mu 0 4 25 29 31 27
		f 4 7 90 -49 -90
		mu 0 4 29 33 35 31
		f 4 8 91 -50 -91
		mu 0 4 33 196 38 35
		f 4 9 92 -51 -92
		mu 0 4 196 197 198 38
		f 4 10 93 -52 -93
		mu 0 4 40 44 46 42
		f 4 11 94 -53 -94
		mu 0 4 44 48 50 46
		f 4 12 95 -54 -95
		mu 0 4 48 52 54 50
		f 4 13 96 -55 -96
		mu 0 4 52 56 58 54
		f 4 14 97 -56 -97
		mu 0 4 56 60 62 58
		f 4 15 98 -57 -98
		mu 0 4 60 64 66 62
		f 4 16 99 -58 -99
		mu 0 4 64 68 70 66
		f 4 17 100 -59 -100
		mu 0 4 68 72 74 70
		f 4 18 101 -60 -101
		mu 0 4 72 76 78 74
		f 4 19 102 -61 -102
		mu 0 4 76 80 83 78
		f 4 20 103 -62 -103
		mu 0 4 80 84 153 83
		f 4 21 104 -63 -104
		mu 0 4 84 154 155 153
		f 4 22 105 -64 -105
		mu 0 4 154 156 157 155
		f 4 23 106 -65 -106
		mu 0 4 156 158 159 157
		f 4 24 107 -66 -107
		mu 0 4 158 160 161 159
		f 4 25 108 -67 -108
		mu 0 4 160 162 163 161
		f 4 26 109 -68 -109
		mu 0 4 162 164 165 163
		f 4 27 110 -69 -110
		mu 0 4 164 166 167 165
		f 4 28 111 -70 -111
		mu 0 4 166 168 169 167
		f 4 29 112 -71 -112
		mu 0 4 168 170 171 169
		f 4 30 113 -72 -113
		mu 0 4 170 172 173 171
		f 4 31 114 -73 -114
		mu 0 4 172 174 175 173
		f 4 32 115 -74 -115
		mu 0 4 174 176 177 175
		f 4 33 116 -75 -116
		mu 0 4 176 178 179 177
		f 4 34 117 -76 -117
		mu 0 4 178 180 181 179
		f 4 35 118 -77 -118
		mu 0 4 180 182 183 181
		f 4 36 119 -78 -119
		mu 0 4 182 184 185 183
		f 4 37 120 -79 -120
		mu 0 4 184 186 187 185
		f 4 38 121 -80 -121
		mu 0 4 186 188 189 187
		f 4 39 122 -81 -122
		mu 0 4 188 190 191 189
		f 4 148 150 -153 -154
		mu 0 4 192 193 194 195
		f 3 -157 -159 159
		mu 0 3 85 86 87
		f 3 -162 -160 162
		mu 0 3 88 85 87
		f 3 -165 -163 165
		mu 0 3 89 88 87
		f 3 -168 -166 168
		mu 0 3 90 89 87
		f 3 -171 -169 171
		mu 0 3 91 90 87
		f 3 -174 -172 174
		mu 0 3 92 91 87
		f 3 -177 -175 177
		mu 0 3 93 92 87
		f 3 -180 -178 180
		mu 0 3 94 93 87
		f 3 -183 -181 183
		mu 0 3 95 94 87
		f 3 -186 -184 186
		mu 0 3 96 95 87
		f 3 -189 -187 189
		mu 0 3 97 96 87
		f 3 -192 -190 192
		mu 0 3 98 97 87
		f 3 -195 -193 195
		mu 0 3 99 98 87
		f 3 -198 -196 198
		mu 0 3 100 99 87
		f 3 -201 -199 201
		mu 0 3 101 100 87
		f 3 -204 -202 204
		mu 0 3 102 101 87
		f 3 -207 -205 207
		mu 0 3 103 102 87
		f 3 -210 -208 210
		mu 0 3 104 103 87
		f 3 -213 -211 213
		mu 0 3 105 104 87
		f 3 -20 -125 125
		mu 0 3 39 37 106
		f 3 -21 -126 126
		mu 0 3 41 39 106
		f 3 -22 -127 127
		mu 0 3 43 41 106
		f 3 -23 -128 128
		mu 0 3 45 43 106
		f 3 -24 -129 129
		mu 0 3 47 45 106
		f 3 -25 -130 130
		mu 0 3 49 47 106
		f 3 -26 -131 131
		mu 0 3 51 49 106
		f 3 -27 -132 132
		mu 0 3 53 51 106
		f 3 -28 -133 133
		mu 0 3 55 53 106
		f 3 -29 -134 134
		mu 0 3 57 55 106
		f 3 -30 -135 135
		mu 0 3 59 57 106
		f 3 -31 -136 136
		mu 0 3 61 59 106
		f 3 -32 -137 137
		mu 0 3 63 61 106
		f 3 -33 -138 138
		mu 0 3 65 63 106
		f 3 -34 -139 139
		mu 0 3 67 65 106
		f 3 -35 -140 140
		mu 0 3 69 67 106
		f 3 -36 -141 141
		mu 0 3 71 69 106
		f 3 -37 -142 142
		mu 0 3 73 71 106
		f 3 -38 -143 143
		mu 0 3 75 73 106
		f 3 -39 -144 144
		mu 0 3 77 75 106
		f 3 -40 -145 145
		mu 0 3 79 77 106
		f 3 -41 -146 123
		mu 0 3 0 79 106
		f 4 40 147 -149 -147
		mu 0 4 79 0 82 81
		f 4 82 149 -151 -148
		mu 0 4 2 7 194 193
		f 4 -82 151 152 -150
		mu 0 4 123 122 107 108
		f 4 -123 146 153 -152
		mu 0 4 191 190 192 195
		f 4 -1 154 156 -156
		mu 0 4 1 0 86 85
		f 4 -124 157 158 -155
		mu 0 4 0 106 87 86
		f 4 -2 155 161 -161
		mu 0 4 4 1 85 88
		f 4 -3 160 164 -164
		mu 0 4 6 4 88 89
		f 4 -4 163 167 -167
		mu 0 4 8 6 89 90
		f 4 -5 166 170 -170
		mu 0 4 10 8 90 91
		f 4 -6 169 173 -173
		mu 0 4 12 10 91 92
		f 4 -7 172 176 -176
		mu 0 4 14 12 92 93
		f 4 -8 175 179 -179
		mu 0 4 16 14 93 94
		f 4 -9 178 182 -182
		mu 0 4 18 16 94 95
		f 4 -10 181 185 -185
		mu 0 4 20 18 95 96
		f 4 -11 184 188 -188
		mu 0 4 22 20 96 97
		f 4 -12 187 191 -191
		mu 0 4 24 22 97 98
		f 4 -13 190 194 -194
		mu 0 4 26 24 98 99
		f 4 -14 193 197 -197
		mu 0 4 28 26 99 100
		f 4 -15 196 200 -200
		mu 0 4 30 28 100 101
		f 4 -16 199 203 -203
		mu 0 4 32 30 101 102
		f 4 -17 202 206 -206
		mu 0 4 34 32 102 103
		f 4 -18 205 209 -209
		mu 0 4 36 34 103 104
		f 4 -19 208 212 -212
		mu 0 4 37 36 104 105
		f 4 124 211 -214 -158
		mu 0 4 106 37 105 87
		f 3 41 215 -215
		mu 0 3 111 112 109
		f 3 42 216 -216
		mu 0 3 112 113 109
		f 3 43 217 -217
		mu 0 3 113 114 109
		f 3 44 218 -218
		mu 0 3 114 115 109
		f 3 45 219 -219
		mu 0 3 115 116 109
		f 3 46 220 -220
		mu 0 3 116 117 109
		f 3 47 221 -221
		mu 0 3 117 118 109
		f 3 48 222 -222
		mu 0 3 118 119 109
		f 3 49 223 -223
		mu 0 3 119 120 109
		f 3 50 224 -224
		mu 0 3 120 121 109
		f 3 51 225 -225
		mu 0 3 121 152 109
		f 3 52 226 -226
		mu 0 3 152 151 109
		f 3 53 227 -227
		mu 0 3 151 150 109
		f 3 54 228 -228
		mu 0 3 150 149 109
		f 3 55 229 -229
		mu 0 3 149 148 109
		f 3 56 230 -230
		mu 0 3 148 147 109
		f 3 57 231 -231
		mu 0 3 147 146 109
		f 3 58 232 -232
		mu 0 3 146 145 109
		f 3 59 233 -233
		mu 0 3 145 144 109
		f 3 60 234 -234
		mu 0 3 144 143 109
		f 3 61 235 -235
		mu 0 3 143 142 109
		f 3 62 236 -236
		mu 0 3 142 141 109
		f 3 63 237 -237
		mu 0 3 141 140 109
		f 3 64 238 -238
		mu 0 3 140 139 109
		f 3 65 239 -239
		mu 0 3 139 138 109
		f 3 66 240 -240
		mu 0 3 138 137 109
		f 3 67 241 -241
		mu 0 3 137 136 109
		f 3 68 242 -242
		mu 0 3 136 135 109
		f 3 69 243 -243
		mu 0 3 135 134 109
		f 3 70 244 -244
		mu 0 3 134 133 109
		f 3 71 245 -245
		mu 0 3 133 132 109
		f 3 72 246 -246
		mu 0 3 132 131 109
		f 3 73 247 -247
		mu 0 3 131 130 109
		f 3 74 248 -248
		mu 0 3 130 129 109
		f 3 75 249 -249
		mu 0 3 129 128 109
		f 3 76 250 -250
		mu 0 3 128 127 109
		f 3 77 251 -251
		mu 0 3 127 126 109
		f 3 78 252 -252
		mu 0 3 126 125 109
		f 3 79 253 -253
		mu 0 3 125 124 109
		f 3 80 254 -254
		mu 0 3 124 110 109
		f 3 81 214 -255
		mu 0 3 110 111 109;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "27FBC5E6-492D-61CC-B26A-61BC37015C5C";
	setAttr ".rp" -type "double3" 13.004624296398877 21.286501115577288 0 ;
	setAttr ".sp" -type "double3" 13.004624296398877 21.286501115577288 0 ;
createNode mesh -n "pCube5Shape" -p "pCube5";
	rename -uid "A24E90DE-4225-0AEB-7560-FF95CB513C82";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BFFD9187-4D80-7FF3-391A-A8B6CEA8AB7B";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EE576F82-47B1-D2D6-A189-029F69FA0281";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4CC7BD65-4C04-2ABF-55D8-69B3CBC56117";
createNode displayLayerManager -n "layerManager";
	rename -uid "E17887A6-4641-B691-C503-0A851AE8459C";
createNode displayLayer -n "defaultLayer";
	rename -uid "E320F2F0-48C3-95CB-68D1-E7BC3A58946C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0DB1DFFD-4EC7-E21D-6BAA-AE98FAD4E2DA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D607DAA1-48ED-5B6F-7F0A-40A73E30075E";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "A3D0BDFA-41CB-2887-EF29-A1B98E8560F3";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "B536653B-4247-ED17-12AE-10AA4EF1EA06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 10.731069813606663 0 0 0 0 5.7434457710338895 0 0 0 0 0.11873730974232148 0
		 0 7.9048103041039308 0 1;
	setAttr ".wt" 0.35480183362960815;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "AECA8305-48EC-42B4-B0E0-2F9EB37828D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 10.731069813606663 0 0 0 0 5.7434457710338895 0 0 0 0 0.11873730974232148 0
		 0 7.9048103041039308 0 1;
	setAttr ".wt" 0.45007875561714172;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "43A52A74-49FA-3A3C-4373-D59F5C7836EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 2.3827761571852208e-15 0 -10.731069813606663 0 0 5.7434457710338895 0 0
		 0.11873730974232148 0 2.6364979031594844e-17 0 0 7.9048103041039308 0 1;
	setAttr ".wt" 0.64537173509597778;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "4FA5E270-4970-06D4-CD95-318B8745419F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 2.3827761571852208e-15 0 -10.731069813606663 0 0 5.7434457710338895 0 0
		 0.11873730974232148 0 2.6364979031594844e-17 0 0 7.9048103041039308 0 1;
	setAttr ".wt" 0.54899096488952637;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9C6D3C97-48C9-7E13-4C97-ED873031B804";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6F8F078E-47B5-269D-709B-47A69AB8A02B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "640EB6ED-415E-8AAF-8C29-A6AF76DB6546";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "36DE0359-4F28-EAE2-1461-CABA6D83560D";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file1";
	rename -uid "996EAF97-4204-1310-4547-C5AC60F95D5E";
	setAttr ".ftn" -type "string" "D:/Projects/My Maya/pin/empty_warehouse_01_2k.hdr";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "E3429038-48A3-3A96-62F3-C080BC17D632";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "442CB4A8-4B09-9FFD-B6A1-C9B5DB3627FB";
	setAttr ".base_color" -type "float3" 0.0176 0.1293 0 ;
	setAttr ".specular_roughness" 0.071428574621677399;
	setAttr ".coat" 0.92857140302658081;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "86B9F722-42D1-3523-8DD5-869DB1A1F0AE";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "400E0F77-4382-708C-362E-7CA2ECA4E71E";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "19245CCB-49C0-C81B-0A59-75992FCD13B5";
	setAttr ".base_color" -type "float3" 1 0 0 ;
	setAttr ".specular_roughness" 0;
	setAttr ".specular_IOR" 2.5657894611358643;
	setAttr ".specular_anisotropy" 0.50649350881576538;
	setAttr ".specular_rotation" 0.35064935684204102;
	setAttr ".metalness" 0.53896105289459229;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "C60EA1AD-4FDD-9151-1A5E-7CBF1CC19CF3";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "28908635-41D9-A640-CDB8-E59BD42F2CD1";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "4E26B16C-4F1B-A8B0-05DE-4CB3AAD268A6";
	setAttr ".base" 1;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "E15A4C4A-4EFC-C6DF-EC65-2FB2BB585AB6";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "E3EBBFB5-44D8-1147-80A6-BBA7CD03A855";
createNode layeredTexture -n "layeredTexture1";
	rename -uid "26714B88-47BD-1C6F-9680-648BB16EAFB0";
	setAttr -s 2 ".cs";
	setAttr ".cs[0].a" 1;
	setAttr ".cs[0].bm" 4;
	setAttr ".cs[0].iv" yes;
	setAttr ".cs[2].c" -type "float3" 0.0176 0.1293 0 ;
	setAttr ".cs[2].a" 1;
	setAttr ".cs[2].bm" 0;
	setAttr ".cs[2].iv" yes;
	setAttr ".hc" -type "float3" 0.1361177 1 0 ;
	setAttr ".ail" yes;
createNode file -n "file2";
	rename -uid "3B01E84B-4D44-BB38-8E7E-468CE3F2D95D";
	setAttr ".ftn" -type "string" "C:/Users/Dell/Documents/Asset 1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "D4A75A69-45A8-12B4-278D-2EB77A239676";
createNode groupId -n "groupId2";
	rename -uid "86F0F5B5-447C-8D2C-B5F4-DE95E4ABF020";
	setAttr ".ihi" 0;
createNode polySphProj -n "polySphProj1";
	rename -uid "7CDE464B-4EA4-1375-D954-CC9FB9080A36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0:40]" "f[83]" "f[85]";
	setAttr ".ix" -type "matrix" 1.5665765125736435 0 0 0 0 11.552790164957056 0 0 0 0 1.5665765125736435 0
		 0 16.454146960161928 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.0022983551025390625 16.454149723052979 5.9604644775390625e-08 ;
	setAttr ".ps" -type "double2" 360 180 ;
	setAttr ".r" 9.4091352088496016;
createNode groupParts -n "groupParts3";
	rename -uid "2425E00E-4582-A163-81E4-158E0911269C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:40]" "f[83]" "f[85]";
createNode groupId -n "groupId4";
	rename -uid "1C10C782-46FB-473D-4371-9184D3D5FCD0";
	setAttr ".ihi" 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "5E055174-4851-9A62-7117-1697385B8550";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:83]" "f[85:106]";
	setAttr ".ix" -type "matrix" 1.5665765125736435 0 0 0 0 11.552790164957056 0 0 0 0 1.5665765125736435 0
		 0 16.454146960161928 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.0022983381059020758 16.45414924621582 4.6687617327734188e-08 ;
	setAttr ".ro" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".ps" -type "double2" 23.105583084313928 23.105583084313928 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "7FB22C48-4354-C1A5-B6C2-06974D3BAB14";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[108]" -type "float3" 0 0.62582213 0 ;
createNode groupParts -n "groupParts2";
	rename -uid "74D06BA8-4656-BB1B-575A-3B9BA95BFF80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[107:147]";
createNode groupId -n "groupId3";
	rename -uid "766BF666-4D21-5498-8D59-0D8F1E82C33C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "DCF966C4-4244-D631-C975-58832CA30F15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[41:82]" "f[84]" "f[86:106]";
	setAttr ".irc" -type "componentList" 4 "f[0:40]" "f[83]" "f[85]" "f[107:147]";
createNode groupId -n "groupId1";
	rename -uid "E4186DD5-4CB0-B191-B9A3-C8B7EC8546DE";
	setAttr ".ihi" 0;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "CED7BAFC-41E0-5113-A2F7-9FB2B423D8D7";
	setAttr ".ics" -type "componentList" 1 "vtx[108:149]";
	setAttr ".ix" -type "matrix" 1.5665765125736435 0 0 0 0 11.552790164957056 0 0 0 0 1.5665765125736435 0
		 0 11.71175782597493 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "495B32C5-4646-E51D-4E99-2F86D3FDBD73";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk";
	setAttr ".tk[20]" -type "float3" 0 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[21]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".tk[22]" -type "float3" 7.4505806e-09 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[23]" -type "float3" 7.4505806e-09 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[24]" -type "float3" -1.7763568e-15 7.4505806e-09 0 ;
	setAttr ".tk[25]" -type "float3" 1.1175871e-08 7.4505806e-09 0 ;
	setAttr ".tk[26]" -type "float3" 1.4901161e-08 7.4505806e-09 0 ;
	setAttr ".tk[27]" -type "float3" 4.4703484e-08 7.4505806e-09 0 ;
	setAttr ".tk[28]" -type "float3" 2.9802322e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[29]" -type "float3" 1.4901161e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[30]" -type "float3" 2.9802322e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[31]" -type "float3" 5.9604645e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[32]" -type "float3" 3.7252903e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[33]" -type "float3" -7.4505806e-09 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[34]" -type "float3" -1.7763568e-15 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[35]" -type "float3" -7.4505806e-09 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[36]" -type "float3" -1.4901161e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[37]" -type "float3" -4.4703484e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[38]" -type "float3" -2.9802322e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[39]" -type "float3" -1.4901161e-08 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[41]" -type "float3" 0 7.4505806e-09 -1.1920929e-07 ;
	setAttr ".tk[43]" -type "float3" 0 0 7.1054274e-15 ;
	setAttr ".tk[108]" -type "float3" -0.98828018 0 0.15264659 ;
	setAttr ".tk[109]" -type "float3" -0.95339632 0 0.30171791 ;
	setAttr ".tk[110]" -type "float3" 8.124681e-08 -2.3841858e-07 3.3052402e-08 ;
	setAttr ".tk[111]" -type "float3" -0.89616555 0 0.44371715 ;
	setAttr ".tk[112]" -type "float3" -0.81792951 0 0.57530814 ;
	setAttr ".tk[113]" -type "float3" -0.72052175 0 0.69342995 ;
	setAttr ".tk[114]" -type "float3" -0.60622567 0 0.79529828 ;
	setAttr ".tk[115]" -type "float3" -0.47772014 0 0.87850976 ;
	setAttr ".tk[116]" -type "float3" -0.33801728 0 0.94113773 ;
	setAttr ".tk[117]" -type "float3" -0.19039154 0 0.98170602 ;
	setAttr ".tk[118]" -type "float3" -0.038303167 0 0.99926507 ;
	setAttr ".tk[119]" -type "float3" 0.11468298 0 0.99340105 ;
	setAttr ".tk[120]" -type "float3" 0.26498106 0 0.96424758 ;
	setAttr ".tk[121]" -type "float3" 0.40906829 0 0.91249776 ;
	setAttr ".tk[122]" -type "float3" 0.54356712 0 0.8393715 ;
	setAttr ".tk[123]" -type "float3" 0.66532534 0 0.74655938 ;
	setAttr ".tk[124]" -type "float3" 0.7714889 0 0.63624072 ;
	setAttr ".tk[125]" -type "float3" 0.85956943 0 0.51102495 ;
	setAttr ".tk[126]" -type "float3" 0.92750227 0 0.37382331 ;
	setAttr ".tk[127]" -type "float3" 0.97369534 0 0.22785184 ;
	setAttr ".tk[128]" -type "float3" 0.99706584 0 0.0765476 ;
	setAttr ".tk[129]" -type "float3" 0.99706584 0 -0.076550931 ;
	setAttr ".tk[130]" -type "float3" 0.97369558 0 -0.22783938 ;
	setAttr ".tk[131]" -type "float3" 0.92750269 0 -0.37380296 ;
	setAttr ".tk[132]" -type "float3" 0.85956973 0 -0.51102036 ;
	setAttr ".tk[133]" -type "float3" 0.77148944 0 -0.63624412 ;
	setAttr ".tk[134]" -type "float3" 0.66532594 0 -0.7465471 ;
	setAttr ".tk[135]" -type "float3" 0.54356778 0 -0.83935928 ;
	setAttr ".tk[136]" -type "float3" 0.40906897 0 -0.91250551 ;
	setAttr ".tk[137]" -type "float3" 0.26498178 0 -0.96425533 ;
	setAttr ".tk[138]" -type "float3" 0.11468369 0 -0.99340594 ;
	setAttr ".tk[139]" -type "float3" -0.038302474 0 -0.99926913 ;
	setAttr ".tk[140]" -type "float3" -0.19039086 0 -0.98170727 ;
	setAttr ".tk[141]" -type "float3" -0.33801663 0 -0.94114399 ;
	setAttr ".tk[142]" -type "float3" -0.4777196 0 -0.87851822 ;
	setAttr ".tk[143]" -type "float3" -0.60622519 0 -0.79529488 ;
	setAttr ".tk[144]" -type "float3" -0.72052145 0 -0.69343454 ;
	setAttr ".tk[145]" -type "float3" -0.81792921 0 -0.57531279 ;
	setAttr ".tk[146]" -type "float3" -0.89616549 0 -0.44371396 ;
	setAttr ".tk[147]" -type "float3" -0.95339632 0 -0.30172265 ;
	setAttr ".tk[148]" -type "float3" -0.98828036 0 -0.1526513 ;
	setAttr ".tk[149]" -type "float3" -0.99999994 0 -1.9933821e-06 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "8BD4A152-4789-4488-8A46-7FB66F9EC343";
	setAttr ".ics" -type "componentList" 1 "f[82:122]";
	setAttr ".ix" -type "matrix" 1.5665765125736435 0 0 0 0 11.552790164957056 0 0 0 0 1.5665765125736435 0
		 0 11.71175782597493 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0022983381 23.264551 9.3375235e-08 ;
	setAttr ".rs" 61926;
	setAttr ".lt" -type "double3" 0 -1.4497573832339311e-17 2.4347087318909004 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5619798364289854 23.264550745331803 -1.5654266899108231 ;
	setAttr ".cbx" -type "double3" 1.5665765125736435 23.264550745331803 1.5654268766612962 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "CF50B6B9-4C19-28DC-F743-2EBCB0A768DE";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1.5665765125736435 0 0 0 0 11.552790164957056 0 0 0 0 1.5665765125736435 0
		 0 11.71175782597493 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.8675047e-07 23.264547 -3.7350094e-07 ;
	setAttr ".rs" 57012;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5665768860745897 23.264547990931987 -1.5665772595755358 ;
	setAttr ".cbx" -type "double3" 1.5665765125736435 23.264547990931987 1.5665765125736435 ;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "A2C7038A-49DC-7149-7747-8CA120AE483E";
	setAttr ".sa" 41;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0074C266-4F67-3A13-E2E7-3B812A674453";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1134\n            -height 934\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 934\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 934\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A101499A-4654-2D1D-40DD-EC9C65695D9A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId5";
	rename -uid "BD4EA89A-4E25-593A-858D-AC8688D180F2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "6ACED204-4D5A-4103-B81D-88A00F84EB6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "6BE54B44-4FBC-30FA-D2B6-A3B3315DE0E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "8B5F044C-47C3-603A-0EF9-8AA833EF7C16";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite1";
	rename -uid "A11CAE18-454D-021A-88EC-BA9B219D4968";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId9";
	rename -uid "5EA9C276-4E9A-75E9-C705-4E82BBAE03EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "CC4C0750-40AD-B82B-CDCF-D39BFAF2F379";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "33971992-4C9D-CC2A-3804-388EF6EBFF97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "1AAFCE0B-4661-0796-8D66-4494B6BCDF38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "B44932C3-4CA1-C847-8C14-7BBD3F70B090";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "0B3C80DF-4155-5E21-E4AE-4A95AC43A4C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0:27]" "f[69:110]" "f[112]" "f[114:134]";
createNode groupId -n "groupId14";
	rename -uid "E2A50574-43A0-02E8-89FD-2D90C9895B05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "B1B98779-4586-85C0-1E1A-BD94A6F78424";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[135:175]";
createNode groupId -n "groupId15";
	rename -uid "520DAA8D-4E25-69A0-55B1-04B71298D82E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "462DF99D-4E11-CBFF-3405-EDB3967167C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[28:68]" "f[111]" "f[113]";
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
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".w" 4096;
	setAttr ".h" 4096;
	setAttr ".pa" 1;
	setAttr ".dar" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCylinderShape3.iog.og[0].gid";
connectAttr "aiStandardSurface1SG.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId3.id" "pCylinderShape3.iog.og[1].gid";
connectAttr "aiStandardSurface2SG.mwc" "pCylinderShape3.iog.og[1].gco";
connectAttr "groupId4.id" "pCylinderShape3.iog.og[2].gid";
connectAttr "aiStandardSurface3SG.mwc" "pCylinderShape3.iog.og[2].gco";
connectAttr "polySphProj1.out" "pCylinderShape3.i";
connectAttr "groupId2.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "polySplitRing2.out" "pCubeShape1.i";
connectAttr "polySplitRing4.out" "pCubeShape2.i";
connectAttr "file1.oc" "aiSkyDomeLightShape1.sc";
connectAttr "groupId9.id" "pCubeShape3.iog.og[0].gid";
connectAttr "aiStandardSurface1SG.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId10.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCubeShape4.iog.og[0].gid";
connectAttr "aiStandardSurface1SG.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupId12.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCylinderShape4.iog.og[0].gid";
connectAttr "aiStandardSurface1SG.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId6.id" "pCylinderShape4.iog.og[1].gid";
connectAttr "aiStandardSurface2SG.mwc" "pCylinderShape4.iog.og[1].gco";
connectAttr "groupId7.id" "pCylinderShape4.iog.og[2].gid";
connectAttr "aiStandardSurface3SG.mwc" "pCylinderShape4.iog.og[2].gco";
connectAttr "groupId8.id" "pCylinderShape4.ciog.cog[1].cgid";
connectAttr "groupParts6.og" "pCube5Shape.i";
connectAttr "groupId13.id" "pCube5Shape.iog.og[0].gid";
connectAttr "aiStandardSurface1SG.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId14.id" "pCube5Shape.iog.og[1].gid";
connectAttr "aiStandardSurface2SG.mwc" "pCube5Shape.iog.og[1].gco";
connectAttr "groupId15.id" "pCube5Shape.iog.og[2].gid";
connectAttr "aiStandardSurface3SG.mwc" "pCube5Shape.iog.og[2].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "|pCube2|polySurfaceShape1.o" "polySplitRing3.ip";
connectAttr "pCubeShape2.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape2.wm" "polySplitRing4.mp";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "pCubeShape2.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCubeShape1.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[1]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "pCube5Shape.iog.og[0]" "aiStandardSurface1SG.dsm" -na;
connectAttr "groupId1.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId2.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId5.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId8.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId9.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId10.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId11.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId12.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "groupId13.msg" "aiStandardSurface1SG.gn" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "aiStandardSurface1.msg" "materialInfo1.t" -na;
connectAttr "aiStandardSurface2.out" "aiStandardSurface2SG.ss";
connectAttr "groupId3.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "groupId6.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "groupId14.msg" "aiStandardSurface2SG.gn" -na;
connectAttr "pCylinderShape3.iog.og[1]" "aiStandardSurface2SG.dsm" -na;
connectAttr "pCylinderShape4.iog.og[1]" "aiStandardSurface2SG.dsm" -na;
connectAttr "pCube5Shape.iog.og[1]" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo2.m";
connectAttr "aiStandardSurface2.msg" "materialInfo2.t" -na;
connectAttr "layeredTexture1.oc" "aiStandardSurface3.base_color";
connectAttr "aiStandardSurface3.out" "aiStandardSurface3SG.ss";
connectAttr "groupId4.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "groupId7.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "groupId15.msg" "aiStandardSurface3SG.gn" -na;
connectAttr "pCylinderShape3.iog.og[2]" "aiStandardSurface3SG.dsm" -na;
connectAttr "pCylinderShape4.iog.og[2]" "aiStandardSurface3SG.dsm" -na;
connectAttr "pCube5Shape.iog.og[2]" "aiStandardSurface3SG.dsm" -na;
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface3.msg" "materialInfo3.m";
connectAttr "aiStandardSurface3.msg" "materialInfo3.t" -na;
connectAttr "file2.oc" "layeredTexture1.cs[0].c";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "groupParts3.og" "polySphProj1.ip";
connectAttr "pCylinderShape3.wm" "polySphProj1.mp";
connectAttr "polyPlanarProj1.out" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polyTweak3.out" "polyPlanarProj1.ip";
connectAttr "pCylinderShape3.wm" "polyPlanarProj1.mp";
connectAttr "groupParts2.og" "polyTweak3.ip";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyMergeVert2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyCylinder2.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace1.mp";
connectAttr "pCubeShape3.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape4.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape3.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[1]";
connectAttr "pCylinderShape4.wm" "polyUnite1.im[2]";
connectAttr "polyUnite1.out" "groupParts4.ig";
connectAttr "groupId13.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId14.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId15.id" "groupParts6.gi";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "layeredTexture1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of missile.ma
