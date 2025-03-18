AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
-- $includemodel "anim_common.mdl"
ENT.Model = {"models/the_last_of_us/bloater/bloater.mdl"}
ENT.StartHealth = 500
ENT.VJ_NPC_Class = {"CLASS_CORDYCEPS"}

ENT.Immune_AcidPoisonRadiation = true
ENT.VJC_Data = {
	CameraMode = 1, -- Sets the default camera mode | 1 = Third Person, 2 = First Person
	ThirdP_Offset = Vector(0, 0, 0), -- The offset for the controller when the camera is in third person
	FirstP_Bone = "ValveBiped.Bip01_Head1", -- If left empty, the base will attempt to calculate a position for first person
	FirstP_Offset = Vector(0, 0, 5), -- The offset for the controller when the camera is in first person
	FirstP_ShrinkBone = true, -- Should the bone shrink? Useful if the bone is obscuring the player's view
	FirstP_CameraBoneAng = 0, -- Should the camera's angle be affected by the bone's angle? | 0 = No, 1 = Pitch, 2 = Yaw, 3 = Roll
	FirstP_CameraBoneAng_Offset = 0, -- How much should the camera's angle be rotated by? | Useful for weird bone angles
}

ENT.BloodColor = "Red"
ENT.HasBloodPool = false

ENT.HasMeleeAttack = true
ENT.MeleeAttackDamage = 500
ENT.AnimTbl_MeleeAttack = {"vjges_melee_moving01","vjges_melee_moving02","vjges_melee_moving03","vjges_melee_moving04","vjges_melee_moving05","vjges_melee_moving06"}
ENT.MeleeAttackAnimationAllowOtherTasks = true -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!
ENT.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets


ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.HasRangeAttackSound = true -- If set to false, it won't play the range attack sounds
ENT.HasBeforeRangeAttackSound = true -- If set to false, it won't play the before range attack sounds
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------ Range Attack ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.HasRangeAttack = true -- Can this NPC range attack?
ENT.RangeAttackEntityToSpawn = "obj_vj_tlou_spores" -- Entities that it can spawn when range attacking | If set as a table, it picks a random entity
	-- ====== Animation ====== --
ENT.AnimTbl_RangeAttack = "vjges_Melee_Moving03_Layer"
ENT.RangeAttackAnimationDelay = 0 -- It will wait certain amount of time before playing the animation
ENT.RangeAttackAnimationFaceEnemy = true -- Should it face the enemy while playing the range attack animation?
ENT.RangeAttackAnimationDecreaseLengthAmount = 0 -- This will decrease the time until starts chasing again. Use it to fix animation pauses until it chases the enemy.
ENT.RangeAttackAnimationStopMovement = true -- Should it stop moving when performing a range attack?
	-- ====== Distance ====== --
ENT.RangeDistance = 2000 -- How far can it range attack?
ENT.RangeToMeleeDistance = 350 -- How close does it have to be until it uses melee?
ENT.RangeAttackAngleRadius = 180 -- What is the attack angle radius? | 100 = In front of the NPC | 180 = All around the NPC
	-- ====== Timer ====== --
	-- Set this to false to make the attack event-based:
ENT.TimeUntilRangeAttackProjectileRelease = 1 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 3 -- How much time until it can use a range attack?
ENT.NextRangeAttackTime_DoRand = 20 -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
	-- To let the base automatically detect the attack duration, set this to false:
ENT.NextAnyAttackTime_Range = false -- How much time until it can use any attack again? | Counted in Seconds
ENT.NextAnyAttackTime_Range_DoRand = false -- False = Don't use random time | Number = Picks a random number between the regular timer and this timer
ENT.RangeAttackReps = 1 -- How many times does it run the projectile code?
ENT.RangeAttackExtraTimers = nil -- Extra range attack timers, EX: {1, 1.4} | it will run the projectile code after the given amount of seconds
	-- ====== Control ====== --
