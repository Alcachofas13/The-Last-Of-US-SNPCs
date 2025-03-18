ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Molotov Fire"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
        self:SetModel( "models/weapons/tlou/molotov.mdl" )
        self:SetMoveType( MOVETYPE_NONE )
        self:SetSolid( SOLID_NONE )
        self:DrawShadow( false )
		ParticleEffect( "astw2_tlou_molotov_grenade", self:GetPos(), self:GetAngles() )
		else
	-- local light = DynamicLight(self:EntIndex())
        -- if (light) then
            -- light.Pos = self:GetPos()
            -- light.r = 255
            -- light.g = 135
            -- light.b = 0
            -- light.Brightness = 8
            -- light.Decay = 10
            -- light.Size = 512
            -- light.DieTime = CurTime() + 7.3
        -- end
    end
	-- self:EmitSound(Sound("weapons/grenades/incendiarygrenade_firespread0" .. math.random(1,3) .. ".ogg"))
    

    self.dt = CurTime() + 7
	if CLIENT then
	ParticleEffect( "astw2_tlou_molotov_grenade", self:GetPos(), self:GetAngles() )
	end
end

ENT.NextUpdateT = 0
function ENT:Think()
    if CurTime() >= self.dt then
        if SERVER then
            self:Remove()
        end
    else
        local targets = ents.FindInSphere(self:GetPos(), 175)
        for _, k in pairs(targets) do
            if IsValid(k) and (k:IsPlayer() or k:IsNPC()) then
                local attacker = IsValid(self.Owner) and self.Owner or self
                local damage = DamageInfo()
                damage:SetAttacker(attacker)
                damage:SetDamage(5)
                damage:SetDamageType(DMG_BURN)
                damage:SetInflictor(self)

                -- Asegúrate de que k tenga el método TakeDamageInfo
                if k.TakeDamageInfo then
                    k:TakeDamageInfo(damage)
                    k:Ignite(1)
                end
            end
        end
    end
end

function ENT:Draw()
    language.Add("astw2_tlou_molotov_fire", "Molotov Cocktail")
    killicon.Add("astw2_tlou_molotov_fire", "vgui/tlou/molotov", Color(255, 255, 255, 255))
    self:DrawModel()
end