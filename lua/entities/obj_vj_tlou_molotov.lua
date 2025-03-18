ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Molotov"
ENT.Author = "Alcachofas 13"
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/tlou/molotov.mdl"
ENT.FuseTime = 10
ENT.ArmTime = 0
ENT.ImpactFuse = true

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
		ParticleEffectAttach( "astw2_tlou_trail_molotov", PATTACH_POINT_FOLLOW, self, 1 )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
        self:DrawShadow( true )
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
			phys:SetMass(2)
        end

        self.kt = CurTime() + self.FuseTime
        self.st = CurTime() + self.FuseTime/6
        self.at = CurTime() + self.ArmTime
        self:EmitSound("weapons/tlou/molotov/throw.wav")
    end
	if CLIENT then
	ParticleEffectAttach( "astw2_tlou_trail_molotov", PATTACH_POINT_FOLLOW, self, 1 )
	end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
			util.Decal( "Scorch", self:GetPos(), self:GetPos() + data.HitNormal*32, self )
        end
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.Speed > 75 then
            self:EmitSound(Sound("weapons/tlou/molotov/bounce0" .. math.random(1,3) .. ".wav"))
        elseif data.Speed > 25 then
            self:EmitSound(Sound("weapons/tlou/molotov/bounce0" .. math.random(1,3) .. ".wav"))
        end

        if self.at <= CurTime() and self.ImpactFuse then
            self:Detonate()
			util.Decal( "Scorch", self:GetPos(), self:GetPos() + data.HitNormal*32, self )
			self.Normal = data.HitNormal
        end
    end
end

function ENT:ServerThink()
        if SERVER and CurTime() >= self.kt then
        self:Detonate()
		end
		
		return 0.2
end

function ENT:Think()
    if SERVER then self:NextThink( self:ServerThink() or 0.1 ) end
    return true
end

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end

        -- if self:WaterLevel() < 1 then
            local cloud = ents.Create( "obj_vj_tlou_molotov_fire" )
            if !IsValid( cloud ) then return end
            cloud:SetPos( self:GetPos() )
			cloud:SetOwner(self.Owner)
            cloud:Spawn()
			-- print(cloud:GetOwner())
        -- end
			-- sound.Play( "weapons/grenades/incendiarygrenade_explosion0" .. math.random(1,3) .. ".ogg",  self:GetPos(), 100, 100 )
			self:EmitSound("astw2_tlou_explosion_molotov", 100, 100)
			util.ScreenShake(self:GetPos(),5000,100,1.8,1024)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
		local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 221
            light.b = 35
            light.Brightness = 16
            light.Decay = 2
            light.Size = 300
            light.DieTime = CurTime() + 0.1
        end
    end
end