ENT.DisableRangeAttackAnimation = false -- if true, it will disable the animation code
ENT.DisableDefaultRangeAttackCode = false -- When true, it won't spawn the range attack entity, allowing you to make your own


ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"vjseq_death_01","vjseq_death_03","vjseq_death_05","vjseq_death_08","vjseq_death_10b","vjseq_death_10c","vjseq_death_11_01a","vjseq_death_11_01b","vjseq_death_11_02a"}
ENT.DeathAnimationChance = 2 -- Put 1 if you want it to play the animation all the time
ENT.SightDistance = 20000
ENT.TurningSpeed = 100
ENT.GibOnDeathDamagesTable = {"UseDefault"} -- Damages that it gibs from | "UseDefault" = Uses default damage types | "All" = Gib from any damage
ENT.DisableFootStepSoundTimer = true -- If set to true, it will disable the time system for the footstep sound code, allowing you to use other ways like model events
ENT.HasExtraMeleeAttackSounds = true -- Set to true to use the extra melee attack sounds
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02"} -- If it uses normal based animation, use this
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.FlinchChance = 1 -- Chance of it flinching from 1 to x | 1 will make it always flinch
ENT.HitGroupFlinching_Values = {
	{HitGroup = {HITGROUP_HEAD}, Animation = {"HeadshotFront"}},
	{HitGroup = {HITGROUP_CHEST, HITGROUP_STOMACH}, Animation = {"Shoved_Backward_01"}}
}

	-- ====== File Path Variables ====== --
	-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_FootStep = {"npc/zombie/foot1.wav","npc/zombie/foot2.wav","npc/zombie/foot3.wav"}
ENT.BreathSoundLevel = 80
ENT.SoundTbl_Breath = {
	"tlou/bloater/idle.wav",
	"tlou/bloater/idle2.wav",
	"tlou/bloater/idle3.wav",
	"tlou/bloater/idle4.wav",
	"tlou/bloater/idle5.wav",
	"tlou/bloater/idle6.wav",
	"tlou/bloater/idle7.wav",
	"tlou/bloater/idle8.wav",
	"tlou/bloater/idle9.wav",
	"tlou/bloater/idle10.wav",
	"tlou/bloater/idle11.wav",
	"tlou/bloater/idle12.wav",
	"tlou/bloater/idle13.wav",
	"tlou/bloater/idle14.wav",
	"tlou/bloater/idle15.wav",
	"tlou/bloater/idle16.wav",
	"tlou/bloater/idle17.wav",
	"tlou/bloater/idle18.wav",
	"tlou/bloater/idle19.wav",
	"tlou/bloater/idle20.wav",
	"tlou/bloater/idle21.wav",
	"tlou/bloater/idle22.wav",
	"tlou/bloater/idle23.wav",
	"tlou/bloater/idle24.wav",
	"tlou/bloater/idle25.wav",
	"tlou/bloater/idle26.wav",
	"tlou/bloater/idle27.wav",
	"tlou/bloater/idle28.wav",
	"tlou/bloater/idle29.wav",
	"tlou/bloater/idle30.wav",
	"tlou/bloater/idle31.wav",
	"tlou/bloater/idle32.wav",
	"tlou/bloater/idle33.wav",
	"tlou/bloater/idle34.wav",
	"tlou/bloater/idle35.wav",
	"tlou/bloater/idle36.wav",
	"tlou/bloater/idle37.wav",
	"tlou/bloater/idle38.wav",
	"tlou/bloater/idle39.wav",
	"tlou/bloater/idle40.wav",
	"tlou/bloater/idle41.wav",
	"tlou/bloater/idle42.wav",
	"tlou/bloater/idle43.wav",
	"tlou/bloater/idle44.wav",
	"tlou/bloater/idle45.wav",
	"tlou/bloater/idle46.wav",
	"tlou/bloater/idle47.wav",
	"tlou/bloater/idle48.wav",
	"tlou/bloater/idle49.wav",
	"tlou/bloater/idle50.wav",
	"tlou/bloater/idle51.wav",
	"tlou/bloater/idle52.wav",
	"tlou/bloater/idle53.wav",
	"tlou/bloater/idle54.wav",
	"tlou/bloater/idle55.wav",
	"tlou/bloater/idle56.wav",
}
ENT.SoundTbl_CombatIdle = true
ENT.SoundTbl_CombatIdle = {
	"tlou/bloater/combat.wav",
	"tlou/bloater/combat2.wav",
	"tlou/bloater/combat3.wav",
	"tlou/bloater/combat4.wav",
	"tlou/bloater/combat5.wav",
	"tlou/bloater/combat6.wav",
	"tlou/bloater/combat7.wav",
	"tlou/bloater/combat8.wav",
	"tlou/bloater/combat9.wav",
}

