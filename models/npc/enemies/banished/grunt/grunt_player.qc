// Created by Crowbar 0.71

$modelname "valk/HaloReach/Covenant/Characters/Grunt/Grunt_Player.mdl"

$model "Head" "Grunt_Reference.smd" {

	eyeball "eye_right" "b_head" -1.454804 -3.529279 67.941104 "grunt_eyes" 1 4 "iris_unused" 0.63
	eyeball "eye_left" "b_head" 1.413846 -3.529279 67.941103 "grunt_eyes" 1 -4 "iris_unused" 0.63


	flexfile "grunt_player_01.vta" 
	{
		defaultflex frame 0
		flex "blink" frame 1
		flex "jaw_drop" frame 2
	}

	flexcontroller eyes range -45 45 "eyes_updown"
	flexcontroller eyes range -45 45 "eyes_rightleft"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "blink"

	%jaw_drop = jaw_drop
	%blink = blink
}
$bodygroup "Helmet"
{
	studio "Grunt_Helmet.smd"
	studio "Grunt_Helmet_Heavy.smd"
	studio "Grunt_Helmet_Ultra.smd"
	blank
}
$bodygroup "BackPack"
{
	studio "Grunt_Backpack.smd"
	studio "Grunt_Backpack_Heavy.smd"
	studio "Grunt_Backpack_Ultra.smd"
	blank
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0 0 20.586

$mostlyopaque

$cdmaterials "models\valk\haloreach\Covenant\Characters\Grunt\"

$texturegroup "skinfamilies"
{
	{ "grunt_armor"         "grunt_headgear"         "grunt_third_pack"         "grunt_cylinder_pack"         }
	{ "grunt_armor_Minor"   "grunt_headgear_Minor"   "grunt_third_pack_Minor"   "grunt_cylinder_pack_Minor"   }
	{ "grunt_armor_Major"   "grunt_headgear_Major"   "grunt_third_pack_Major"   "grunt_cylinder_pack_Major"   }
	{ "grunt_armor_Heavy"   "grunt_headgear_Heavy"   "grunt_third_pack_Heavy"   "grunt_cylinder_pack_Heavy"   }
	{ "grunt_armor_SpecOps" "grunt_headgear_SpecOps" "grunt_third_pack_SpecOps" "grunt_cylinder_pack_SpecOps" }
}

$attachment "eyes" "b_head" 4.5 -4 0 rotate 0 -90 -90
$attachment "chest" "b_spine2" 5 4 0 rotate 0 -90 180
$attachment "forward" "b_head" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 2 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 2 rotate -90 -90 0
$attachment "anim_attachment_head" "b_head" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -37.336 -36.378 0 20.091 36.316 63.778

$definebone "b_pedestal" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0
$definebone "b_pelvis" "b_pedestal" 0.291583 0 16.562315 -89.999982 89.999982 0 0 0 0 0 0 0
$definebone "b_r_thigh" "b_pelvis" 0.035686 0.236704 4.297229 -49.462587 -153.034213 -58.480141 0 0 0 0 0 0
$definebone "b_r_calf" "b_r_thigh" 7.087489 -0.078684 -0.005392 63.39772 0.001088 0.00028 0 0 0 0 0 0
$definebone "b_r_foot" "b_r_calf" 6.743322 0.063215 -0.015291 -39.811291 119.360629 -14.034771 0 0 0 0 0 0
$definebone "b_spine1" "b_pelvis" 1.769909 1.681871 0.000001 0 32.56165 0 0 0 0 0 0 0
$definebone "b_spine2" "b_spine1" 9.763412 -0.012445 0.000014 0 -66.622041 0 0 0 0 0 0 0
$definebone "b_neck1" "b_spine2" 17.473942 0.038351 -0.000004 0 -2.811332 0 0 0 0 0 0 0
$definebone "b_head" "b_neck1" 3.482014 -0.016562 -0.000023 0 36.871666 0.000115 0 0 0 0 0 0
$definebone "b_r_clav" "b_spine2" 11.990328 -1.633488 5.386574 0 34.060275 0 0 0 0 0 0 0
$definebone "b_r_upperarm" "b_r_clav" -1.911499 0.198467 5.178296 -54.06607 -174.734899 -35.013851 0 0 0 0 0 0
$definebone "b_r_forearm" "b_r_upperarm" 8.231497 0.000002 -0.000015 0.001207 22.907664 0.000464 0 0 0 0 0 0
$definebone "b_r_hand" "b_r_forearm" 13.430878 0.000035 0.000271 -0.001257 0.000582 -0.000282 0 0 0 0 0 0
$definebone "b_r_fingers" "b_r_hand" 7.394932 -0.000031 -0.000004 36.202219 27.692773 41.625331 0 0 0 0 0 0
$definebone "b_r_thumb" "b_r_hand" 1.873776 2.857635 -2.125986 37.136879 33.129221 -84.662531 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "b_r_hand" 1.515318 1.112411 -1.389759 1.494224 -11.060941 141.872824 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.667423 -1.712452 -0.215136 -0.989031 -102.358895 -94.503618 0 0 0 0 0 0
$definebone "b_l_clav" "b_spine2" 11.990368 -1.633469 -5.386562 -0.000229 -145.939737 0 0 0 0 0 0 0
$definebone "b_l_upperarm" "b_l_clav" 1.911472 -0.198472 -5.178345 -54.066415 -174.734831 -35.013851 0 0 0 0 0 0
$definebone "b_l_forearm" "b_l_upperarm" -8.231511 -0.000017 0.000019 -0.000176 22.907935 0.000343 0 0 0 0 0 0
$definebone "b_l_hand" "b_l_forearm" -13.430882 -0.000039 0.000145 -0.00012 -0.000005 -0.000111 0 0 0 0 0 0
$definebone "b_l_thumb" "b_l_hand" -1.873733 -2.857635 2.125957 37.137006 33.130884 -84.66139 0 0 0 0 0 0
$definebone "b_l_fingers" "b_l_hand" -7.394958 0.000027 0.00001 36.201997 27.693171 41.625328 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "b_l_hand" -2.449813 -0.875532 1.200741 -11.748177 159.091908 -138.960882 0 0 0 0 0 0
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.548525 -1.712446 0.816374 0.142093 90.442995 72.238348 0 0 0 0 0 0
$definebone "b_l_thigh" "b_pelvis" 0.035692 0.236703 -4.297227 -49.462645 26.965626 -58.47997 0 0 0 0 0 0
$definebone "b_l_calf" "b_l_thigh" -7.087469 0.078713 0.005334 63.39703 -0.000003 0.000004 0 0 0 0 0 0
$definebone "b_l_foot" "b_l_calf" -6.743337 -0.063272 0.015342 39.811113 -60.639505 14.033918 0 0 0 0 0 0


$sectionframes 30 169

$poseparameter "move_y" -1 1 loop 0
$poseparameter "move_x" -1 1 loop 0
$poseparameter "aim_yaw" -63.39604 71.29463 loop 0
$poseparameter "aim_pitch" -84.49052 81.74136 loop 0

$weightlist "weights_aimlayer_head" {
	 "b_pedestal" 0
	 "b_pelvis" 0
	 "b_r_thigh" 0
	 "b_r_calf" 0
	 "b_r_foot" 0
	 "b_spine1" 0
	 "b_spine2" 0
	 "b_neck1" 0
	 "b_head" 1
	 "b_r_clav" 0
	 "b_r_upperarm" 0
	 "b_r_forearm" 0
	 "b_r_hand" 0
	 "b_r_fingers" 0
	 "b_r_thumb" 0
	 "ValveBiped.Bip01_R_Hand" 0
	 "ValveBiped.Anim_Attachment_RH" 0
	 "b_l_clav" 0
	 "b_l_upperarm" 0
	 "b_l_forearm" 0
	 "b_l_hand" 0
	 "b_l_thumb" 0
	 "b_l_fingers" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Anim_Attachment_LH" 0
	 "b_l_thigh" 0
	 "b_l_calf" 0
	 "b_l_foot" 0
}

$weightlist "weights_aimlayer_pistol" {
	 "b_pedestal" 0
	 "b_pelvis" 0
	 "b_r_thigh" 0
	 "b_r_calf" 0
	 "b_r_foot" 0
	 "b_spine1" 1
	 "b_spine2" 1
	 "b_neck1" 1
	 "b_head" 1
	 "b_r_clav" 1
	 "b_r_upperarm" 1
	 "b_r_forearm" 1
	 "b_r_hand" 1
	 "b_r_fingers" 1
	 "b_r_thumb" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "b_l_clav" 1
	 "b_l_upperarm" 1
	 "b_l_forearm" 1
	 "b_l_hand" 1
	 "b_l_thumb" 1
	 "b_l_fingers" 1
	 "ValveBiped.Bip01_L_Hand" 1
	 "ValveBiped.Anim_Attachment_LH" 1
	 "b_l_thigh" 0
	 "b_l_calf" 0
	 "b_l_foot" 0
}

$weightlist "weights_range_ar2" {
	 "b_pedestal" 0
	 "b_pelvis" 0
	 "b_r_thigh" 0
	 "b_r_calf" 0
	 "b_r_foot" 0
	 "b_spine1" 0
	 "b_spine2" 0
	 "b_neck1" 0
	 "b_head" 0
	 "b_r_clav" 1
	 "b_r_upperarm" 1
	 "b_r_forearm" 1
	 "b_r_hand" 1
	 "b_r_fingers" 1
	 "b_r_thumb" 1
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Anim_Attachment_RH" 1
	 "b_l_clav" 0
	 "b_l_upperarm" 0
	 "b_l_forearm" 0
	 "b_l_hand" 0
	 "b_l_thumb" 0
	 "b_l_fingers" 0
	 "ValveBiped.Bip01_L_Hand" 0
	 "ValveBiped.Anim_Attachment_LH" 0
	 "b_l_thigh" 0
	 "b_l_calf" 0
	 "b_l_foot" 0
}

$animation "head_up_right_corrective_animation" "grunt_player_anims\head_up_right_corrective_animation.smd" {
}

$animation "head_up_center_corrective_animation" "grunt_player_anims\head_up_center_corrective_animation.smd" {
}

$animation "head_up_left_corrective_animation" "grunt_player_anims\head_up_left_corrective_animation.smd" {
}

$animation "head_center_right_corrective_animation" "grunt_player_anims\head_center_right_corrective_animation.smd" {
}

$animation "head_center_center_corrective_animation" "grunt_player_anims\head_center_center_corrective_animation.smd" {
}

$animation "head_center_left_corrective_animation" "grunt_player_anims\head_center_left_corrective_animation.smd" {
}

$animation "head_down_right_corrective_animation" "grunt_player_anims\head_down_right_corrective_animation.smd" {
}

$animation "head_down_center_corrective_animation" "grunt_player_anims\head_down_center_corrective_animation.smd" {
}

$animation "head_down_left_corrective_animation" "grunt_player_anims\head_down_left_corrective_animation.smd" {
}

$animation "pistol_up_right_corrective_animation" "grunt_player_anims\pistol_up_right_corrective_animation.smd" {
}

$animation "pistol_up_center_corrective_animation" "grunt_player_anims\pistol_up_center_corrective_animation.smd" {
}

$animation "pistol_up_left_corrective_animation" "grunt_player_anims\pistol_up_left_corrective_animation.smd" {
}

$animation "pistol_center_right_corrective_animation" "grunt_player_anims\pistol_center_right_corrective_animation.smd" {
}

$animation "pistol_center_center_corrective_animation" "grunt_player_anims\pistol_center_center_corrective_animation.smd" {
}

$animation "pistol_center_left_corrective_animation" "grunt_player_anims\pistol_center_left_corrective_animation.smd" {
}

$animation "pistol_down_right_corrective_animation" "grunt_player_anims\pistol_down_right_corrective_animation.smd" {
}

$animation "pistol_down_center_corrective_animation" "grunt_player_anims\pistol_down_center_corrective_animation.smd" {
}

$animation "pistol_down_left_corrective_animation" "grunt_player_anims\pistol_down_left_corrective_animation.smd" {
}

$animation "range_pistol_1_corrective_animation" "grunt_player_anims\range_pistol_1_corrective_animation.smd" {
}

$animation "range_rpg1_corrective_animation" "grunt_player_anims\range_rpg1_corrective_animation.smd" {
}

$animation "aimpos_head_fix" "grunt_player_anims\aimpos_head_fix.smd" {
	fps 1
}

$animation "head_up_right" "grunt_player_anims\head_up_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_up_right_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_up_center" "grunt_player_anims\head_up_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_up_center_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_up_left" "grunt_player_anims\head_up_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_up_left_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_center_right" "grunt_player_anims\head_center_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_center_right_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_center_center" "grunt_player_anims\head_center_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_center_center_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_center_left" "grunt_player_anims\head_center_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_center_left_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_down_right" "grunt_player_anims\head_down_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_down_right_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_down_center" "grunt_player_anims\head_down_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_down_center_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "head_down_left" "grunt_player_anims\head_down_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "head_down_left_corrective_animation" 0
	weightlist "weights_aimlayer_head"
}

