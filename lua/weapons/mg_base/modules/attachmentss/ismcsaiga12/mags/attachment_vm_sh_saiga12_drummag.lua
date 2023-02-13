ATTACHMENT.Base  = "att_magazine"
ATTACHMENT.Name  = "Saiga 12 Drum Magazine"
ATTACHMENT.Model = Model("models/weapons/mwcustom/attachments/attachment_vm_saiga12_drum_mag.mdl")
ATTACHMENT.Icon  = Material("viper/mw/attachments/icons/akilo47/icon_attachment_mag_akilo47_v2.vmt")

ATTACHMENT.BulletList = {
    [1] = {"j_drumbullet1"},
    [2] = {"j_drumbullet2"}
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 20
    weapon.Animations.Reload = weapon.Animations.Reload_XmagLrg
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_XmagLrg
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_XmagLrg_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_XmagLrg_Fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.81
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.81
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
end

