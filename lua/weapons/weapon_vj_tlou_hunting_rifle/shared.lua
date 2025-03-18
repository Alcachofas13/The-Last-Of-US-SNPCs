SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Assault Rifle"
SWEP.Author = "Alcachofas 13"

SWEP.MadeForNPCsOnly = true
SWEP.WorldModel = "models/weapons/tlou/rifle_assault.mdl"
SWEP.HoldType = "ar2"
if CLIENT then
    killicon.Add( "astw2_tlou_rifle_assault", "vgui/tlou/ar", Color( 255, 255, 255, 200 ) )
end

SWEP.NPC_NextPrimaryFire = 2 -- RPM of the weapon in seconds | Calculation: 60 / RPM
SWEP.NPC_TimeUntilFire = 0.5 -- How much time until the bullet/projectile is fired?
SWEP.NPC_CustomSpread = 0.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_FiringDistanceScale = 2.5 -- Changes how far the NPC can fire | 1 = No change, x < 1 = closer, x > 1 = farther
SWEP.NPC_StandingOnly = true -- If true, the weapon can only be fired if the NPC is standing still
	-- ====== Reload Variables ====== --
SWEP.NPC_ReloadSound = "weapons/tlou/hunting/obsoltet/boltforward.wav" -- Sounds it plays when the base detects the SNPC playing a reload animation
	-- ====== Extra Firing Sound Variables ====== --
SWEP.NPC_ExtraFireSound = "weapons/tlou/hunting/obsoltet/boltback.wav" -- Plays an extra sound after it fires (Example: Bolt action sound)
SWEP.NPC_ExtraFireSoundTime = 0.4 -- How much time until it plays the sound (After Firing)?
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly = true -- Is this weapon meant to be for NPCs only?
SWEP.WorldModel = "models/weapons/tlou/rifle_hunting.mdl"
SWEP.WorldModel_UseCustomPosition = true -- Should the gun use custom position? This can be used to fix guns that are in the crotch
SWEP.WorldModel_CustomPositionAngle = Vector(-8, 90, 180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-4.4, -1, -0.5)
SWEP.HoldType = "ar2"
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 80 -- Damage
SWEP.Primary.Force = 1 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 10 -- Max amount of rounds per clip
SWEP.Primary.Ammo = "SniperRound" -- Ammo type
SWEP.Primary.Sound = "weapons/tlou/hunting/obsoltet/fire.wav"