$animation "aimpos_pistol_fix" "grunt_player_anims\aimpos_pistol_fix.smd" {
	fps 1
}

$animation "pistol_up_right" "grunt_player_anims\pistol_up_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_up_right_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_up_center" "grunt_player_anims\pistol_up_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_up_center_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_up_left" "grunt_player_anims\pistol_up_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_up_left_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_center_right" "grunt_player_anims\pistol_center_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_center_right_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_center_center" "grunt_player_anims\pistol_center_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_center_center_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_center_left" "grunt_player_anims\pistol_center_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_center_left_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_down_right" "grunt_player_anims\pistol_down_right.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_down_right_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_down_center" "grunt_player_anims\pistol_down_center.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_down_center_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "pistol_down_left" "grunt_player_anims\pistol_down_left.smd" {
	fps 1
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "pistol_down_left_corrective_animation" 0
	weightlist "weights_aimlayer_pistol"
}

$animation "range_rpg_delta" "grunt_player_anims\range_rpg_delta.smd" {
	fps 30
}

$animation "range_rpg1" "grunt_player_anims\range_rpg1.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "range_rpg1_corrective_animation" 0
	weightlist "weights_range_ar2"
}

$animation "range_pistol_delta" "grunt_player_anims\range_pistol_delta.smd" {
	fps 30
}

