
ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default Weapon Skins"
ATTACHMENT.Category = "Skins"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Appearance(model, category)
    BaseClass.Appearance(self, model, category)
	model:SetSkin(0)
end