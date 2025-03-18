ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Brick"
ENT.Author = "Alcachofas 13"
ENT.Spawnable = false
ENT.AdminSpawnable = false


ENT.Model = "models/gibs/xenians/mgib_01.mdl"
ENT.FuseTime = 5
ENT.ArmTime = 0
ENT.PlasmaDamage = 30

AddCSLuaFile()


function ENT:Initialize()
    if SERVER then
        local model = {"models/gibs/xenians/mgib_01.mdl","models/gibs/xenians/mgib_02.mdl", "models/gibs/xenians/mgib_04.mdl"}

        util.SpriteTrail(self, 1, Color(255, 255, 255, 64), false, 6, 2, 0.12, 1 / (15 + 1) * 0.05, "effects/tlou/zbeam2")
        self:SetModel(table.Random(model))
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        self:SetPos(self:GetPos() + self:GetUp() * 50)

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetMass(8)
            phys:SetBuoyancyRatio(0)
            phys:EnableGravity(true)

            -- Aplicar fuerza de lanzamiento
            local launchForce = self:GetForward() * 1000 -- Ajusta el valor 1000 según sea necesario
            phys:ApplyForceCenter(launchForce)
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
            local sporeseffect = EffectData()
            sporeseffect:SetOrigin(self:GetPos() + self:OBBCenter())
            sporeseffect:SetColor(VJ_Color2Byte(Color(240, 240, 206)))
            sporeseffect:SetScale(120)
            util.Effect("VJ_blood1",sporeseffect)
            sound.Play( "npc/antlion/antlion_burst"..math.random(1,2)..".wav",  self:GetPos(), 70, math.random(125,175) )
            util.ScreenShake(self:GetPos(),5000,100,1.8,600)
        if self:WaterLevel() < 1 then
            self:MakeSpores()
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

	 local ent = self.Owner
	if !IsValid(ent) then ent = self end
	 local t = DamageInfo()
			t:SetDamage(self.PlasmaDamage)
			t:SetDamageType(DMG_ACID)
			t:SetAttacker(ent)
			t:SetInflictor(self)
	util.BlastDamageInfo(t, self:GetPos(), 32)
        self:Remove()
		self:StopParticles()
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
            light.Brightness = 20
            light.Decay = 2
            light.Size = 10
            light.DieTime = CurTime() + 0.1
        end
    end
end

function ENT:MakeSpores()
    local sporeMan = self:GetOwner()
    local sporePos = self:GetPos() + self:OBBCenter()

    local duration = 3
    local interval = 0.5
    local elapsedTime = 0
    local damageRadius = 100 -- Radio en el que se causará daño
    local damageAmount = 10 -- Cantidad de daño a aplicar

    timer.Create("SporeEffectTimer" .. self:EntIndex(), interval, duration / interval, function()
        if elapsedTime < duration and sporeMan:IsValid() then
            -- Crear el efecto de esporas
            local sporeseffect = EffectData()
            sporeseffect:SetOrigin(sporePos)
            sporeseffect:SetColor(VJ_Color2Byte(Color(240, 240, 206, math.random(100,234))))
            sporeseffect:SetScale(120)
            util.Effect("VJ_blood1", sporeseffect)

        -- Buscar entidades en el radio de daño
                local entitiesInRange = ents.FindInSphere(sporePos, damageRadius)
                for _, entity in ipairs(entitiesInRange) do
                    if IsValid(entity) then
                        -- Aplicar daño
                        local damageInfo = DamageInfo()
                        damageInfo:SetDamage(damageAmount)
                        damageInfo:SetDamageType(DMG_ACID) -- Cambiar a tipo de daño ácido
                        damageInfo:SetAttacker(sporeMan) -- El atacante es el NPC que genera las esporas
                        damageInfo:SetInflictor(sporeMan) -- El inflictor es el mismo NPC
                            entity:TakeDamageInfo(damageInfo)
                    end
                end

            elapsedTime = elapsedTime + interval
        else
            timer.Remove("SporeEffectTimer" .. self:EntIndex()) -- Eliminar el temporizador después de 3 segundos
        end
    end)
end