$animation "range_pistol_1" "grunt_player_anims\range_pistol_1.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "range_pistol_1_corrective_animation" 0
	weightlist "weights_range_ar2"
}

$animation "range_melee_delta" "grunt_player_anims\range_melee_delta.smd" {
	fps 30
}

$animation "range_melee_1" "grunt_player_anims\range_melee_1.smd" {
	fps 30
}

$animation "a_pistolC" "grunt_player_anims\a_pistolC.smd" {
	fps 30
	loop
}

$animation "a_WalkC" "grunt_player_anims\a_WalkC.smd" {
	fps 30
	loop
}

$animation "a_range_weapon" "grunt_player_anims\a_range_weapon.smd" {
	fps 30
}

$animation "a_WalkSW" "grunt_player_anims\a_WalkSW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkS" "grunt_player_anims\a_WalkS.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkSE" "grunt_player_anims\a_WalkSE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkE" "grunt_player_anims\a_WalkE.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_WalkN" "grunt_player_anims\a_WalkN.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkNE" "grunt_player_anims\a_WalkNE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkW" "grunt_player_anims\a_WalkW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkNW" "grunt_player_anims\a_WalkNW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkPistolSW" "grunt_player_anims\a_WalkPistolSW.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_WalkPistolS" "grunt_player_anims\a_WalkPistolS.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_WalkPistolSE" "grunt_player_anims\a_WalkPistolSE.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_WalkPistolE" "grunt_player_anims\a_WalkPistolE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkPistolN" "grunt_player_anims\a_WalkPistolN.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkPistolNE" "grunt_player_anims\a_WalkPistolNE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkPistolW" "grunt_player_anims\a_WalkPistolW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkPistolNW" "grunt_player_anims\a_WalkPistolNW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "cWeaponWalk_C" "grunt_player_anims\cWeaponWalk_C.smd" {
	fps 30
	loop
	walkframe 45 LX LY
}

$animation "cWeaponWalk_SW" "grunt_player_anims\cWeaponWalk_SW.smd" {
	fps 20
	loop
	walkframe 14 LX LY
}

$animation "cWeaponWalk_S" "grunt_player_anims\cWeaponWalk_S.smd" {
	fps 20
	loop
	walkframe 14 LX LY
}

$animation "cWeaponWalk_SE" "grunt_player_anims\cWeaponWalk_SE.smd" {
	fps 20
	loop
	walkframe 14 LX LY
}

$animation "cWeaponWalk_E" "grunt_player_anims\cWeaponWalk_E.smd" {
	fps 30
	loop
	walkframe 25 LX LY
}

$animation "cWeaponWalk_N" "grunt_player_anims\cWeaponWalk_N.smd" {
	fps 30
	loop
	walkframe 45 LX LY
}

$animation "cWeaponWalk_NE" "grunt_player_anims\cWeaponWalk_NE.smd" {
	fps 30
	loop
	walkframe 45 LX LY
}

$animation "cWeaponWalk_W" "grunt_player_anims\cWeaponWalk_W.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "cWeaponWalk_NW" "grunt_player_anims\cWeaponWalk_NW.smd" {
	fps 30
	loop
	walkframe 45 LX LY
}

$animation "a_Walk_passive_C" "grunt_player_anims\a_Walk_passive_C.smd" {
	fps 30
	loop
}

$animation "a_Walk_passive_SW" "grunt_player_anims\a_Walk_passive_SW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_Walk_passive_S" "grunt_player_anims\a_Walk_passive_S.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_Walk_passive_SE" "grunt_player_anims\a_Walk_passive_SE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_Walk_passive_E" "grunt_player_anims\a_Walk_passive_E.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_Walk_passive_N" "grunt_player_anims\a_Walk_passive_N.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_Walk_passive_NE" "grunt_player_anims\a_Walk_passive_NE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_Walk_passive_W" "grunt_player_anims\a_Walk_passive_W.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_Walk_passive_NW" "grunt_player_anims\a_Walk_passive_NW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGSW" "grunt_player_anims\a_WalkRPGSW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGS" "grunt_player_anims\a_WalkRPGS.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGSE" "grunt_player_anims\a_WalkRPGSE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGE" "grunt_player_anims\a_WalkRPGE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkRPGN" "grunt_player_anims\a_WalkRPGN.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGNE" "grunt_player_anims\a_WalkRPGNE.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_WalkRPGW" "grunt_player_anims\a_WalkRPGW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkRPGNW" "grunt_player_anims\a_WalkRPGNW.smd" {
	fps 30
	loop
	walkframe 15 LX LY
}

$animation "a_PassiveRunC" "grunt_player_anims\a_PassiveRunC.smd" {
	fps 30
	loop
}

$animation "a_PassiveRunSW" "grunt_player_anims\a_PassiveRunSW.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_PassiveRunS" "grunt_player_anims\a_PassiveRunS.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_PassiveRunSE" "grunt_player_anims\a_PassiveRunSE.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_PassiveRunE" "grunt_player_anims\a_PassiveRunE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_PassiveRunN" "grunt_player_anims\a_PassiveRunN.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_PassiveRunNE" "grunt_player_anims\a_PassiveRunNE.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_PassiveRunW" "grunt_player_anims\a_PassiveRunW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_PassiveRunNW" "grunt_player_anims\a_PassiveRunNW.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_cwalk_weapon_C" "grunt_player_anims\a_cwalk_weapon_C.smd" {
	fps 30
	loop
}

$animation "a_cwalk_weapon_SW" "grunt_player_anims\a_cwalk_weapon_SW.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_cwalk_weapon_S" "grunt_player_anims\a_cwalk_weapon_S.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_cwalk_weapon_SE" "grunt_player_anims\a_cwalk_weapon_SE.smd" {
	fps 30
	loop
	walkframe 14 LX LY
}

$animation "a_cwalk_weapon_E" "grunt_player_anims\a_cwalk_weapon_E.smd" {
	fps 30
	loop
	walkframe 25 LX LY
}

$animation "a_cwalk_weapon_N" "grunt_player_anims\a_cwalk_weapon_N.smd" {
	fps 30
	loop
	walkframe 43 LX LY
}

$animation "a_cwalk_weapon_NE" "grunt_player_anims\a_cwalk_weapon_NE.smd" {
	fps 30
	loop
	walkframe 43 LX LY
}

$animation "a_cwalk_weapon_W" "grunt_player_anims\a_cwalk_weapon_W.smd" {
	fps 30
	loop
	walkframe 24 LX LY
}

$animation "a_cwalk_weapon_NW" "grunt_player_anims\a_cwalk_weapon_NW.smd" {
	fps 30
	loop
	walkframe 43 LX LY
}

$animation "a_RunN" "grunt_player_anims\a_RunN.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_RunNE" "grunt_player_anims\a_RunNE.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_RunNW" "grunt_player_anims\a_RunNW.smd" {
	fps 30
	loop
	walkframe 31 LX LY
}

