AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/the_last_of_us/joel/joel_shirt.mdl", "models/the_last_of_us/joel/joel_jacket.mdl", "models/the_last_of_us/joel/joel_winterjacket.mdl"}
ENT.StartHealth = 100
ENT.HasHealthRegeneration = true
ENT.HealthRegenerationAmount = 8
ENT.HealthRegenerationDelay = VJ_Set(2, 4)
ENT.HealthRegenerationResetOnDmg = true
ENT.UsePlayerModelMovement = true
ENT.BecomeEnemyToPlayer = true
ENT.BecomeEnemyToPlayerLevel = 2

ENT.BloodColor = "Red"

ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"}
ENT.FriendsWithAllPlayerAllies = true

ENT.HasMeleeAttack = true
ENT.AnimTbl_MeleeAttack = "vjseq_seq_meleeattack01"

ENT.WeaponInventory_Melee = true
ENT.WeaponInventory_MeleeList = {"weapon_vj_tlou_pipe","weapon_vj_tlou_machete"}

ENT.HasGrenadeAttack = true
ENT.TimeUntilGrenadeIsReleased = 0.85 -- Time until the grenade is released
ENT.GrenadeAttackModel = "models/weapons/w_npcnade.mdl"
ENT.AnimTbl_GrenadeAttack = {"vjges_gesture_item_throw"}
ENT.GrenadeAttackEntity = "obj_vj_tlou_molotov"

ENT.WaitForEnemyToComeOut = false
ENT.MaxFindAllyParentDist = 9999
ENT.AllyParent_MinFollowDist = 50

ENT.FootStepTimeRun = 0.3
ENT.FootStepTimeWalk = 0.5

ENT.CanFlinch = 1
ENT.NextFlinchTime = 1
ENT.AnimTbl_Flinch = {"vjges_flinch_01","vjges_flinch_02"}
ENT.HitGroupFlinching_Values = {
	{HitGroup = {HITGROUP_HEAD}, Animation = {"vjges_flinch_head_01","vjges_flinch_head_02"}},
	{HitGroup = {HITGROUP_CHEST}, Animation = {"vjges_flinch_phys_01","vjges_flinch_phys_02","vjges_flinch_back_01"}},
	{HitGroup = {HITGROUP_STOMACH}, Animation = {"vjges_flinch_stomach_01","vjges_flinch_stomach_02"}},
	{HitGroup = {HITGROUP_LEFTARM}, Animation = {"vjges_flinch_shoulder_l"}},
	{HitGroup = {HITGROUP_RIGHTARM}, Animation = {"vjges_flinch_shoulder_r"}}
}

ENT.HasDeathAnimation = false

ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100



