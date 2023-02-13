--[[
AddCSLuaFile()

MW_ATT_KEYS["attachment_vm_saiga12_mag"] = {

    Name  = "Saiga 12 Magazine",
    Model = Model("models/weapons/mwcustom/attachments/attachment_vm_saiga12_mag.mdl"),

    Stats = function(self)
        self.Animations.Reload = self.Animations.Reload
        self.Animations.Reload_Empty = self.Animations.Reload_Empty
    end
}

MW_ATT_KEYS["attachment_vm_saiga12_drum_mag"] = {
    Name = "20 Round Mags",
    Model = Model("models/weapons/mwcustom/attachments/attachment_vm_saiga12_drum_mag.mdl"),
    Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_drums_akilo47.vmt"),
    Stats = function(self)
        self.Primary.ClipSize = 20
        self.Animations.Reload = self.Animations.Reload_XmagLrg
        self.Animations.Reload_Empty = self.Animations.Reload_Empty_XmagLrg
        self.Animations.Reload_Fast = self.Animations.Reload_XmagLrg_Fast
        self.Animations.Reload_Empty_Fast = self.Animations.Reload_Empty_XmagLrg_Fast
        self.Animations.Ads_In.Fps = self.Animations.Ads_In.Fps * 0.81
        self.Animations.Ads_Out.Fps = self.Animations.Ads_Out.Fps * 0.81
        self.Animations.Holster.Fps = self.Animations.Holster.Fps * 0.8
        self.Animations.Draw.Fps = self.Animations.Draw.Fps * 0.8
    end
}

--]]