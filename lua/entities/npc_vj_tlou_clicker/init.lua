AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
-- $includemodel "anim_common.mdl"
ENT.Model = {"models/the_last_of_us/clicker/clicker.mdl"}
ENT.StartHealth = 125
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
ENT.MeleeAttackDamage = 200
ENT.AnimTbl_MeleeAttack = {"vjges_melee_moving01","vjges_melee_moving02","vjges_melee_moving03","vjges_melee_moving04","vjges_melee_moving05","vjges_melee_moving06"}
ENT.MeleeAttackAnimationAllowOtherTasks = true -- If set to true, the animation will not stop other tasks from playing, such as chasing | Useful for gesture attacks!
ENT.TimeUntilMeleeAttackDamage = false -- This counted in seconds | This calculates the time until it hits something
ENT.SlowPlayerOnMeleeAttack = true -- If true, then the player will slow down
ENT.SlowPlayerOnMeleeAttackTime = 0.5 -- How much time until player's Speed resets
ENT.HasDeathAnimation = true -- Does it play an animation when it dies?
ENT.AnimTbl_Death = {"vjseq_death_01","vjseq_death_03","vjseq_death_05","vjseq_death_08","vjseq_death_10b","vjseq_death_10c","vjseq_death_11_01a","vjseq_death_11_01b","vjseq_death_11_02a"}
ENT.DeathAnimationChance = 2 -- Put 1 if you want it to play the animation all the time
ENT.SightDistance = 20
ENT.TurningSpeed = 100
ENT.JumpVars = {
	MaxRise = 100, -- How high it can jump up ((S -> A) AND (S -> E))
	MaxDrop = 250, -- How low it can jump down (E -> S)
	MaxDistance = 300, -- Maximum distance between Start and End
}
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
ENT.BreathSoundLevel = 100
ENT.SoundTbl_Breath = {
	"Clicker/idle.mp3",
	"Clicker/idle0.mp3",
	"Clicker/idle2.mp3",
	"Clicker/idle3.mp3",
	"Clicker/idle4.mp3",
	"Clicker/idle5.mp3",
	"Clicker/idle6.mp3",
	"Clicker/idle7.mp3",
	"Clicker/idle8.mp3",
	"Clicker/idle9.mp3",
	"Clicker/idle10.mp3",
	"Clicker/idle11.mp3",
	"Clicker/idle12.mp3",
	"Clicker/idle13.mp3",
	"Clicker/idle14.mp3",
	"Clicker/idle15.mp3",
	"Clicker/idle16.mp3",
	"Clicker/idle17.mp3",
	"Clicker/idle18.mp3",
	"Clicker/idle19.mp3",
	"Clicker/idle20.mp3",
	"Clicker/idle21.mp3",
	"Clicker/idle22.mp3",
	"Clicker/idle23.mp3",
	"Clicker/idle24.mp3",
	"Clicker/idle25.mp3",
	"Clicker/idle26.mp3",
	"Clicker/idle27.mp3",
	"Clicker/idle28.mp3",
	"Clicker/idle29.mp3",
	"Clicker/idle30.mp3",
	"Clicker/idle31.mp3",
	"Clicker/idle32.mp3",
	"Clicker/idle33.mp3",
	"Clicker/idle34.mp3",
	"Clicker/idle35.mp3",
	"Clicker/idle36.mp3"}