$animation "a_RunSW" "grunt_player_anims\a_RunSW.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_RunS" "grunt_player_anims\a_RunS.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_RunSE" "grunt_player_anims\a_RunSE.smd" {
	fps 30
	loop
	walkframe 19 LX LY
}

$animation "a_RunE" "grunt_player_anims\a_RunE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunW" "grunt_player_anims\a_RunW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$sequence "aimlayer_head" {
	"head_up_right"
	"head_up_center"
	"head_up_left"
	"head_center_right"
	"head_center_center"
	"head_center_left"
	"head_down_right"
	"head_down_center"
	"head_down_left"
	blend "aim_yaw" -48.13565 51.53574
	blend "aim_pitch" -53.0732 47.24509
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "aimlayer_pistol" {
	"pistol_up_right"
	"pistol_up_center"
	"pistol_up_left"
	"pistol_center_right"
	"pistol_center_center"
	"pistol_center_left"
	"pistol_down_right"
	"pistol_down_center"
	"pistol_down_left"
	blend "aim_yaw" -48.13565 51.53574
	blend "aim_pitch" -53.0732 47.24509
	delta
	fadein 0.2
	fadeout 0.2
	hidden
}

$sequence "ragdoll" {
	"grunt_player_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_all_01" {
	"grunt_player_anims\idle_all_01.smd"
	activity "ACT_HL2MP_IDLE" 2
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	fps 30
	loop
}

$sequence "idle_all_02" {
	"grunt_player_anims\idle_all_02.smd"
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	fps 30
	loop
}

$sequence "idle_all_angry" {
	"grunt_player_anims\idle_all_angry.smd"
	activity "ACT_HL2MP_IDLE_ANGRY" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	loop
}

$sequence "idle_all_scared" {
	"grunt_player_anims\idle_all_scared.smd"
	activity "ACT_HL2MP_IDLE_SCARED" 1
	fadein 0.3
	fadeout 0.3
	fps 25
	loop
}

$sequence "idle_all_cower" {
	"grunt_player_anims\idle_all_cower.smd"
	activity "ACT_HL2MP_IDLE_COWER" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	loop
}

$sequence "cidle_all" {
	"grunt_player_anims\cidle_all.smd"
	activity "ACT_HL2MP_IDLE_CROUCH" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	fps 20
	loop
}

$sequence "swim_idle_all" {
	"grunt_player_anims\swim_idle_all.smd"
	activity "ACT_HL2MP_SWIM_IDLE" 1
	fadein 0.4
	fadeout 0.3
	fps 40
	loop
}

$sequence "sit" {
	"grunt_player_anims\sit.smd"
	activity "ACT_HL2MP_SIT" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	loop
}

$sequence "menu_walk" {
	"a_Walk_passive_N"
	fadein 0.2
	fadeout 0.2
}

$sequence "menu_combine" {
	"grunt_player_anims\menu_combine.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "menu_gman" {
	"grunt_player_anims\menu_gman.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "walk_all" {
	"a_Walk_passive_SW"
	"a_Walk_passive_S"
	"a_Walk_passive_SE"
	"a_Walk_passive_W"
	"a_Walk_passive_C"
	"a_Walk_passive_E"
	"a_Walk_passive_NW"
	"a_Walk_passive_N"
	"a_Walk_passive_NE"
	activity "ACT_HL2MP_WALK" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	node "walking"
}

$sequence "cwalk_all" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"grunt_player_anims\cwalk_all.smd"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 20
	loop
	walkframe 14 LX LY
}

$sequence "run_all_01" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.4
	node "running"
}

$sequence "run_all_02" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_FAST" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.4
	node "running"
}

$sequence "run_all_panicked_01" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PANICKED" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "running"
}

$sequence "run_all_panicked_02" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PANICKED" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "running"
}

$sequence "run_all_panicked_03" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PANICKED" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "running"
}

$sequence "run_all_protected" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PROTECTED" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "running"
}

$sequence "run_all_charging" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"a_WalkC"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_CHARGING" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "running"
}

$sequence "swimming_all" {
	"a_WalkSW"
	"a_WalkS"
	"a_WalkSE"
	"a_WalkW"
	"a_WalkC"
	"a_WalkE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_SWIM" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
}

$sequence "walk_suitcase" {
	"a_WalkSW"
	"a_WalkS"
	"a_WalkSE"
	"a_WalkW"
	"a_WalkC"
	"a_WalkE"
	"a_WalkNW"
	"a_WalkN"
	"a_WalkNE"
	activity "ACT_HL2MP_WALK_SUITCASE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.2
	fadeout 0.2
}

