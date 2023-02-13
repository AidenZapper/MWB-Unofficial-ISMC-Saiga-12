AddCSLuaFile()

include("animations.lua")
include("customization.lua")
//include("sounds.lua")

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")

if CLIENT then
    killicon.Add( "mg_akilo47", "VGUI/entities/mg_akilo47", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_cac_weapon_ar_akilo47")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_smg_pose_offset", "grip_vert_offset", "grip_vert_smg_offset", 
"grip_vert_pro_offset", "grip_vert_pro_smg_offset", "grip_smg_anggrip_offset"}

SWEP.PrintName = "Saiga-12"
SWEP.Category = "Modern Warfare - Customs"
SWEP.SubCategory = "Shotguns"
SWEP.Spawnable = true
SWEP.VModel = Model("models/weapons/mwcustom/v_mwu_saiga12.mdl")
SWEP.WorldModel = Model("models/viper/mw/weapons/w_akilo47.mdl")

SWEP.Slot = 2
SWEP.HoldType = "Rifle"
SWEP.Trigger = {
    PressedSound = Sound("mw19.akilo47.fire.first"),
    ReleasedSound = Sound("mw19.akilo47.fire.disconnector"),
    Time = 0.025
}

SWEP.Primary.Sound = Sound("mw19.akilo47.fire")
SWEP.Primary.Ammo = "Buckshot"
SWEP.Primary.ClipSize = 10
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 300 
SWEP.CanChamberRound = false  
SWEP.CanDisableAimReload = false
  
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_shotgun",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_AR.Outside"),
            Reflection = Sound("Reflection_AR.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_AR.Inside"),
            Reflection = Sound("Reflection_AR.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Full Auto",
        OnSet = function()
            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = "Semi Automatic",
        OnSet = function(self)
            self.Primary.Automatic = false
            self.Primary.RPM = 350
            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 75,
    TemperatureThreshold = 300, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.95, --accuracy while hip
    Ads = 0.95, --accuracy while aiming
    Increase = 0.093, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.24, --multiply the increase value by this amount while aiming
    Max = 2.00, --the cone size will not go beyond this size
    Decrease = 0.6, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 6789 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {2, 2}, --random value between the 2
    Horizontal = {-1.3, 1.3}, --random value between the 2
    Shake = 0.9, --camera shake
    AdsMultiplier = 0.2, --multiply the values by this amount while aiming
    Seed = 55326 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {50, 30}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 20, --in meters, damage will start dropping off after this range
    EffectiveRange = 32, --in meters, damage scales within this distance
    Range = 35, --in meters, after this distance the bullet stops existing
    Tracer = true, --show tracer
    NumBullets = 5, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.95, --how much damaged is multipled by when leaving a surface.
        MaxCount = 12, --how many times the bullet can penetrate.
        Thickness = 18, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 8
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(0, 90, -90),
    Pos = Vector(-5,0,9)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 1, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, -4, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(3, 0, -2), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 3), Angles = Angle(10, -20, 0)}
        }
    },

    RecoilMultiplier = 0.55,
    KickMultiplier = 2,
    AimKickMultiplier = 0.4
}

SWEP.Shell = "mwb_shelleject_12g_black"