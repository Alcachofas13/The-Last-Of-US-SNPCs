ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Brick"
ENT.Author = "Alcachofas 13"
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/tlou/brick.mdl"
ENT.FuseTime = 5
ENT.ArmTime = 0
ENT.PlasmaDamage = 30

AddCSLuaFile()

function ENT:Initialize()
    if SERVER then
		util.SpriteTrail( self, 1, Color( 255, 255, 255, 64 ), false, 6, 2, 0.12, 1 / ( 15 + 1 ) * 0.05, "effects/tlou/zbeam2" )
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( false )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
			phys:SetMass(1)
            phys:SetBuoyancyRatio(0)
            phys:EnableGravity( true )
        end

        self.kt = CurTime() + self.FuseTime
    end
	
    self.at = CurTime() + self.ArmTime
    self.Armed = false
end


function ENT:PhysicsCollide(data, physobj)
    -- if self.at <= CurTime() then
        self:Detonate()
		-- util.Decal( "RedGlowFade", self:GetPos(), self:GetPos() + data.HitNormal*32, self )
    if self.at > CurTime() then
        self:Remove()
    end
end

function ENT:Arm()
    if SERVER then
        -- self.motorsound:Play()
    end
end

function ENT:Think()
	if self.FuseTime >= CurTime() then self:Remove() end
    if CurTime() >= self.at and !self.Armed then
        self:Arm()
        self.Armed = true
    end

    if SERVER then

        if CurTime() >= self.kt then
            self:Detonate()
        end
    end

end
 

function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
        ParticleEffect( "astw2_tlou_brick_impact", self:GetPos(), self:GetAngles() )
        else
        ParticleEffect( "astw2_tlou_brick_impact", self:GetPos(), self:GetAngles() )
		sound.Play( "physics/concrete/concrete_break"..math.random(2,3)..".wav",  self:GetPos(), 70, math.random(125,175) )

        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

	 local ent = self.Owner
	if !IsValid(ent) then ent = self end
	 local t = DamageInfo()
			t:SetDamage(self.PlasmaDamage)
			t:SetDamageType(DMG_CLUB)
			t:SetAttacker(ent)
			t:SetInflictor(self)
	util.BlastDamageInfo(t, self:GetPos(), 32)
        self:Remove()
		self:StopParticles()
    end
end

function ENT:Draw()
	self:DrawModel()
end