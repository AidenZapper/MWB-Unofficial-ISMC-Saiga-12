ATTACHMENT.Base  = "att_magazine"
ATTACHMENT.Name  = "Saiga 12 Magazine"
ATTACHMENT.Model = Model("models/weapons/mwcustom/attachments/attachment_vm_saiga12_mag.mdl")
ATTACHMENT.Icon  = Material("viper/mw/attachments/icons/akilo47/icon_attachment_mag_akilo47_v2.vmt")

ATTACHMENT.BulletList = {
    [1] = {"j_bullet_secondary"},
    [2] = {"j_bullet2_secondary"}
}

ATTACHMENT.ReserveBulletList = {
    [1] = {"j_bullet"},
    [2] = {"j_bullet2"}
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end