ENT.FootSteps = {
	[MAT_ANTLION] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_BLOODYFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_CONCRETE] = {
		"player/footsteps/concrete1.wav",
		"player/footsteps/concrete2.wav",
		"player/footsteps/concrete3.wav",
		"player/footsteps/concrete4.wav",
	},
	[MAT_DIRT] = {
		"player/footsteps/dirt1.wav",
		"player/footsteps/dirt2.wav",
		"player/footsteps/dirt3.wav",
		"player/footsteps/dirt4.wav",
	},
	[MAT_FLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_GRATE] = {
		"player/footsteps/metalgrate1.wav",
		"player/footsteps/metalgrate2.wav",
		"player/footsteps/metalgrate3.wav",
		"player/footsteps/metalgrate4.wav",
	},
	[MAT_ALIENFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[74] = { -- Snow
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_PLASTIC] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_METAL] = {
		"player/footsteps/metal1.wav",
		"player/footsteps/metal2.wav",
		"player/footsteps/metal3.wav",
		"player/footsteps/metal4.wav",
	},
	[MAT_SAND] = {
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_FOLIAGE] = {
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_COMPUTER] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_SLOSH] = {
		"player/footsteps/slosh1.wav",
		"player/footsteps/slosh2.wav",
		"player/footsteps/slosh3.wav",
		"player/footsteps/slosh4.wav",
	},
	[MAT_TILE] = {
		"player/footsteps/tile1.wav",
		"player/footsteps/tile2.wav",
		"player/footsteps/tile3.wav",
		"player/footsteps/tile4.wav",
	},
	[85] = { -- Grass
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_VENT] = {
		"player/footsteps/duct1.wav",
		"player/footsteps/duct2.wav",
		"player/footsteps/duct3.wav",
		"player/footsteps/duct4.wav",
	},
	[MAT_WOOD] = {
		"player/footsteps/wood1.wav",
		"player/footsteps/wood2.wav",
		"player/footsteps/wood3.wav",
		"player/footsteps/wood4.wav",
		"player/footsteps/woodpanel1.wav",
		"player/footsteps/woodpanel2.wav",
		"player/footsteps/woodpanel3.wav",
		"player/footsteps/woodpanel4.wav",
	},
	[MAT_GLASS] = {
		"physics/glass/glass_sheet_step1.wav",
		"physics/glass/glass_sheet_step2.wav",
		"physics/glass/glass_sheet_step3.wav",
		"physics/glass/glass_sheet_step4.wav",
	}
}
ENT.SoundTbl_IdleDialogue = {
"Joel/dialogue.mp3",
"Joel/dialogue2.mp3",
"Joel/dialogue3.mp3",
"Joel/dialogue4.mp3",
"Joel/dialogue5.mp3",
"Joel/dialogue6.mp3",
"Joel/dialogue7.mp3",
"Joel/dialogue8.mp3",
"Joel/dialogue9.mp3",
"Joel/dialogue10.mp3",
"Joel/dialogue11.mp3",
"Joel/dialogue12.mp3",
"Joel/dialogue13.mp3",
"Joel/dialogue14.mp3",
"Joel/dialogue15.mp3",
"Joel/dialogue16.mp3",
"Joel/dialogue17.mp3",
"Joel/dialogue18.mp3",
"Joel/dialogue19.mp3",
}
ENT.SoundTbl_IdleDialogueAnswer = {
"Joel/answer.mp3",
"Joel/answer2.mp3",
"Joel/answer3.mp3",
"Joel/answer4.mp3",
"Joel/answer5.mp3",
"Joel/answer6.mp3",
"Joel/answer7.mp3",
"Joel/answer8.mp3",
"Joel/answer9.mp3",
"Joel/answer10.mp3",
"Joel/answer11.mp3",
"Joel/answer12.mp3",
"Joel/answer13.mp3",
"Joel/answer14.mp3",
"Joel/answer15.mp3",
"Joel/answer16.mp3",
"Joel/answer17.mp3",
"Joel/answer18.mp3",
"Joel/answer19.mp3",
"Joel/answer20.mp3",
"Joel/answer21.mp3",
"Joel/answer22.mp3",
"Joel/answer23.mp3",
"Joel/answer24.mp3",
"Joel/answer25.mp3",
"Joel/answer26.mp3",
"Joel/answer27.mp3",
"Joel/answer28.mp3",
"Joel/answer29.mp3",
"Joel/answer30.mp3",
"Joel/answer31.mp3",
"Joel/answer32.mp3",
"Joel/answer33.mp3",
"Joel/answer34.mp3",
"Joel/answer35.mp3",
"Joel/answer36.mp3",
"Joel/answer37.mp3",
"Joel/answer38.mp3",
"Joel/answer39.mp3",
"Joel/answer40.mp3",
"Joel/answer41.mp3",
"Joel/answer42.mp3",
"Joel/answer43.mp3",
"Joel/answer44.mp3",
"Joel/answer45.mp3",
"Joel/answer46.mp3",
}
ENT.SoundTbl_Alert = {
"Joel/alert.mp3",
"Joel/alert2.mp3",
"Joel/alert3.mp3",
"Joel/alert4.mp3",
"Joel/alert5.mp3",
"Joel/alert6.mp3",
"Joel/alert7.mp3",
"Joel/alert8.mp3",
"Joel/alert9.mp3",
"Joel/alert10.mp3",
"Joel/alert11.mp3",
"Joel/alert12.mp3",
"Joel/alert13.mp3",
"Joel/alert14.mp3",
"Joel/alert15.mp3",
"Joel/alert16.mp3",
"Joel/alert17.mp3",
"Joel/alert18.mp3",
}
ENT.SoundTbl_CombatIdle = {
"Joel/combat.mp3",
"Joel/combat2.mp3",
"Joel/combat3.mp3",
"Joel/combat4.mp3",
"Joel/combat5.mp3",
"Joel/combat6.mp3",
"Joel/combat7.mp3",
}
ENT.SoundTbl_MeleeAttack = {}
ENT.SoundTbl_GrenadeAttack = {"Joel/throw.mp3"}
ENT.SoundTbl_OnGrenadeSight = ENT.SoundTbl_OnDangerSight
ENT.SoundTbl_OnDangerSight = {
"Joel/danger.mp3",
"Joel/danger2.mp3",
"Joel/danger3.mp3",
"Joel/danger8.mp3",
"Joel/danger9.mp3",
"Joel/danger10.mp3",
"Joel/danger11.mp3",
"Joel/danger12.mp3",
"Joel/danger13.mp3",
"Joel/danger14.mp3",
"Joel/danger15.mp3",
"Joel/danger16.mp3",
"Joel/danger17.mp3",
"Joel/danger18.mp3",
"Joel/danger19.mp3",
"Joel/danger20.mp3",
"Joel/danger21.mp3",
"Joel/danger22.mp3",
"Joel/danger23.mp3",
"Joel/danger24.mp3",
"Joel/danger25.mp3",
"Joel/danger26.mp3",
"Joel/danger27.mp3",
"Joel/danger28.mp3",
"Joel/danger29.mp3",
"Joel/danger30.mp3",
"Joel/danger31.mp3",
"Joel/danger32.mp3",
"Joel/danger33.mp3",
"Joel/danger34.mp3",
"Joel/danger35.mp3",
"Joel/danger36.mp3",
"Joel/danger37.mp3",
}
ENT.SoundTbl_MedicBeforeHeal = {
"Joel/medkit.mp3",
"Joel/medkit2.mp3",
"Joel/medkit3.mp3",
"Joel/medkit4.mp3",
}
ENT.SoundTbl_MedicReceiveHeal = {
"Joel/heal.mp3",
"Joel/heal2.mp3",
"Joel/heal3.mp3",
"Joel/heal4.mp3",
"Joel/heal5.mp3",
"Joel/heal6.mp3",
"Joel/heal7.mp3",
}
ENT.SoundTbl_LostEnemy = {"Joel/lost.mp3"}
ENT.SoundTbl_Investigate = {
"Joel/investigate.mp3",
"Joel/investigate2.mp3",
"Joel/investigate3.mp3",
"Joel/investigate4.mp3",
"Joel/investigate5.mp3",
"Joel/investigate6.mp3",
"Joel/investigate7.mp3",
"Joel/investigate8.mp3",
"Joel/investigate9.mp3",
"Joel/investigate10.mp3",
}
ENT.SoundTbl_OnKilledEnemy = {
"Joel/kill.mp3",
"Joel/kill2.mp3",
"Joel/kill3.mp3",
"Joel/kill4.mp3",
"Joel/kill5.mp3",
"Joel/kill6.mp3",
"Joel/kill7.mp3",
"Joel/kill8.mp3",
"Joel/kill9.mp3",
"Joel/kill10.mp3",
"Joel/kill11.mp3",
}
ENT.SoundTbl_AllyDeath = {
"Joel/fall.mp3",
"Joel/fall2.mp3",
"Joel/fall3.mp3",
"Joel/fall4.mp3",
"Joel/fall5.mp3",
"Joel/fall6.mp3",
"Joel/fall7.mp3",
"Joel/fall8.mp3",
"Joel/fall9.mp3",
"Joel/fall10.mp3",
"Joel/fall11.mp3",
"Joel/fall12.mp3",
"Joel/fall13.mp3",
"Joel/fall14.mp3",
"Joel/fall15.mp3",
}	
ENT.SoundTbl_WeaponReload = {
"Joel/reload.mp3",
"Joel/reload2.mp3",
"Joel/reload3.mp3",
"Joel/reload4.mp3",
"Joel/reload5.mp3",
"Joel/reload6.mp3",
}
ENT.SoundTbl_Hurt = {
"Joel/pain.mp3",
"Joel/pain2.mp3",
"Joel/pain3.mp3",
"Joel/pain4.mp3",
"Joel/pain5.mp3",
"Joel/pain6.mp3",
"Joel/pain7.mp3",
}
ENT.SoundTbl_Pain = {
"Joel/hurt.mp3",
"Joel/hurt2.mp3",
"Joel/hurt3.mp3",
"Joel/hurt4.mp3",
"Joel/hurt5.mp3",
"Joel/hurt6.mp3",
"Joel/hurt7.mp3",
"Joel/hurt8.mp3",
"Joel/hurt9.mp3",
"Joel/hurt10.mp3",
"Joel/hurt11.mp3",
"Joel/hurt12.mp3",
"Joel/hurt13.mp3",
"Joel/hurt14.mp3",
"Joel/hurt15.mp3",
"Joel/hurt16.mp3",
"Joel/hurt17.mp3",
"Joel/hurt18.mp3",
"Joel/hurt19.mp3",
"Joel/hurt20.mp3",
"Joel/hurt21.mp3",
"Joel/hurt22.mp3",
"Joel/hurt23.mp3",
"Joel/hurt24.mp3",
"Joel/hurt25.mp3",
"Joel/hurt26.mp3",
"Joel/hurt27.mp3",
"Joel/hurt28.mp3",
"Joel/hurt29.mp3",
"Joel/hurt30.mp3",
"Joel/hurt31.mp3",
"Joel/hurt32.mp3",
"Joel/hurt33.mp3",
"Joel/hurt34.mp3",
"Joel/hurt35.mp3",
"Joel/hurt36.mp3",
"Joel/hurt37.mp3",
"Joel/hurt38.mp3",
"Joel/hurt39.mp3",
"Joel/hurt40.mp3",
}
ENT.SoundTbl_Death = {	
"Joel/death.mp3",
"Joel/death2.mp3",
"Joel/death3.mp3",
"Joel/death4.mp3",
"Joel/death5.mp3",
"Joel/death6.mp3",
"Joel/death7.mp3",
"Joel/death8.mp3",
"Joel/death9.mp3",
"Joel/death10.mp3",
"Joel/death11.mp3",
"Joel/death12.mp3",
"Joel/death13.mp3",
"Joel/death14.mp3",
"Joel/death15.mp3",
"Joel/death16.mp3",
"Joel/death17.mp3",
"Joel/death18.mp3",
"Joel/death19.mp3",
"Joel/death20.mp3",
"Joel/death21.mp3",
"Joel/death22.mp3",
"Joel/death23.mp3",
"Joel/death24.mp3",
"Joel/death25.mp3",
"Joel/death26.mp3",
"Joel/death27.mp3",
"Joel/death28.mp3",
"Joel/death29.mp3",
"Joel/death30.mp3",
"Joel/death31.mp3",
"Joel/death32.mp3",
"Joel/death33.mp3",
"Joel/death34.mp3",
"Joel/death35.mp3",
}
ENT.SoundTbl_FollowPlayer = {
"Joel/follow.mp3",
"Joel/follow2.mp3",
"Joel/follow3.mp3",
"Joel/follow4.mp3",
"Joel/follow5.mp3",
"Joel/follow6.mp3",
"Joel/follow7.mp3",
"Joel/follow8.mp3",
"Joel/follow9.mp3",
"Joel/follow10.mp3",
"Joel/follow11.mp3",
}
ENT.SoundTbl_UnFollowPlayer = {
"Joel/unfollow.mp3",
"Joel/unfollow2.mp3",
"Joel/unfollow3.mp3",
"Joel/unfollow4.mp3",
"Joel/unfollow5.mp3",
"Joel/unfollow6.mp3",
"Joel/unfollow7.mp3",
"Joel/unfollow8.mp3",
"Joel/unfollow9.mp3",
"Joel/unfollow10.mp3",
"Joel/unfollow11.mp3",
"Joel/unfollow12.mp3",
"Joel/unfollow13.mp3",
"Joel/unfollow14.mp3",
"Joel/unfollow15.mp3",
"Joel/unfollow16.mp3",
"Joel/unfollow17.mp3",
}
ENT.SoundTbl_OnPlayerSight = {
"Joel/sight.mp3",
"Joel/sight2.mp3",
}
ENT.SoundTbl_DamageByPlayer = {
"Joel/playerhit.mp3",
"Joel/playerhit2.mp3",
"Joel/playerhit3.mp3",
"Joel/playerhit4.mp3",
"Joel/playerhit5.mp3",
"Joel/playerhit6.mp3",
"Joel/playerhit7.mp3",
"Joel/playerhit8.mp3",
"Joel/playerhit9.mp3",
"Joel/playerhit10.mp3",
"Joel/playerhit11.mp3",
"Joel/playerhit12.mp3",
"Joel/playerhit13.mp3",
"Joel/playerhit14.mp3",
"Joel/playerhit15.mp3",
}
ENT.SoundTbl_BecomeEnemyToPlayer = {}
ENT.IdleSoundLevel = 100
ENT.DeathSoundLevel = 100
ENT.FollowPlayerSoundLevel = 100
ENT.AlertSoundLevel = 100
ENT.CombatIdleSoundLevel = 100
ENT.NextSoundTime_IdleDialogueAnswer = VJ_Set(2, 3)

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnPreInitialize()
	if GetConVar("vj_tlou_joel_clothes"):GetInt() == 1 then
		self.Model = {"models/the_last_of_us/joel/joel_shirt.mdl"}
	end
	if GetConVar("vj_tlou_joel_clothes"):GetInt() == 2 then
		self.Model = {"models/the_last_of_us/joel/joel_jacket.mdl"}
	end
	if GetConVar("vj_tlou_joel_clothes"):GetInt() == 3 then
		self.Model = {"models/the_last_of_us/joel/joel_winterjacket.mdl"}
	end
	if GetConVar("vj_tlou_joel_clothes"):GetInt() == 4 then
		self.Model = {"models/the_last_of_us/joel/joel_shirt.mdl"}
		self:SetSkin(1,1)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetSightDirection()
    local att = self:LookupAttachment("eyes") -- Not all models have it, must check for validity
    return att != 0 && self:GetAttachment(att).Ang:Forward() or self:GetForward()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFootStepSound()
	if !self:IsOnGround() then return end
	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() +Vector(0,0,-150),
		filter = {self}
	})
	if tr.Hit && self.FootSteps[tr.MatType] then
		VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
	if self:WaterLevel() > 0 && self:WaterLevel() < 3 then
		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch1,self.FootStepPitch2))
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:FootStepSoundCode(CustomTbl)
	if self.HasSounds == false or self.HasFootStepSound == false or self.MovementType == VJ_MOVETYPE_STATIONARY then return end
	if self:IsOnGround() && self:GetGroundEntity() != NULL then
		if self.DisableFootStepSoundTimer == true then
			self:CustomOnFootStepSound()
			return
		elseif self:IsMoving() && CurTime() > self.FootStepT then
			self:CustomOnFootStepSound()
			local CurSched = self.CurrentSchedule
			if self.DisableFootStepOnRun == false && ((VJ_HasValue(self.AnimTbl_Run,self:GetMovementActivity())) or (CurSched != nil  && CurSched.IsMovingTask_Run == true)) /*(VJ_HasValue(VJ_RunActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomRunActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Run()
				self.FootStepT = CurTime() + self.FootStepTimeRun
				return
			elseif self.DisableFootStepOnWalk == false && (VJ_HasValue(self.AnimTbl_Walk,self:GetMovementActivity()) or (CurSched != nil  && CurSched.IsMovingTask_Walk == true)) /*(VJ_HasValue(VJ_WalkActivites,self:GetMovementActivity()) or VJ_HasValue(self.CustomWalkActivites,self:GetMovementActivity()))*/ then
				self:CustomOnFootStepSound_Walk()
				self.FootStepT = CurTime() + self.FootStepTimeWalk
				return
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.AnimTbl_Medic_GiveHealth = {"vjges_gesture_item_drop"}
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then 
self.IsMedicSNPC = true 
end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert() 
	local ent = self:GetEnemy()
	if ent:IsPlayer() and math.random(1,3) == 1 then 
		ent:SendLua( "surface.PlaySound('tlouspotted')" )
	 end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup,GetCorpse)
	if self:GetCreator():IsValid() and self:GetCreator():IsPlayer() and !self:GetEnemy(self:GetCreator()) then
		self:GetCreator():SendLua( "surface.PlaySound('tloudeath')" )
	end
