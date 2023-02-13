// Created by Crowbar 0.73

$modelname "attachment_vm_saiga12_drum_mag.mdl"

$bodygroup "grip"
{
	studio "attachment_vm_saiga12_drum_mag.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$mostlyopaque

$cdmaterials "models\weapons\ins2_sandstorm\ismc_saiga12\"

$cbox 0 0 0 0 0 0

//$bbox -2.796 -2.794 -5.732 1.118 2.794 0.812

$definebone "tag_mag_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_mag1" "tag_mag_attach" -1.323 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_mag2" "tag_mag_attach" -1.323 0 0.184 0 0 0 0 0 0 0 0 0
$definebone "j_drumbullet1" "j_mag1" 0.003 -0.144 0.333 0 0 0 0 0 0 0 0 0
$definebone "j_drumbullet2" "j_mag1" 0.003 0.182 0.167 0 0 0 0 0 0 0 0 0
$definebone "j_drumbullet3" "j_mag1" 0.003 -0.144 -0.038 0 0 0 0 0 0 0 0 0


$sequence "reference" {
	"attachment_vm_ar_akilo47_drum_mag_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
