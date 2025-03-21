SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Burst Rifle"
SWEP.Author = "Alcachofas 13"
SWEP.Category = "VJ Base"
	-- Client Settings ---------------------------------------------------------------------------------------------------------------------------------------------
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 0.3 -- RPM of the weapon in seconds | Calculation: 60 / RPM
SWEP.NPC_CustomSpread = 0.8 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel = "models/weapons/tlou/rifle_burst.mdl"
SWEP.HoldType = "ar2"
SWEP.ViewModelFOV = 70 -- Player FOV for the view model
SWEP.Spawnable = true
SWEP.AdminSpawnable = false
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.AllowInWater = true -- Can it be fired in water?
SWEP.Primary.Damage = 25 -- Damage
SWEP.Primary.PlayerDamage = 15 -- For players only | "Same" = Same as self.Primary.Damage | "Double" = Double the self.Primary.Damage | number = Overrides self.Primary.Damage
SWEP.Primary.Force = 5 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 9 -- Max amount of rounds per clip
SWEP.Primary.Recoil = 0.3 -- How much recoil does the player get?
SWEP.Primary.Cone = 5 -- How accurate is the bullet? (Players)
SWEP.Primary.Delay = 0.25 -- Time until it can shoot again
SWEP.Primary.Automatic = true -- Should the weapon continue firing as long as the attack button is held down?
SWEP.Primary.Ammo = "SMG1" -- Ammo type
SWEP.Primary.Sound = "weapons/tlou/burstrifle/fire.wav"
SWEP.PrimaryEffects_MuzzleAttachment = 1
SWEP.PrimaryEffects_ShellType = "ShellEject"
	-- Reload Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasReloadSound = true -- Does it have a reload sound? Remember even if this is set to false, the animation sound will still play!
SWEP.ReloadSound = "weapons/tlou/assaultrifle/bolt.wav"
SWEP.Reload_TimeUntilAmmoIsSet = 1.5 -- Time until ammo is set to the weapon
---------------------------------------------------------------------------------------------------------------------------------------------