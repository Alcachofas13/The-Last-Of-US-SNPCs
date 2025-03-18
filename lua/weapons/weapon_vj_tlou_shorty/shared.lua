SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Shorty"
SWEP.Author = "DrVrej"
SWEP.Contact = "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose = "This weapon is made for Players and NPCs"
SWEP.Instructions = "Controls are like a regular weapon."
SWEP.Category = "VJ Base"
-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 0.9 -- RPM of the weapon in seconds | Calculation: 60 / RPM
SWEP.NPC_TimeUntilFire = 0.2 -- How much time until the bullet/projectile is fired?
SWEP.NPC_CustomSpread = 2.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_FiringDistanceScale = 0.5 -- Changes how far the NPC can fire | 1 = No change, x < 1 = closer, x > 1 = farther
SWEP.NPC_ExtraFireSound = "weapons/tlou/shorty/bolt.wav"
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel = "models/weapons/tlou/shorty.mdl"
SWEP.HoldType = "shotgun"
SWEP.Spawnable = false
SWEP.AdminSpawnable = false
SWEP.MadeForNPCsOnly = true
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
	SWEP.Primary.Damage = 4 -- Damage
	SWEP.Primary.PlayerDamage = "Double" -- For players only | "Same" = Same as self.Primary.Damage | "Double" = Double the self.Primary.Damage | number = Overrides self.Primary.Damage
	SWEP.Primary.Force = 1 -- Force applied on the object the bullet hits
	SWEP.Primary.NumberOfShots = 7 -- How many shots per attack?
	SWEP.Primary.ClipSize = 6 -- Max amount of rounds per clip
	SWEP.Primary.Cone = 12 -- How accurate is the bullet? (Players)
	SWEP.Primary.Delay = 0.8 -- Time until it can shoot again
	SWEP.Primary.Automatic = true -- Should the weapon continue firing as long as the attack button is held down?
	SWEP.Primary.Ammo = "Buckshot" -- Ammo type
	SWEP.Primary.Sound = "weapons/tlou/shorty/obsolete/fire.wav"
	SWEP.PrimaryEffects_MuzzleAttachment = 1
	SWEP.PrimaryEffects_ShellAttachment = 2
	SWEP.PrimaryEffects_ShellType = "ShotgunShellEject"
	-- Reload Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.HasReloadSound = true -- Does it have a reload sound? Remember even if this is set to false, the animation sound will still play!
SWEP.NPC_ReloadSound = "weapons/tlou/shorty/bolt.wav"
SWEP.Reload_TimeUntilAmmoIsSet	= 1 -- Time until ammo is set to the weapon