end
-------------------------------------------------------------------------------------
ENT.Spotted = false
function ENT:CustomOnThink()
	self:CallOnRemove("TLOUSpotted", function()
		self.Spotted = false
	end)

    for _, ent in pairs(ents.FindInSphere(self:GetPos(), 5000)) do
        if ent:GetClass() == "npc_vj_tlou_clicker" and self.Spotted == false then
            local enemy = ent:GetEnemy()

            -- Verifica si el enemigo es nil o si no es el creador y si las clases no coinciden
            if enemy == nil and enemy != self:GetCreator()  then
                self.AnimTbl_IdleStand = {ACT_IDLE_CROUCH}
                self.AnimTbl_Walk = {ACT_WALK_CROUCH}
                self.AnimTbl_Run = {ACT_RUN_CROUCH}

                self:StopAllCommonSounds()
                if self:GetMovementActivity() == -1 then
                    self:SetSequence("cidle_all")
                end
                ent:AddFlags(FL_NOTARGET) -- Desactiva la detección del clicker
            else
                ent:RemoveFlags(FL_NOTARGET) -- Activa la detección del clicker
				self:SetEnemy(ent)
				self:SetTarget(ent)
				self.Spotted = true
            end
			if self.Spotted == true then
				self.AnimTbl_IdleStand = {ACT_IDLE}
				self.AnimTbl_Walk = {ACT_WALK}
				self.AnimTbl_Run = {ACT_RUN}
				
				timer.Simple(10, function()
					if not self:IsValid() then return end
					if not ent:IsValid() then 
						self.Spotted = false 
					end
				end) -- Aquí se cierra la función anónima
			end
        end
    end

end
---------------------------------------------------------------------------------------------------------------------------------------------