ENT.SoundTbl_Alert = {
	"tlou/bloater/alert.wav",
	"tlou/bloater/alert2.wav",
	"tlou/bloater/alert3.wav",
	"tlou/bloater/alert4.wav",
	"tlou/bloater/alert5.wav",
	"tlou/bloater/alert6.wav",
	"tlou/bloater/alert7.wav",
	"tlou/bloater/alert8.wav",
	"tlou/bloater/alert9.wav",
	"tlou/bloater/alert10.wav",
	"tlou/bloater/alert11.wav",
	"tlou/bloater/alert12.wav",
	"tlou/bloater/alert13.wav",
	"tlou/bloater/alert14.wav",
	"tlou/bloater/alert15.wav",
	"tlou/bloater/alert16.wav",
	"tlou/bloater/alert17.wav",
	"tlou/bloater/alert18.wav",
	"tlou/bloater/alert19.wav",
	"tlou/bloater/alert20.wav",
	"tlou/bloater/alert21.wav",
	"tlou/bloater/alert22.wav",
	"tlou/bloater/alert23.wav",
	"tlou/bloater/alert24.wav",
	"tlou/bloater/alert25.wav",
	"tlou/bloater/alert26.wav",
	"tlou/bloater/alert27.wav"
}
ENT.SoundTbl_BeforeMeleeAttack = ENT.SoundTbl_CombatIdle
ENT.SoundTbl_MeleeAttackExtra = {"npc/zombie/claw_strike1.wav","npc/zombie/claw_strike2.wav","npc/zombie/claw_strike3.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}

ENT.BeforeRangeAttackSoundLevel = 80
ENT.RangeAttackSoundLevel = 80
ENT.SoundTbl_BeforeRangeAttack = {
	"tlou/bloater/throw.wav",
	"tlou/bloater/throw2.wav",
	"tlou/bloater/throw3.wav",
}
ENT.SoundTbl_Pain = {
	"tlou/bloater/hurt.wav",
	"tlou/bloater/hurt2.wav",
	"tlou/bloater/hurt3.wav",
	"tlou/bloater/hurt4.wav",
	"tlou/bloater/hurt5.wav",
	"tlou/bloater/hurt6.wav",
	"tlou/bloater/hurt7.wav",
	"tlou/bloater/hurt8.wav",
	"tlou/bloater/hurt9.wav",
	"tlou/bloater/hurt10.wav",
	"tlou/bloater/hurt11.wav",
	"tlou/bloater/hurt12.wav",
	"tlou/bloater/hurt13.wav",
	"tlou/bloater/hurt14.wav",
	"tlou/bloater/hurt15.wav",
	"tlou/bloater/hurt16.wav",
	"tlou/bloater/hurt17.wav",
	"tlou/bloater/hurt18.wav",
	"tlou/bloater/hurt19.wav",
	"tlou/bloater/hurt20.wav",
	"tlou/bloater/hurt21.wav",
	"tlou/bloater/hurt22.wav",
	"tlou/bloater/hurt23.wav",
	"tlou/bloater/hurt24.wav",
	"tlou/bloater/hurt25.wav",
	"tlou/bloater/hurt26.wav",
	"tlou/bloater/hurt27.wav",
}
ENT.SoundTbl_Death = {
"tlou/bloater/death.wav",
"tlou/bloater/death2.wav",
"tlou/bloater/death3.wav",
"tlou/bloater/death4.wav",}

-- Custom
ENT.Zombie_NextStumbleT = 0
ENT.Zombie_CurAnims = 1 -- 0 = Normal | 1 = On fire

-- Idle Stance System
ENT.Zombie_IdleState = "Standing" -- Standing | Sitting | Lying
ENT.Zombie_NextGetUpT = 0
ENT.Zombie_NextIdleStanceT = 0

local dmgSetEnemyAnims = {"idle_alert_injured_straight_02","idle_alert_injured_behind_01","idle_alert_injured_right_02","idle_alert_injured_left_02"}
local bloaterAlert = {"idle_acquire_05","idle_acquire_06","idle_acquire_11"}
-------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetModelScale(1.2)
	self.Zombie_NextIdleStanceT = CurTime() + math.Rand(2, 80)
	self.LastHeardEntity = nil
	self.LastHeardT = 0
	local hookName = "VJ_TLOU_bloater_" .. self:EntIndex()
	hook.Add("EntityEmitSound",hookName,function(data)
		if !IsValid(self) or IsValid(self) && self:GetClass() != "npc_vj_tlou_bloater" then
			hook.Remove("EntityEmitSound",hookName)
			return
		end
		local ent = data.Entity
		if IsValid(ent) && ent != self and ent:GetClass() != "npc_vj_tlou_bloater" then
			if (SERVER) && data.SoundLevel >= 50 then
				self:OnSoundDetected(data,ent)
			end
		end
	end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.Spotted = false
function ENT:CustomOnInvestigate(argent)
	if (argent:IsNPC() || argent:IsPlayer()) && self:GetPos():Distance(argent:GetPos()) <= 9999 and GetConVarNumber("ai_disabled") == 0 then
		self.SightDistance = 3000
		self.LastHeardEntity = argent
		self:SetEnemy(self.LastHeardEntity)
		self:SetTarget(self.LastHeardEntity)
		if argent:IsPlayer() and !self.Spotted then 
			self:PlaySoundSystem("Alert")
			argent:SendLua( "surface.PlaySound('tlouspotted')" )
			self.Spotted = true
		 end

	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnSoundDetected(data,ent)
	if ent != self && self:GetPos():Distance(ent:GetPos()) < (self.InvestigateSoundDistance *data.SoundLevel) then
		if IsValid(self:GetEnemy()) then return end
		if ent:IsPlayer() and GetConVarNumber("ai_ignoreplayers") == 1 then return end
		if ent:GetClass() == "npc_vj_tlou_clicker" or ent:GetClass() == "npc_vj_tlou_ellie" or ent:GetClass() == "npc_vj_tlou_bill" or ent:GetClass() == "npc_vj_tlou_tess" or ent:GetClass() == "npc_vj_tlou_tommy" then return end
		if self.VJ_NPC_Class == ent.VJ_NPC_Class then return end
		-- bloater does not chase entities or players who are crouching
		if string.find(ent:GetSequenceName(ent:GetSequence()),"cwalk") or string.find(ent:GetSequenceName(ent:GetSequence()),"Crouch") then return end
			self:CustomOnInvestigate(ent)
			self:SetLastPosition(ent:GetPos())
			self:VJ_TASK_GOTO_LASTPOS("TASK_WALK_PATH")
	end
end
-------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "event_emit step" then
		self:FootStepSoundCode()
	end
	if key == "event_mattack" then
		self:MeleeAttackCode()
	end
end
-------------------------------------------------------------------------------------
ENT.SoundTbl_OnFire = {
	"tlou/bloater/onfire.wav",
	"tlou/bloater/onfire2.wav",
	"tlou/bloater/onfire3.wav",
	"tlou/bloater/onfire4.wav",
}

function ENT:CustomOnThink()

	if self:IsOnFire() then
		-- Selecciona un índice aleatorio de la tabla de sonidos
		local randomIndex = math.random(1, #self.SoundTbl_OnFire)
		local randomSound = self.SoundTbl_OnFire[randomIndex]
		self.HasBreathSound = false
		self.Bleeds = false
		self:PlaySoundSystem("Pain", randomSound)
	elseif self.HasBreathSound == false then
		self.HasBreathSound = true
		self.Bleeds = true
	end

	for _, ent in pairs(ents.FindInSphere(self:GetPos(), 60)) do
		if (ent:IsNPC() || ent:IsPlayer() and GetConVarNumber("ai_ignoreplayers") == 0) and ent:GetClass() != "npc_vj_tlou_clicker" and ent:GetClass() != "npc_vj_tlou_bloater" then
			self:SetEnemy(ent)
		end
	end

end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOn_PoseParameterLookingCode(pitch, yaw, roll)
	self:SetPoseParameter("lean_pitch",math.Clamp(math.ApproachAngle(self:GetPoseParameter("lean_pitch"),-15,15),pitch,self.PoseParameterLooking_TurningSpeed))
	self:SetPoseParameter("lean_yaw",math.Clamp(math.ApproachAngle(self:GetPoseParameter("lean_yaw"),-15,15),yaw,self.PoseParameterLooking_TurningSpeed))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetEnemyOnDamage(dmginfo, hitgroup)
	if self.Zombie_IdleState == "Standing" && math.random(1, 2) == 1 then
		self:VJ_ACT_PLAYACTIVITY("idle_acquire_05", true, math.Rand(1.5, 3)/*self:DecideAnimationLength(anim,false,0.4)*/, true)
		self.Zombie_NoAlertAnimation = true
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnResetEnemy()
	self.Zombie_CurAnims = -1
end
-------------------------------------------------------------------------------------
local nwName = "VJ_TLOU_bloater_Controller"
local entEmitSound = "VJ_TLOU_bloater_Controller_Hear"
util.AddNetworkString(nwName)
util.AddNetworkString(entEmitSound)
function ENT:Controller_Initialize(ply)
	local opt1, opt2, opt3 = self, self:GetClass(), self.VJ_TheControllerEntity
    net.Start(nwName)
		net.WriteBool(false)
		net.WriteEntity(opt1)
		net.WriteString(opt2)
		net.WriteEntity(ply)
		net.WriteEntity(opt3)
    net.Send(ply)

	function self.VJ_TheControllerEntity:CustomOnStopControlling()
		net.Start(nwName)
			net.WriteBool(true)
			net.WriteEntity(opt1)
			net.WriteString(opt2)
			net.WriteEntity(ply)
			net.WriteEntity(opt3)
		net.Send(ply)
	end
	local bloaterClient = "VJ_TLOU_bloater_Client" .. self:EntIndex()
    hook.Add("EntityEmitSound", bloaterClient, function(data)
        if not IsValid(self) then
            hook.Remove("EntityEmitSound", bloaterClient)
            return
        end
        local soundEntity = data.Entity

        -- Verificar si la entidad es válida
        if IsValid(soundEntity) and soundEntity != ply then
            -- Enviar un mensaje al cliente para cambiar el color
            net.Start(entEmitSound)
            	net.WriteEntity(soundEntity) -- Enviar la entidad
			net.Send(ply)
        end
    end)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_SetMainAnims()
	if self.Zombie_IdleState != "Standing" then return end
	if self:IsOnFire() && self.Zombie_CurAnims != 1 && self.Immune_Fire == false then
		self.AnimTbl_IdleStand = {ACT_IDLE_ON_FIRE}
		self.AnimTbl_Walk = {ACT_RUN_ON_FIRE}
		self.AnimTbl_Run = {ACT_RUN_ON_FIRE}
	else if self.Zombie_CurAnims != 0 then
		self.Zombie_CurAnims = 0
		if IsValid(self:GetEnemy()) then
			self.AnimTbl_IdleStand = {ACT_IDLE}
		else
			self.AnimTbl_IdleStand = {ACT_IDLE}
		end
			self.AnimTbl_Walk = {ACT_WALK}
			self.AnimTbl_Run = {ACT_RUN}
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink_AIEnabled()
	self:SetPoseParameter("move_x", 1) -- Kalelou hamar
	
	local eneValid = IsValid(self:GetEnemy())
	if self.Zombie_IdleState == "Standing" then
		if !eneValid && !self:IsMoving() && CurTime() > self.Zombie_NextIdleStanceT then
			local sitTime = math.Rand(10, 30)
			if math.random(1, 3) == 1 then
				self.Zombie_CurAnims = -1
			end
			self.Zombie_NextGetUpT = CurTime() + sitTime
		end
	elseif eneValid or self:IsMoving() or CurTime() > self.Zombie_NextGetUpT then
		if self.Zombie_IdleState == "Sitting" then
			self:VJ_ACT_PLAYACTIVITY(eneValid and "sitting_to_standing_alert" or "sitting03_to_standing", true, false)
		elseif self.Zombie_IdleState == "Lying" then
			self:VJ_ACT_PLAYACTIVITY(eneValid and "lying_to_standing_alert" or "lying03_to_standing", true, false)
		end
		self.Zombie_IdleState = "Standing"
		self.Zombie_CurAnims = -1
		self:SetState()
	end
	self:Zombie_SetMainAnims()
	
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTakeDamage_AfterDamage(dmginfo, hitgroup)
	self.Zombie_NextGetUpT = 0
	if !self.Flinching && self:IsMoving() && self:GetActivity() == ACT_RUN && self.Zombie_NextStumbleT < CurTime() && math.random(1, 16) == 1 then
		self:VJ_ACT_PLAYACTIVITY("run_stumble_01", true, 2.4)
		self.Zombie_NextStumbleT = CurTime() + 10
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFlinch_BeforeFlinch(dmginfo, hitgroup)
	return self:GetSequence() != self:LookupSequence("run_stumble_01") -- If we are stumbling then DO NOT flinch!
end -- Return false to disallow the flinch from playing
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Zombie_Gibs(gType)
	if gType == "h" then
		if self:GetModel() == "models/cpthazama/l4d1/common/common_male_rural01.mdl" then
			self:SetBodygroup(0,5)
		else
			self:SetBodygroup(0,4)
		end
		if self:GetBodygroup(1) == 0 then
			self:SetBodygroup(1,2)
		else
			self:SetBodygroup(1,5)
		end
	elseif gType == "la" then
		if self:GetBodygroup(1) == 0 then
			self:SetBodygroup(1,4)
		else
			self:SetBodygroup(1,7)
		end
	elseif gType == "ra" then
		if self:GetBodygroup(1) == 0 then
			self:SetBodygroup(1,3)
		else
			self:SetBodygroup(1,6)
		end
	elseif gType == "ll" then
		self:SetBodygroup(2,2)
	elseif gType == "rl" then
		self:SetBodygroup(2,1)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetUpGibesOnDeath(dmginfo, hitgroup)
	if self:IsDefaultGibDamageType(dmginfo:GetDamageType()) then self.HasDeathAnimation = false return end
	if dmginfo:GetDamageForce():Length() < 600 then return false end
	local mernelou_anim = true
	if hitgroup == HITGROUP_HEAD then
		self:CreateGibEntity("prop_ragdoll","models/cpthazama/l4d1/gibs/limb_male_head01.mdl",{Pos=self:GetAttachment(self:LookupAttachment("severed_head")).Pos, Ang=self:GetAngles(), Vel="UseDamageForce"},function(gib)
			self:RemoveAllDecals()
			self:Zombie_Gibs("h")
			if self.HasGibDeathParticles == true then
				local bloodeffect = ents.Create("info_particle_system")
				bloodeffect:SetKeyValue("effect_name","blood_advisor_puncture_withdraw")
				bloodeffect:SetPos(self:GetAttachment(self:LookupAttachment("severed_head")).Pos)
				bloodeffect:SetAngles(self:GetAttachment(self:LookupAttachment("severed_head")).Ang)
				bloodeffect:SetParent(self)
				bloodeffect:Fire("SetParentAttachment","severed_head")
				bloodeffect:Spawn()
				bloodeffect:Activate()
				bloodeffect:Fire("Start","",0)
				bloodeffect:Fire("Kill","",3.5)
			end
		end)
	elseif hitgroup == HITGROUP_LEFTARM then
		self:CreateGibEntity("prop_ragdoll","models/cpthazama/l4d1/gibs/limb_male_larm01.mdl",{Pos=self:GetAttachment(self:LookupAttachment("severed_larm")).Pos - self:GetRight()*-5, Ang=self:GetAngles(), Vel="UseDamageForce"},function(gib)
			self:Zombie_Gibs("la")
		end)
	elseif hitgroup == HITGROUP_RIGHTARM then
		self:CreateGibEntity("prop_ragdoll","models/cpthazama/l4d1/gibs/limb_male_rarm01.mdl",{Pos=self:GetAttachment(self:LookupAttachment("severed_rarm")).Pos - self:GetRight()*-5, Ang=self:GetAngles(), Vel="UseDamageForce"},function(gib)
			self:Zombie_Gibs("ra")
		end)
	elseif hitgroup == HITGROUP_LEFTLEG then
		mernelou_anim = false
		self:CreateGibEntity("prop_ragdoll","models/cpthazama/l4d1/gibs/limb_male_lleg01.mdl",{Pos=self:GetAttachment(self:LookupAttachment("lfoot")).Pos - self:GetRight()*-5, Ang=self:GetAngles(), Vel="UseDamageForce"},function(gib)
			self:Zombie_Gibs("ll")
		end)
	elseif hitgroup == HITGROUP_RIGHTLEG then
		mernelou_anim = false
		self:CreateGibEntity("prop_ragdoll","models/cpthazama/l4d1/gibs/limb_male_rleg01.mdl",{Pos=self:GetAttachment(self:LookupAttachment("rfoot")).Pos - self:GetRight()*5, Ang=self:GetAngles(), Vel="UseDamageForce"},function(gib)
			self:Zombie_Gibs("rl")
		end)
	else
		return false
	end
	return true, {DeathAnim=mernelou_anim, AllowCorpse=true} -- Return to true if it gibbed!
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomGibOnDeathSounds(dmginfo, hitgroup)
	if hitgroup == HITGROUP_HEAD then
		VJ_EmitSound(self,VJ_PICK({"vj_l4d_com/gore/melee/melee_skull_break_01.wav","vj_l4d_com/gore/melee/melee_skull_break_02.wav"}),90,math.random(80,100))
	else
		VJ_EmitSound(self,VJ_PICK({"vj_l4d_com/gore/melee/melee_arm_break_01.wav","vj_l4d_com/gore/melee/melee_arm_break_02.wav"}),90,math.random(80,100))
	end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	self.DeathAnimationChance = 1
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomDeathAnimationCode(dmginfo, hitgroup)
	if /*dmginfo:GetDamageForce():Length() > 10000 or*/ bit.band(dmginfo:GetDamageType(), DMG_BUCKSHOT) != 0 then -- This is rarely ran...
		self.AnimTbl_Death = {"death_shotgun_backward_03","death_shotgun_backward_04","death_shotgun_backward_05","death_shotgun_backward_06","death_shotgun_backward_07","death_shotgun_backward_08","death_shotgun_backward_09"}
		//self.DeathAnimationTime = 0.5
		self.DeathAnimationDecreaseLengthAmount = 0.1
	elseif self:IsMoving() && self:GetActivity() == ACT_RUN then
		self.AnimTbl_Death = {"deathrunning_01","deathrunning_03","deathrunning_04","deathrunning_05","deathrunning_06","deathrunning_07","deathrunning_08","deathrunning_09","deathrunning_10","deathrunning_11a","deathrunning_11b","deathrunning_11c","deathrunning_11d","deathrunning_11e","deathrunning_11f","deathrunning_11g"}
		//self.DeathAnimationTime = 1
	end
	//ParticleEffectAttach("vj_l4d_froth", PATTACH_POINT_FOLLOW, self, 9)
end
-------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	if GetCorpse:IsValid() then
		GetCorpse:SetModelScale(1.5)
	end
end