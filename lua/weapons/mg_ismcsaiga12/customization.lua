AddCSLuaFile()
function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.akilo47.fire.suppressed")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_AR_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_AR_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        } 
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

function SWEP:doSmgStats()
    local bSup1 = self:HasAttachment("attachment_vm_silencer_east01")
    local bSup2 = self:HasAttachment("attachment_vm_silencer02")
    local bSup3 = self:HasAttachment("attachment_vm_silencer03")
    local bSup4 = self:HasAttachment("attachment_vm_silencer04")

    if (!bSup1 && !bSup2 && !bSup3 && !bSup4) then
        self.Primary.Sound = Sound("mw19.akilo47.smgcal.fire")
        self.Reverb = {
            RoomScale = 50000,
            Sounds = {
                Outside = {
                    Layer = Sound("Atmo_AR3.Outside"),
                    Reflection = Sound("Reflection_AR.Outside")
                },
        
                Inside = { 
                    Layer = Sound("Atmo_AR.Inside"),
                    Reflection = Sound("Reflection_AR.Inside")
                }
            }
        }
    end

    self.Shell = "mwb_shelleject_12g_black"
end

SWEP.Customization = {
    {"att_perk", "attachment_vm_ar_akilo47_perk_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_headshot"},
	
	{"att_skin_saiga", "attachment_vm_sh_saiga12_tan_skin"},
	
	{"attachment_vm_sh_saiga12_stock"},

    {"attachment_vm_sh_saiga12_mag", "attachment_vm_sh_saiga12_drummag"}, 	
	
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils"); mw_utils.LoadInjectors(SWEP)