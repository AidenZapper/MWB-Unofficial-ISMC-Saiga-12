
ATTACHMENT.Base = "att_skin_saiga"
ATTACHMENT.Name = "Tan"
ATTACHMENT.Icon = Material("vgui/icons/ismc_saiga12/ismc_saiga12taniconatt.vmt")
ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE
ATTACHMENT.CosmeticChange = true


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Appearance(model, category)
    BaseClass.Appearance(self, model, category)
    if (SERVER) then return end
	model:SetSkin(3)
end