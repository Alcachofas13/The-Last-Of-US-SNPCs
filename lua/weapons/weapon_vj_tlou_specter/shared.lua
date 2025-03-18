SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Specter Rifle"
SWEP.Author = "Alcachofas 13"

SWEP.MadeForNPCsOnly = true
SWEP.WorldModel = "models/weapons/tlou/rifle_spectre.mdl"
SWEP.HoldType = "ar2"
if CLIENT then
    killicon.Add( "astw2_tlou_rifle_assault", "vgui/tlou/ar", Color( 255, 255, 255, 200 ) )
end

SWEP.Primary.Damage = 5 -- Damage
SWEP.Primary.Force = 5 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 30 -- Max amount of rounds per clip
SWEP.Primary.Recoil = 0.3 -- How much recoil does the player get?
SWEP.Primary.Delay = 0.1 -- Time until it can shoot again
SWEP.Primary.Automatic = true -- Should the weapon continue firing as long as the attack button is held down?
SWEP.Primary.AllowInWater = false -- Can it be fired in water?
SWEP.Primary.Ammo = "SMG1" -- Ammo type
SWEP.Primary.Sound = "weapons/tlou/spectre/fire.wav"
SWEP.PrimaryEffects_MuzzleAttachment = 1
SWEP.PrimaryEffects_ShellType = "RifleShellEject"

SWEP.NPC_ReloadSound = "weapons/tlou/spectre/bolt.wav"