SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Service Pistol"
SWEP.Author = "Alcachofas 13"
	-- Client Settings ---------------------------------------------------------------------------------------------------------------------------------------------
if CLIENT then
	killicon.Add( "astw2_tlou_pistol_officer", "vgui/tlou/service_pistol", Color( 255, 255, 255, 200 ) )
end
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 0.3 -- RPM of the weapon in seconds | Calculation: 60 / RPM
SWEP.NPC_CustomSpread = 0.8 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel = "models/weapons/tlou/pistol_service.mdl"
SWEP.HoldType = "pistol"
SWEP.Spawnable = false
SWEP.AdminSpawnable = false
SWEP.MadeForNPCsOnly = true
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 9 -- Damage
SWEP.Primary.ClipSize = 20 -- Max amount of rounds per clip
SWEP.Primary.Delay = 0.5 -- Time until it can shoot again
SWEP.Primary.Automatic = true -- Should the weapon continue firing as long as the attack button is held down?
SWEP.Primary.Ammo = "Pistol" -- Ammo type
SWEP.Primary.Sound = "weapons/TLOU/9mm/fire.wav"
SWEP.Primary.AllowInWater = false -- Can it be fired in water?
SWEP.PrimaryEffects_MuzzleAttachment = 1
SWEP.PrimaryEffects_ShellAttachment = 2
SWEP.PrimaryEffects_ShellType = "ShellEject"
	-- Reload Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasReloadSound = true -- Does it have a reload sound? Remember even if this is set to false, the animation sound will still play!
SWEP.NPC_ReloadSound = "weapons/TLOU/9mm/magin.wav"
SWEP.Reload_TimeUntilAmmoIsSet	= 1 -- Time until ammo is set to the weapon