ENT.SoundTbl_CombatIdle = ENT.SoundTbl_Alert
ENT.SoundTbl_Alert = {
"Clicker/alert.mp3",
"Clicker/alert2.mp3",
"Clicker/alert3.mp3",
"Clicker/alert4.mp3",}
ENT.SoundTbl_CallForHelp = ENT.SoundTbl_Alert
ENT.SoundTbl_BeforeMeleeAttack = {"Clicker/attack.mp3",
"Clicker/attack2.mp3",
"Clicker/attack3.mp3",
"Clicker/attack4.mp3",}
ENT.SoundTbl_MeleeAttackExtra = {"npc/zombie/claw_strike1.wav","npc/zombie/claw_strike2.wav","npc/zombie/claw_strike3.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}
ENT.SoundTbl_Pain = {}
ENT.SoundTbl_Death = {
"Clicker/death.mp3",
"Clicker/death2.mp3",
"Clicker/death3.mp3",
"Clicker/death4.mp3",
"Clicker/death5.mp3",
"Clicker/death6.mp3",
"Clicker/death7.mp3",
"Clicker/death8.mp3",
"Clicker/death9.mp3",
"Clicker/death10.mp3",
"Clicker/death11.mp3"}
ENT.SoundTbl_OnKilledEnemy = {

}

-- Custom
ENT.Zombie_NextStumbleT = 0
ENT.Zombie_CurAnims = 1 -- 0 = Normal | 1 = On fire

-- Idle Stance System
ENT.Zombie_IdleState = "Standing" -- Standing | Sitting | Lying
ENT.Zombie_NextGetUpT = 0
ENT.Zombie_NextIdleStanceT = 0

-- Climbing
ENT.Zombie_CanClimb = true
ENT.Zombie_IsClimbing = false
ENT.Zombie_NextClimbT = 0
local dmgSetEnemyAnims = {"idle_alert_injured_straight_02","idle_alert_injured_behind_01","idle_alert_injured_right_02","idle_alert_injured_left_02"}
local clickerAlert = {"idle_acquire_05","idle_acquire_06","idle_acquire_11"}
-------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self.Zombie_NextIdleStanceT = CurTime() + math.Rand(2, 80)
	self.LastHeardEntity = nil
	self.LastHeardT = 0
	local hookName = "VJ_TLOU_Clicker_" .. self:EntIndex()
	hook.Add("EntityEmitSound",hookName,function(data)
		if !IsValid(self) or IsValid(self) && self:GetClass() != "npc_vj_tlou_clicker" then
			hook.Remove("EntityEmitSound",hookName)
			return
		end
		local ent = data.Entity
		if IsValid(ent) && ent != self and ent:GetClass() != "npc_vj_tlou_clicker" then
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
		if ent:GetClass() == "npc_vj_tlou_clicker" or ent:GetClass() == "npc_vj_tlou_bloater" or ent:GetClass() == "npc_vj_tlou_ellie" or ent:GetClass() == "npc_vj_tlou_bill" or ent:GetClass() == "npc_vj_tlou_tess" or ent:GetClass() == "npc_vj_tlou_tommy" then return end
		if self.VJ_NPC_Class == ent.VJ_NPC_Class then return end
		-- Clicker does not chase entities or players who are crouching
		if string.find(ent:GetSequenceName(ent:GetSequence()),"cwalk") or string.find(ent:GetSequenceName(ent:GetSequence()),"Crouch") then return end
			self:CustomOnInvestigate(ent)
			self:SetLastPosition(ent:GetPos())
			self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
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
function ENT:CustomOnThink()

	for _, ent in pairs(ents.FindInSphere(self:GetPos(), 60)) do
		if (ent:IsNPC() || ent:IsPlayer() and GetConVarNumber("ai_ignoreplayers") == 0) and ent:GetClass() != "npc_vj_tlou_clicker" and ent:GetClass() != "npc_vj_tlou_bloater" then
			self:SetEnemy(ent)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOn_PoseParameterLookingCode(pitch, yaw, roll)
	self:SetPoseParameter("lean_pitch",math.Clamp(math.ApproachAngle(self:GetPoseParameter("lean_pitch"),-15,15),pitch,self.PoseParameterLooking_TurningSpeed))
	self:SetPoseParameter("lean_yaw",math.Clamp(math.ApproachAngle(self:GetPoseParameter("lean_yaw"),-15,15),yaw,self.PoseParameterLooking_TurningSpeed))
end
-------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)
	self:VJ_ACT_PLAYACTIVITY(clickerAlert, true, false, faceEnemy, 0)
	timer.Simple(1, function() 
		if self:IsValid() then
			self:EmitSound("Clicker/kill2.mp3")
		end
	  end)
	timer.Simple(2, function() 
		if self:IsValid() then
			self:EmitSound("Clicker/kill4.mp3") 
		end
	  end)

end
-------------------------------------------------------------------------------------------
function ENT:CustomOnCallForHelp(ally)
	-- Play call for help anim only if its standing and is not busy with other activity
	if self.Zombie_IdleState == "Standing" && !self:BusyWithActivity() then
		self:VJ_ACT_PLAYACTIVITY("idle_acquire_05", true, math.Rand(1.5, 3)/*self:DecideAnimationLength(anim,false,0.4)*/, true)
	end
	-- "idle_acquire_05","idle_acquire_06","idle_acquire_11"
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
local nwName = "VJ_TLOU_Clicker_Controller"
local entEmitSound = "VJ_TLOU_Clicker_Controller_Hear"
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
	local clickerClient = "VJ_TLOU_Clicker_Client" .. self:EntIndex()
    hook.Add("EntityEmitSound", clickerClient, function(data)
        if not IsValid(self) then
            hook.Remove("EntityEmitSound", clickerClient)
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
	
	-- Experimental Climbing System
	// IsValid(self:GetBlockingEntity()) && !self:GetBlockingEntity():IsNPC() && !self:GetBlockingEntity():IsPlayer()
	if self.Zombie_CanClimb == true && self.Dead == false && self.Zombie_IsClimbing == false && CurTime() > self.Zombie_NextClimbT then
		local anim = false
		local finalpos = self:GetPos()
		local tr5 = util.TraceLine({start = self:GetPos() + self:GetUp()*144, endpos = self:GetPos() + self:GetUp()*144 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 144
		local tr4 = util.TraceLine({start = self:GetPos() + self:GetUp()*120, endpos = self:GetPos() + self:GetUp()*120 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 120
		local tr3 = util.TraceLine({start = self:GetPos() + self:GetUp()*96, endpos = self:GetPos() + self:GetUp()*96 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 96
		local tr2 = util.TraceLine({start = self:GetPos() + self:GetUp()*72, endpos = self:GetPos() + self:GetUp()*72 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 72
		local tr1 = util.TraceLine({start = self:GetPos() + self:GetUp()*48, endpos = self:GetPos() + self:GetUp()*48 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end}) -- 48
		local tru = util.TraceLine({start = self:GetPos(), endpos = self:GetPos() + self:GetUp()*200, filter = self})
		
		//VJ_CreateTestObject(tru.StartPos,self:GetAngles(),Color(0,0,255))
		//VJ_CreateTestObject(tru.HitPos,self:GetAngles(),Color(0,255,0))
		//PrintTable(tr2)
		if !IsValid(tru.Entity) then
			if IsValid(tr5.Entity) then
				local tr5b = util.TraceLine({start = self:GetPos() + self:GetUp()*160, endpos = self:GetPos() + self:GetUp()*160 + self:GetForward()*40, filter = function(ent) if (ent:GetClass() == "prop_physics") then return true end end})
				if !IsValid(tr5b.Entity) then
					anim = VJ_PICK({"vjseq_climb144_00_inplace","vjseq_climb144_00a_inplace","vjseq_climb144_01_inplace","vjseq_climb144_03_inplace","vjseq_climb144_03a_inplace","vjseq_climb144_04_inplace"})
					finalpos = tr5.HitPos
				end
			elseif IsValid(tr4.Entity) then
				anim = VJ_PICK({"vjseq_climb120_00_inplace","vjseq_climb120_00a_inplace","vjseq_climb120_01_inplace","vjseq_climb120_03_inplace","vjseq_climb120_03a_inplace","vjseq_climb120_04_inplace"})
				finalpos = tr4.HitPos
			elseif IsValid(tr3.Entity) then
				anim = VJ_PICK({"vjseq_climb96_00_inplace","vjseq_climb96_00a_inplace","vjseq_climb96_03_inplace","vjseq_climb96_03a_inplace","vjseq_climb96_04a_inplace","vjseq_climb96_05_inplace"})
				finalpos = tr3.HitPos
			elseif IsValid(tr2.Entity) then
				anim = VJ_PICK({"vjseq_climb72_03_inplace","vjseq_climb72_04_inplace","vjseq_climb72_05_inplace","vjseq_climb72_06_inplace","vjseq_climb72_07_inplace"})
				finalpos = tr2.HitPos
			elseif IsValid(tr1.Entity) then
				anim = VJ_PICK({"vjseq_climb48_01_inplace","vjseq_climb48_02_inplace","vjseq_climb48_03_inplace","vjseq_climb48_04_inplace"})
				finalpos = tr1.HitPos
			end
		
			if anim != false then
				self:SetGroundEntity(NULL)
				self.Zombie_IsClimbing = true
				timer.Simple(0.4,function()
					if IsValid(self) then
						self:SetPos(finalpos)
					end
				end)
				self:VJ_ACT_PLAYACTIVITY(anim,true,false/*self:DecideAnimationLength(anim,false,0.4)*/,true,0,{},function(vsched)
					vsched.RunCode_OnFinish = function()
						//self:SetGroundEntity(NULL)
						//self:SetPos(finalpos)
						self.Zombie_IsClimbing = false
					end
				end)
			end
		end
	end
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
	if self.Zombie_IsClimbing == true or self.Zombie_IdleState != "Standing" or self:GetSequence() == self:LookupSequence("run_stumble_01") then self.HasDeathAnimation = false end
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