$sequence "cidle_ar2" {
	"grunt_player_anims\cidle_ar2.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_AR2" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_crossbow" {
	"grunt_player_anims\cidle_crossbow.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_CROSSBOW" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_camera" {
	"grunt_player_anims\cidle_camera.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_CAMERA" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_dual" {
	"grunt_player_anims\cidle_dual.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_DUEL" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_fist" {
	"grunt_player_anims\cidle_fist.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_FIST" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_grenade" {
	"grunt_player_anims\cidle_grenade.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_GRENADE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_knife" {
	"grunt_player_anims\cidle_knife.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_KNIFE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_magic" {
	"grunt_player_anims\cidle_magic.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_MAGIC" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_melee" {
	"grunt_player_anims\cidle_melee.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_MELEE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_melee2" {
	"grunt_player_anims\cidle_melee2.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_MELEE2" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_passive" {
	"grunt_player_anims\cidle_passive.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_PASSIVE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_physgun" {
	"grunt_player_anims\cidle_physgun.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_PHYSGUN" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_pistol" {
	"grunt_player_anims\cidle_pistol.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_PISTOL" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_revolver" {
	"grunt_player_anims\cidle_revolver.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_REVOLVER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_rpg" {
	"grunt_player_anims\cidle_rpg.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_RPG" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_shotgun" {
	"grunt_player_anims\cidle_shotgun.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_SHOTGUN" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_slam" {
	"grunt_player_anims\cidle_slam.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_SLAM" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cidle_smg1" {
	"grunt_player_anims\cidle_smg1.smd"
	activity "ACT_HL2MP_IDLE_CROUCH_SMG1" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
	fps 30
	loop
}

$sequence "cwalk_ar2" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_AR2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_camera" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_crossbow" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_dual" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_fist" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_FIST" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_knife" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_magic" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_melee2" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_passive" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	node "crouching"
}

$sequence "cwalk_pistol" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_physgun" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_revolver" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_rpg" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_RPG" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_shotgun" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_smg1" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_grenade" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_melee" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "cwalk_slam" {
	"cWeaponWalk_SW"
	"cWeaponWalk_S"
	"cWeaponWalk_SE"
	"cWeaponWalk_W"
	"cWeaponWalk_C"
	"cWeaponWalk_E"
	"cWeaponWalk_NW"
	"cWeaponWalk_N"
	"cWeaponWalk_NE"
	activity "ACT_HL2MP_WALK_CROUCH_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.4
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "crouching"
}

$sequence "idle_ar2" {
	"grunt_player_anims\idle_ar2.smd"
	activity "ACT_HL2MP_IDLE_AR2" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_camera" {
	"grunt_player_anims\idle_camera.smd"
	activity "ACT_HL2MP_IDLE_CAMERA" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_crossbow" {
	"grunt_player_anims\idle_crossbow.smd"
	activity "ACT_HL2MP_IDLE_CROSSBOW" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_dual" {
	"grunt_player_anims\idle_dual.smd"
	activity "ACT_HL2MP_IDLE_DUEL" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_knife" {
	"grunt_player_anims\idle_knife.smd"
	activity "ACT_HL2MP_IDLE_KNIFE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_grenade" {
	"grunt_player_anims\idle_grenade.smd"
	activity "ACT_HL2MP_IDLE_GRENADE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_magic" {
	"grunt_player_anims\idle_magic.smd"
	activity "ACT_HL2MP_IDLE_MAGIC" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_melee" {
	"grunt_player_anims\idle_melee.smd"
	activity "ACT_HL2MP_IDLE_MELEE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_melee2" {
	"grunt_player_anims\idle_melee2.smd"
	activity "ACT_HL2MP_IDLE_MELEE2" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_passive" {
	"grunt_player_anims\idle_passive.smd"
	activity "ACT_HL2MP_IDLE_PASSIVE" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	node "standing"
	fps 30
	loop
}

$sequence "idle_pistol" {
	"grunt_player_anims\idle_pistol.smd"
	activity "ACT_HL2MP_IDLE_PISTOL" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_physgun" {
	"grunt_player_anims\idle_physgun.smd"
	activity "ACT_HL2MP_IDLE_PHYSGUN" 2
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_revolver" {
	"grunt_player_anims\idle_revolver.smd"
	activity "ACT_HL2MP_IDLE_REVOLVER" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_rpg" {
	"grunt_player_anims\idle_rpg.smd"
	activity "ACT_HL2MP_IDLE_RPG" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_shotgun" {
	"grunt_player_anims\idle_shotgun.smd"
	activity "ACT_HL2MP_IDLE_SHOTGUN" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_slam" {
	"grunt_player_anims\idle_slam.smd"
	activity "ACT_HL2MP_IDLE_SLAM" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "idle_smg1" {
	"grunt_player_anims\idle_smg1.smd"
	activity "ACT_HL2MP_IDLE_SMG1" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "standing"
	fps 30
	loop
}

$sequence "jump_ar2" {
	"grunt_player_anims\jump_ar2.smd"
	activity "ACT_HL2MP_JUMP_AR2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_camera" {
	"grunt_player_anims\jump_camera.smd"
	activity "ACT_HL2MP_JUMP_CAMERA" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_crossbow" {
	"grunt_player_anims\jump_crossbow.smd"
	activity "ACT_HL2MP_JUMP_CROSSBOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_dual" {
	"grunt_player_anims\jump_dual.smd"
	activity "ACT_HL2MP_JUMP_DUEL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_fist" {
	"grunt_player_anims\jump_fist.smd"
	activity "ACT_HL2MP_JUMP_FIST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_grenade" {
	"grunt_player_anims\jump_grenade.smd"
	activity "ACT_HL2MP_JUMP_GRENADE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_knife" {
	"grunt_player_anims\jump_knife.smd"
	activity "ACT_HL2MP_JUMP_KNIFE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_magic" {
	"grunt_player_anims\jump_magic.smd"
	activity "ACT_HL2MP_JUMP_MAGIC" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_melee" {
	"grunt_player_anims\jump_melee.smd"
	activity "ACT_HL2MP_JUMP_MELEE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_melee2" {
	"grunt_player_anims\jump_melee2.smd"
	activity "ACT_HL2MP_JUMP_MELEE2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_passive" {
	"grunt_player_anims\jump_passive.smd"
	activity "ACT_HL2MP_JUMP_PASSIVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_pistol" {
	"grunt_player_anims\jump_pistol.smd"
	activity "ACT_HL2MP_JUMP_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_physgun" {
	"grunt_player_anims\jump_physgun.smd"
	activity "ACT_HL2MP_JUMP_PHYSGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_revolver" {
	"grunt_player_anims\jump_revolver.smd"
	activity "ACT_HL2MP_JUMP_REVOLVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_rpg" {
	"grunt_player_anims\jump_rpg.smd"
	activity "ACT_HL2MP_JUMP_RPG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_shotgun" {
	"grunt_player_anims\jump_shotgun.smd"
	activity "ACT_HL2MP_JUMP_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_slam" {
	"grunt_player_anims\jump_slam.smd"
	activity "ACT_HL2MP_JUMP_SLAM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump_smg1" {
	"grunt_player_anims\jump_smg1.smd"
	activity "ACT_HL2MP_JUMP_SMG1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "run_ar2" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_ar2.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_AR2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_camera" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_camera.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_crossbow" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_crossbow.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_dual" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_dual.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_fist" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_fist.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_FIST" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_knife" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_knife.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_magic" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_magic.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_melee2" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_melee2.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_passive" {
	"a_PassiveRunSW"
	"a_PassiveRunS"
	"a_PassiveRunSE"
	"a_PassiveRunW"
	"a_PassiveRunC"
	"a_PassiveRunE"
	"a_PassiveRunNW"
	"a_PassiveRunN"
	"a_PassiveRunNE"
	activity "ACT_HL2MP_RUN_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	node "running"
}

$sequence "run_physgun" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_physgun.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_revolver" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_revolver.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_rpg" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_rpg.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_RPG" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_shotgun" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_shotgun.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_smg1" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_smg1.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_grenade" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_grenade.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_melee" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_melee.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_pistol" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_pistol.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "run_slam" {
	"a_RunSW"
	"a_RunS"
	"a_RunSE"
	"a_RunW"
	"grunt_player_anims\run_slam.smd"
	"a_RunE"
	"a_RunNW"
	"a_RunN"
	"a_RunNE"
	activity "ACT_HL2MP_RUN_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "running"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "sit_ar2" {
	"grunt_player_anims\sit_ar2.smd"
	activity "ACT_HL2MP_SIT_AR2" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_camera" {
	"grunt_player_anims\sit_camera.smd"
	activity "ACT_HL2MP_SIT_CAMERA" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_crossbow" {
	"grunt_player_anims\sit_crossbow.smd"
	activity "ACT_HL2MP_SIT_CROSSBOW" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_duel" {
	"grunt_player_anims\sit_duel.smd"
	activity "ACT_HL2MP_SIT_duel" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_fist" {
	"grunt_player_anims\sit_fist.smd"
	activity "ACT_HL2MP_SIT_FIST" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_grenade" {
	"grunt_player_anims\sit_grenade.smd"
	activity "ACT_HL2MP_SIT_GRENADE" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_knife" {
	"grunt_player_anims\sit_knife.smd"
	activity "ACT_HL2MP_SIT_KNIFE" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_melee" {
	"grunt_player_anims\sit_melee.smd"
	activity "ACT_HL2MP_SIT_MELEE" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_melee2" {
	"grunt_player_anims\sit_melee2.smd"
	activity "ACT_HL2MP_SIT_MELEE2" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_pistol" {
	"grunt_player_anims\sit_pistol.smd"
	activity "ACT_HL2MP_SIT_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_shotgun" {
	"grunt_player_anims\sit_shotgun.smd"
	activity "ACT_HL2MP_SIT_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_smg1" {
	"grunt_player_anims\sit_smg1.smd"
	activity "ACT_HL2MP_SIT_SMG1" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_physgun" {
	"grunt_player_anims\sit_physgun.smd"
	activity "ACT_HL2MP_SIT_PHYSGUN" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_rpg" {
	"grunt_player_anims\sit_rpg.smd"
	activity "ACT_HL2MP_SIT_RPG" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_passive" {
	"grunt_player_anims\sit_passive.smd"
	activity "ACT_HL2MP_SIT_PASSIVE" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "sit_slam" {
	"grunt_player_anims\sit_slam.smd"
	activity "ACT_HL2MP_SIT_SLAM" 1
	fadein 0.2
	fadeout 0.2
	node "sitting"
	fps 30
	loop
}

$sequence "swim_idle_ar2" {
	"grunt_player_anims\swim_idle_ar2.smd"
	activity "ACT_HL2MP_SWIM_IDLE_AR2" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_camera" {
	"grunt_player_anims\swim_idle_camera.smd"
	activity "ACT_HL2MP_SWIM_IDLE_CAMERA" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_crossbow" {
	"grunt_player_anims\swim_idle_crossbow.smd"
	activity "ACT_HL2MP_SWIM_IDLE_CROSSBOW" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_duel" {
	"grunt_player_anims\swim_idle_duel.smd"
	activity "ACT_HL2MP_SWIM_IDLE_DUEL" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_fist" {
	"grunt_player_anims\swim_idle_fist.smd"
	activity "ACT_HL2MP_SWIM_IDLE_FIST" 1
	fadein 0.4
	fadeout 0.4
	addlayer "aimlayer_head"
	node "swimming"
	fps 30
}

$sequence "swim_idle_gravgun" {
	"grunt_player_anims\swim_idle_gravgun.smd"
	activity "ACT_HL2MP_SWIM_IDLE_PHYSGUN" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_grenade" {
	"grunt_player_anims\swim_idle_grenade.smd"
	activity "ACT_HL2MP_SWIM_IDLE_GRENADE" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_knife" {
	"grunt_player_anims\swim_idle_knife.smd"
	activity "ACT_HL2MP_SWIM_IDLE_KNIFE" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_magic" {
	"grunt_player_anims\swim_idle_magic.smd"
	activity "ACT_HL2MP_SWIM_IDLE_MAGIC" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_melee" {
	"grunt_player_anims\swim_idle_melee.smd"
	activity "ACT_HL2MP_SWIM_IDLE_MELEE" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_melee2" {
	"grunt_player_anims\swim_idle_melee2.smd"
	activity "ACT_HL2MP_SWIM_IDLE_MELEE2" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_passive" {
	"grunt_player_anims\swim_idle_passive.smd"
	activity "ACT_HL2MP_SWIM_IDLE_PASSIVE" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_pistol" {
	"grunt_player_anims\swim_idle_pistol.smd"
	activity "ACT_HL2MP_SWIM_IDLE_PISTOL" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_revolver" {
	"grunt_player_anims\swim_idle_revolver.smd"
	activity "ACT_HL2MP_SWIM_IDLE_REVOLVER" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_rpg" {
	"grunt_player_anims\swim_idle_rpg.smd"
	activity "ACT_HL2MP_SWIM_IDLE_RPG" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_shotgun" {
	"grunt_player_anims\swim_idle_shotgun.smd"
	activity "ACT_HL2MP_SWIM_IDLE_SHOTGUN" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_slam" {
	"grunt_player_anims\swim_idle_slam.smd"
	activity "ACT_HL2MP_SWIM_IDLE_SLAM" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swim_idle_smg1" {
	"grunt_player_anims\swim_idle_smg1.smd"
	activity "ACT_HL2MP_SWIM_IDLE_SMG1" 1
	fadein 0.4
	fadeout 0.4
	node "swimming"
	fps 30
}

$sequence "swimming_ar2" {
	"grunt_player_anims\swimming_ar2.smd"
	activity "ACT_HL2MP_SWIM_AR2" 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_camera" {
	"grunt_player_anims\swimming_camera.smd"
	activity "ACT_HL2MP_SWIM_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_crossbow" {
	"grunt_player_anims\swimming_crossbow.smd"
	activity "ACT_HL2MP_SWIM_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_duel" {
	"grunt_player_anims\swimming_duel.smd"
	activity "ACT_HL2MP_SWIM_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_fist" {
	"grunt_player_anims\swimming_fist.smd"
	activity "ACT_HL2MP_SWIM_FIST" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_gravgun" {
	"grunt_player_anims\swimming_gravgun.smd"
	activity "ACT_HL2MP_SWIM_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_magic" {
	"grunt_player_anims\swimming_magic.smd"
	activity "ACT_HL2MP_SWIM_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_melee2" {
	"grunt_player_anims\swimming_melee2.smd"
	activity "ACT_HL2MP_SWIM_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_passive" {
	"grunt_player_anims\swimming_passive.smd"
	activity "ACT_HL2MP_SWIM_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_revolver" {
	"grunt_player_anims\swimming_revolver.smd"
	activity "ACT_HL2MP_SWIM_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_rpg" {
	"grunt_player_anims\swimming_rpg.smd"
	activity "ACT_HL2MP_SWIM_RPG" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_shotgun" {
	"grunt_player_anims\swimming_shotgun.smd"
	activity "ACT_HL2MP_SWIM_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_smg1" {
	"grunt_player_anims\swimming_smg1.smd"
	activity "ACT_HL2MP_SWIM_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_grenade" {
	"grunt_player_anims\swimming_grenade.smd"
	activity "ACT_HL2MP_SWIM_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_knife" {
	"grunt_player_anims\swimming_knife.smd"
	activity "ACT_HL2MP_SWIM_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_melee" {
	"grunt_player_anims\swimming_melee.smd"
	activity "ACT_HL2MP_SWIM_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_pistol" {
	"grunt_player_anims\swimming_pistol.smd"
	activity "ACT_HL2MP_SWIM_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "swimming_slam" {
	"grunt_player_anims\swimming_slam.smd"
	activity "ACT_HL2MP_SWIM_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.5
	fadeout 0.5
	node "swimming"
	fps 30
}

$sequence "walk_ar2" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_ar2.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_AR2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_camera" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_camera.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_CAMERA" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_crossbow" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_crossbow.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_CROSSBOW" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_dual" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_dual.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_DUEL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_fist" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_fist.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_FIST" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_knife" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_knife.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_KNIFE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_magic" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_magic.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_MAGIC" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_melee2" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_melee2.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_MELEE2" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_passive" {
	"a_Walk_passive_SW"
	"a_Walk_passive_S"
	"a_Walk_passive_SE"
	"a_Walk_passive_W"
	"a_Walk_passive_C"
	"a_Walk_passive_E"
	"a_Walk_passive_NW"
	"a_Walk_passive_N"
	"a_Walk_passive_NE"
	activity "ACT_HL2MP_WALK_PASSIVE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	node "walking"
}

$sequence "walk_physgun" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_physgun.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_PHYSGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_revolver" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_revolver.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_REVOLVER" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_rpg" {
	"a_WalkRPGSW"
	"a_WalkRPGS"
	"a_WalkRPGSE"
	"a_WalkRPGW"
	"grunt_player_anims\walk_rpg.smd"
	"a_WalkRPGE"
	"a_WalkRPGNW"
	"a_WalkRPGN"
	"a_WalkRPGNE"
	activity "ACT_HL2MP_WALK_RPG" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 15 LX LY
}

$sequence "walk_shotgun" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_shotgun.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_SHOTGUN" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_smg1" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_smg1.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_SMG1" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_grenade" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_grenade.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_GRENADE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_melee" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_melee.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_MELEE" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_pistol" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_pistol.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_PISTOL" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "walk_slam" {
	"a_WalkPistolSW"
	"a_WalkPistolS"
	"a_WalkPistolSE"
	"a_WalkPistolW"
	"grunt_player_anims\walk_slam.smd"
	"a_WalkPistolE"
	"a_WalkPistolNW"
	"a_WalkPistolN"
	"a_WalkPistolNE"
	activity "ACT_HL2MP_WALK_SLAM" 1
	blend "move_y" -1 1
	blend "move_x" -1 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_pistol"
	node "walking"
	fps 30
	loop
	walkframe 14 LX LY
}

$sequence "death_01" {
	"grunt_player_anims\death_01.smd"
	activity "ACT_GMOD_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "death_02" {
	"grunt_player_anims\death_02.smd"
	activity "ACT_GMOD_DEATH" 2
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "death_03" {
	"grunt_player_anims\death_03.smd"
	activity "ACT_GMOD_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "death_04" {
	"grunt_player_anims\death_04.smd"
	activity "ACT_GMOD_DEATH" 1
	fadein 0.2
	fadeout 0.2
	fps 34
}

$sequence "idle_melee_angry" {
	"grunt_player_anims\idle_melee_angry.smd"
	activity "ACT_HL2MP_IDLE_MELEE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_suitcase" {
	"grunt_player_anims\idle_suitcase.smd"
	activity "ACT_HL2MP_IDLE_SUITCASE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sit_zen" {
	"grunt_player_anims\sit_zen.smd"
	fadein 0.2
	fadeout 0.2
	fps 5
}

$sequence "pose_standing_01" {
	"grunt_player_anims\pose_standing_01.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pose_standing_02" {
	"grunt_player_anims\pose_standing_02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pose_standing_03" {
	"grunt_player_anims\pose_standing_03.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pose_standing_04" {
	"grunt_player_anims\pose_standing_04.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pose_ducking_01" {
	"grunt_player_anims\pose_ducking_01.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$sequence "pose_ducking_02" {
	"grunt_player_anims\pose_ducking_02.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "seq_cower" {
	"grunt_player_anims\seq_cower.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "seq_preskewer" {
	"grunt_player_anims\seq_preskewer.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gesture_voicechat" {
	"grunt_player_anims\gesture_voicechat.smd"
	activity "ACT_GMOD_IN_CHAT" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_agree" {
	"grunt_player_anims\gesture_agree.smd"
	activity "ACT_GMOD_GESTURE_AGREE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_bow" {
	"grunt_player_anims\gesture_bow.smd"
	activity "ACT_GMOD_GESTURE_BOW" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 32
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_becon" {
	"grunt_player_anims\gesture_becon.smd"
	activity "ACT_GMOD_GESTURE_BECON" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 32
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_disagree" {
	"grunt_player_anims\gesture_disagree.smd"
	activity "ACT_GMOD_GESTURE_DISAGREE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_salute" {
	"grunt_player_anims\gesture_salute.smd"
	activity "ACT_GMOD_TAUNT_SALUTE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_wave" {
	"grunt_player_anims\gesture_wave.smd"
	activity "ACT_GMOD_GESTURE_WAVE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 32
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_item_drop" {
	"grunt_player_anims\gesture_item_drop.smd"
	activity "ACT_GMOD_GESTURE_ITEM_DROP" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_item_give" {
	"grunt_player_anims\gesture_item_give.smd"
	activity "ACT_GMOD_GESTURE_ITEM_GIVE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_item_place" {
	"grunt_player_anims\gesture_item_place.smd"
	activity "ACT_GMOD_GESTURE_ITEM_PLACE" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_item_throw" {
	"grunt_player_anims\gesture_item_throw.smd"
	activity "ACT_GMOD_GESTURE_ITEM_THROW" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_signal_forward" {
	"grunt_player_anims\gesture_signal_forward.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_signal_halt" {
	"grunt_player_anims\gesture_signal_halt.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 25
	weightlist "weights_aimlayer_head"
}

$sequence "gesture_signal_group" {
	"grunt_player_anims\gesture_signal_group.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.1
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_cheer" {
	"grunt_player_anims\taunt_cheer.smd"
	activity "ACT_GMOD_TAUNT_CHEER" 1
	fadein 0.2
	fadeout 0.2
	fps 20
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_dance" {
	"grunt_player_anims\taunt_dance.smd"
	activity "ACT_GMOD_TAUNT_DANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_laugh" {
	"grunt_player_anims\taunt_laugh.smd"
	activity "ACT_GMOD_TAUNT_LAUGH" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_muscle" {
	"grunt_player_anims\taunt_muscle.smd"
	activity "ACT_GMOD_TAUNT_MUSCLE" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_robot" {
	"grunt_player_anims\taunt_robot.smd"
	activity "ACT_GMOD_TAUNT_ROBOT" 1
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weights_aimlayer_head"
}

$sequence "taunt_persistence" {
	"grunt_player_anims\taunt_persistence.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "shotgun_pump" {
	"grunt_player_anims\shotgun_pump.smd"
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_head"
	fps 30
}

$sequence "fist_block" {
	"grunt_player_anims\fist_block.smd"
	activity "ACT_HL2MP_FIST_BLOCK" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_head"
	fps 30
	weightlist "weights_aimlayer_head"
}

$sequence "range_ar2" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_crossbow" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_dual_r" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_dual_l" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_gravgun" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_PHYSGUN" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_grenade" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_knife" {
	"range_pistol_1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_melee" {
	"grunt_player_anims\range_melee.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_melee2_b" {
	"grunt_player_anims\range_melee2_b.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_pistol" {
	"grunt_player_anims\range_pistol.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_range_ar2"
}

$sequence "range_revolver" {
	"grunt_player_anims\range_revolver.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_range_ar2"
}

$sequence "range_rpg" {
	"range_rpg1"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "range_shotgun" {
	"grunt_player_anims\range_shotgun.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_range_ar2"
}

$sequence "range_slam" {
	"grunt_player_anims\range_slam.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_range_ar2"
}

$sequence "range_smg1" {
	"grunt_player_anims\range_smg1.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_range_ar2"
}

$sequence "reload_ar2" {
	"grunt_player_anims\reload_ar2.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_AR2" 1
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_pistol" {
	"grunt_player_anims\reload_pistol.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_PISTOL" 1
	fadein 0.2
	fadeout 0.1
	fps 32
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_smg1" {
	"grunt_player_anims\reload_smg1.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_SMG1" 1
	fadein 0.2
	fadeout 0.1
	fps 34
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_smg1_alt" {
	"grunt_player_anims\reload_smg1_alt.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_SMG1" 1
	fadein 0.2
	fadeout 0.1
	fps 34
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_dual" {
	"grunt_player_anims\reload_dual.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_DUEL" 1
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_revolver" {
	"grunt_player_anims\reload_revolver.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_REVOLVER" 1
	fadein 0.2
	fadeout 0.1
	fps 38
	weightlist "weights_aimlayer_pistol"
}

$sequence "reload_shotgun" {
	"grunt_player_anims\reload_shotgun.smd"
	activity "ACT_HL2MP_GESTURE_RELOAD_SHOTGUN" 1
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_melee_shove_2hand" {
	"grunt_player_anims\range_melee_shove_2hand.smd"
	activity "ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND" 1
	fadein 0.2
	fadeout 0.1
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_melee_shove_1hand" {
	"grunt_player_anims\range_melee_shove_1hand.smd"
	activity "ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND" 1
	fadein 0.2
	fadeout 0.1
	fps 36
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_melee_shove" {
	"grunt_player_anims\range_melee_shove.smd"
	fadein 0.2
	fadeout 0.2
	fps 35
	weightlist "weights_aimlayer_pistol"
}

$sequence "flinch_01" {
	"grunt_player_anims\flinch_01.smd"
	activity "ACT_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_02" {
	"grunt_player_anims\flinch_02.smd"
	activity "ACT_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_back_01" {
	"grunt_player_anims\flinch_back_01.smd"
	activity "ACT_FLINCH_BACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_head_01" {
	"grunt_player_anims\flinch_head_01.smd"
	activity "ACT_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_head_02" {
	"grunt_player_anims\flinch_head_02.smd"
	activity "ACT_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_phys_01" {
	"grunt_player_anims\flinch_phys_01.smd"
	activity "ACT_FLINCH_PHYSICS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_phys_02" {
	"grunt_player_anims\flinch_phys_02.smd"
	activity "ACT_FLINCH_PHYSICS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_shoulder_l" {
	"grunt_player_anims\flinch_shoulder_l.smd"
	activity "ACT_FLINCH_SHOULDER_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_shoulder_r" {
	"grunt_player_anims\flinch_shoulder_r.smd"
	activity "ACT_FLINCH_SHOULDER_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_stomach_01" {
	"grunt_player_anims\flinch_stomach_01.smd"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flinch_stomach_02" {
	"grunt_player_anims\flinch_stomach_02.smd"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_fist" {
	"grunt_player_anims\idle_fist.smd"
	activity "ACT_HL2MP_IDLE_FIST" 1
	fadein 0.3
	fadeout 0.3
	addlayer "aimlayer_head"
	fps 30
}

$sequence "range_fists_r" {
	"grunt_player_anims\range_fists_r.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST" 2
	blend "aim_pitch" -45 45
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "range_fists_l" {
	"grunt_player_anims\range_fists_l.smd"
	activity "ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST" 1
	blend "aim_pitch" -45 45
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_aimlayer_pistol"
}

$sequence "drive_pd" {
	"grunt_player_anims\drive_pd.smd"
	activity "ACT_DRIVE_POD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sit_rollercoaster" {
	"grunt_player_anims\sit_rollercoaster.smd"
	activity "ACT_GMOD_SIT_ROLLERCOASTER" 1
	fadein 0.3
	fadeout 0.3
	fps 30
}

$sequence "drive_airboat" {
	"grunt_player_anims\drive_airboat.smd"
	activity "ACT_DRIVE_AIRBOAT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "drive_jeep" {
	"grunt_player_anims\drive_jeep.smd"
	activity "ACT_DRIVE_JEEP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionjoints "grunt_player_physics.smd"
{
	$mass 300
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "b_pelvis"


	$jointconstrain "b_l_thigh" x limit -24 24 0
	$jointconstrain "b_l_thigh" y limit -82 15 0
	$jointconstrain "b_l_thigh" z limit -32 32 0

	$jointconstrain "b_l_calf" x limit 0 0 0
	$jointconstrain "b_l_calf" y limit -10 126 0
	$jointconstrain "b_l_calf" z limit -6 6 0

	$jointconstrain "b_spine2" x limit -48 48 0
	$jointconstrain "b_spine2" y limit -25 25 0
	$jointconstrain "b_spine2" z limit -25 50 0

	$jointconstrain "b_l_upperarm" x limit -30 30 0
	$jointconstrain "b_l_upperarm" y limit -95 84 0
	$jointconstrain "b_l_upperarm" z limit -86 26 0

	$jointconstrain "b_r_upperarm" x limit -39 39 0
	$jointconstrain "b_r_upperarm" y limit -79 95 0
	$jointconstrain "b_r_upperarm" z limit -93 23 0

	$jointconstrain "b_r_forearm" x limit -30 30 0
	$jointconstrain "b_r_forearm" y limit 0 120 0
	$jointconstrain "b_r_forearm" z limit -10 10 0

	$jointconstrain "b_l_forearm" x limit -30 30 0
	$jointconstrain "b_l_forearm" y limit 0 120 0
	$jointconstrain "b_l_forearm" z limit -10 10 0

	$jointconstrain "b_head" x limit -6 6 0
	$jointconstrain "b_head" y limit -12 12 0
	$jointconstrain "b_head" z limit -15 25 0

	$jointconstrain "b_r_thigh" x limit -24 24 0
	$jointconstrain "b_r_thigh" y limit -82 15 0
	$jointconstrain "b_r_thigh" z limit -32 32 0

	$jointconstrain "b_r_calf" x limit 0 0 0.2
	$jointconstrain "b_r_calf" y limit -10 126 0
	$jointconstrain "b_r_calf" z limit -6 6 0

	$jointconstrain "b_r_foot" x limit 0 0 0
	$jointconstrain "b_r_foot" y limit -25 6 0
	$jointconstrain "b_r_foot" z limit -15 35 0

	$jointconstrain "b_l_foot" x limit 0 0 0
	$jointconstrain "b_l_foot" y limit -19 19 0
	$jointconstrain "b_l_foot" z limit -15 35 0

	$jointcollide "b_r_forearm" "b_r_thigh"
	$jointcollide "b_r_forearm" "b_l_thigh"
	$jointcollide "b_l_forearm" "b_r_thigh"
	$jointcollide "b_l_forearm" "b_l_thigh"
	$jointcollide "b_r_foot" "b_l_calf"
	$jointcollide "b_l_foot" "b_r_calf"
	$jointcollide "b_l_foot" "b_r_foot"
	$jointcollide "b_r_calf" "b_l_calf"
	$jointcollide "b_r_thigh" "b_l_thigh"
	$jointcollide "b_r_forearm" "b_spine2"
	$jointcollide "b_l_forearm" "b_spine2"
	$jointcollide "b_r_forearm" "b_spine2"
	$jointcollide "b_l_forearm" "b_spine2"
}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.300000"
		"animfrictiontimehold"		"0.000000"
	}
	editparams 
	{
		"rootname"		"b_spine2"
		"totalmass"		"90.000000"
	}
}
