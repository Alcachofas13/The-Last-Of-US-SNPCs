SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Revolver"
SWEP.Author = "Alcachofas 13"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
	SWEP.NPC_NextPrimaryFire = 0.95 -- RPM of the weapon in seconds | Calculation: 60 / RPM
	SWEP.NPC_CustomSpread = 0.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel = "models/weapons/tlou/pistol_revolver.mdl"
SWEP.HoldType = "revolver"
SWEP.Spawnable = false
SWEP.AdminSpawnable = false
SWEP.MadeForNPCsOnly = true
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
	SWEP.Primary.Damage = 20 -- Damage
	SWEP.Primary.PlayerDamage = "Double" -- For players only | "Same" = Same as self.Primary.Damage | "Double" = Double the self.Primary.Damage | number = Overrides self.Primary.Damage
	SWEP.Primary.Force = 1 -- Force applied on the object the bullet hits
	SWEP.Primary.ClipSize = 6 -- Max amount of rounds per clip
	SWEP.Primary.Recoil = 2 -- How much recoil does the player get?
	SWEP.Primary.Cone = 1 -- How accurate is the bullet? (Players)
	SWEP.Primary.Delay = 0.9 -- Time until it can shoot again
	SWEP.Primary.Automatic = false -- Should the weapon continue firing as long as the attack button is held down?
	SWEP.Primary.Ammo = "357" -- Ammo type
	SWEP.Primary.Sound = "weapons/tlou/revolver/fire.wav"
	SWEP.PrimaryEffects_MuzzleAttachment = 1
	SWEP.PrimaryEffects_SpawnShells = false
	-- Reload Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasReloadSound = true -- Does it have a reload sound? Remember even if this is set to false, the animation sound will still play!
SWEP.NPC_ReloadSound = "weapons/tlou/revolver/shellsout.wav"
SWEP.Reload_TimeUntilAmmoIsSet	= 1 -- Time until ammo is set to the weapon