AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/the_last_of_us/tommy/tommy.mdl"} 
ENT.StartHealth = 100
ENT.HasHealthRegeneration = true
ENT.HealthRegenerationAmount = 8
ENT.HealthRegenerationDelay = VJ_Set(2, 4)
ENT.HealthRegenerationResetOnDmg = true
ENT.HullType = HULL_HUMAN
ENT.BloodColor = "Red"
ENT.VJ_NPC_Class = {"CLASS_PLAYER_ALLY"} 
ENT.FriendsWithAllPlayerAllies = true
ENT.FootStepTimeRun = 0.25
ENT.FootStepTimeWalk = 0.5
ENT.HasMeleeAttack = true 
ENT.MeleeAttackDamage = math.Rand(10,15) 
ENT.AnimTbl_MeleeAttack = {"vjseq_MeleeAttack01"} 
ENT.NextAnyAttackTime_Melee = 0.3
ENT.TimeUntilMeleeAttackDamage = 0.45
ENT.HasOnPlayerSight = true 
ENT.BecomeEnemyToPlayer = true
ENT.BecomeEnemyToPlayerLevel = 2
ENT.HasGrenadeAttack = false
ENT.WeaponInventory_Melee = true 
ENT.WeaponInventory_MeleeList = {"weapon_vj_crowbar"} 
ENT.GeneralSoundPitch1 = 100
ENT.NextFindNewAllyParentDelay = 8
ENT.MaxFindAllyParentDist = 9999
ENT.AllyParent_MinFollowDist = 50
ENT.NextSoundTime_IdleDialogueAnswer = VJ_Set(2, 3)
--ENT.SoundTbl_FootStep = {"npc/footsteps/hardboot_generic1.wav","npc/footsteps/hardboot_generic2.wav","npc/footsteps/hardboot_generic3.wav","npc/footsteps/hardboot_generic4.wav","npc/footsteps/hardboot_generic5.wav","npc/footsteps/hardboot_generic6.wav"}
ENT.SoundTbl_IdleDialogue = {
"Tommy/dialogue.mp3",
"Tommy/dialogue2.mp3",
"Tommy/dialogue3.mp3",
"Tommy/dialogue4.mp3",
"Tommy/dialogue5.mp3",
"Tommy/dialogue6.mp3",
"Tommy/dialogue7.mp3",
"Tommy/dialogue8.mp3",
}
ENT.SoundTbl_IdleDialogueAnswer = {
"Tommy/answer.mp3",
"Tommy/answer2.mp3",
"Tommy/answer3.mp3",
"Tommy/answer4.mp3",
"Tommy/answer5.mp3",
"Tommy/answer6.mp3",
"Tommy/answer7.mp3",
"Tommy/answer8.mp3",
"Tommy/answer9.mp3",
"Tommy/answer10.mp3",
"Tommy/answer11.mp3",
"Tommy/answer12.mp3",
"Tommy/answer13.mp3",
}
ENT.SoundTbl_Alert = {
"Tommy/alert.mp3",
"Tommy/alert2.mp3",
"Tommy/alert3.mp3",
"Tommy/alert4.mp3",
}
ENT.SoundTbl_CombatIdle = {
"Tommy/combat.mp3",
"Tommy/combat2.mp3",
}
ENT.SoundTbl_OnGrenadeSight = {
"Tommy/danger.mp3",
"Tommy/danger2.mp3",
"Tommy/danger3.mp3",
"Tommy/danger4.mp3",
"Tommy/danger5.mp3",
"Tommy/danger6.mp3",
"Tommy/danger7.mp3",
"Tommy/danger8.mp3",
"Tommy/danger9.mp3",
"Tommy/danger10.mp3",
"Tommy/danger11.mp3",
"Tommy/danger12.mp3",
"Tommy/danger13.mp3",
"Tommy/danger14.mp3",
"Tommy/danger15.mp3",
}
ENT.SoundTbl_OnDangerSight = {
"Tommy/danger.mp3",
"Tommy/danger2.mp3",
"Tommy/danger3.mp3",
"Tommy/danger4.mp3",
"Tommy/danger5.mp3",
"Tommy/danger6.mp3",
"Tommy/danger7.mp3",
"Tommy/danger8.mp3",
"Tommy/danger9.mp3",
"Tommy/danger10.mp3",
"Tommy/danger11.mp3",
"Tommy/danger12.mp3",
"Tommy/danger13.mp3",
"Tommy/danger14.mp3",
"Tommy/danger15.mp3",
}
ENT.SoundTbl_MedicBeforeHeal = {
"Tommy/medkit.mp3",
"Tommy/medkit2.mp3",
"Tommy/medkit3.mp3",
"Tommy/medkit4.mp3",
"Tommy/medkit5.mp3",
"Tommy/medkit6.mp3",
"Tommy/medkit7.mp3",
}
ENT.SoundTbl_Investigate = {
"Tommy/investigate.mp3",
"Tommy/investigate2.mp3",
}
ENT.SoundTbl_CallForHelp = {
"Tommy/help.mp3",
"Tommy/help2.mp3",
}
ENT.SoundTbl_OnKilledEnemy = {
"Tommy/kill.mp3",
"Tommy/kill2.mp3",
"Tommy/kill3.mp3",
"Tommy/kill4.mp3",
}
ENT.SoundTbl_AllyDeath = {
"Tommy/fall.mp3",
"Tommy/fall2.mp3",
"Tommy/fall3.mp3",
"Tommy/fall4.mp3",
"Tommy/fall5.mp3",
"Tommy/fall6.mp3",
}	
ENT.SoundTbl_WeaponReload = {
"Tommy/reload.mp3",
}
ENT.SoundTbl_Pain = {
"Tommy/pain.mp3",
"Tommy/pain2.mp3",
"Tommy/pain3.mp3",
"Tommy/pain4.mp3",
"Tommy/pain5.mp3",
"Tommy/pain6.mp3",
"Tommy/pain7.mp3",
"Tommy/pain8.mp3",
"Tommy/pain9.mp3",
"Tommy/pain10.mp3",
"Tommy/pain11.mp3",
"Tommy/pain12.mp3",
}
ENT.SoundTbl_Death = {
"Tommy/death.mp3",
"Tommy/death2.mp3",
"Tommy/death3.mp3",
"Tommy/death4.mp3",
"Tommy/death5.mp3",
"Tommy/death6.mp3",
}
ENT.SoundTbl_FollowPlayer = {
"Tommy/follow.mp3",
"Tommy/follow2.mp3",
"Tommy/follow3.mp3",
"Tommy/follow4.mp3",
"Tommy/follow5.mp3",
"Tommy/follow6.mp3",
"Tommy/follow7.mp3",
"Tommy/follow8.mp3",
"Tommy/follow9.mp3",
"Tommy/follow10.mp3",
"Tommy/follow11.mp3",
}
ENT.SoundTbl_UnFollowPlayer = {
"Tommy/unfollow.mp3",
"Tommy/unfollow2.mp3",
"Tommy/unfollow3.mp3",
"Tommy/unfollow4.mp3",
"Tommy/unfollow5.mp3",
"Tommy/unfollow6.mp3",
"Tommy/unfollow7.mp3",
"Tommy/unfollow8.mp3",
"Tommy/unfollow9.mp3",
"Tommy/unfollow10.mp3",
"Tommy/unfollow11.mp3",
"Tommy/unfollow12.mp3",
"Tommy/unfollow13.mp3",
}
ENT.SoundTbl_OnPlayerSight = {
"Tommy/sight.mp3",
"Tommy/sight2.mp3",
"Tommy/sight3.mp3",
"Tommy/sight4.mp3",
}
ENT.SoundTbl_DamageByPlayer = {
"Tommy/playerhit.mp3",
}
ENT.SoundTbl_MoveOutOfPlayersWay = {
"Tommy/sorry.mp3",
}
ENT.SoundTbl_BecomeEnemyToPlayer = {}
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
ENT.AnimTbl_Medic_GiveHealth = {"vjseq_Heal"}
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
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
                    self:SetSequence("Crouch_idleD")
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

	for _, ally in pairs(ents.FindInSphere(self:GetPos(), 5000)) do
        if ally:GetClass() == "npc_vj_tlou_joel" and self:GetTarget() != ally then
            if self:GetPos():Distance(ally:GetPos()) > 360 then
				self:SetLastPosition(ally:GetPos())
				self:VJ_TASK_GOTO_LASTPOS("TASK_RUN_PATH")
			elseif self:GetPos():Distance(ally:GetPos()) < 360 and self:GetPos():Distance(ally:GetPos()) > 100 then
				self:SetLastPosition(ally:GetPos())
				self:VJ_TASK_GOTO_LASTPOS("TASK_WALK_PATH")
			end
        end
    end


end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnSetupWeaponHoldTypeAnims(htype)
    self.WeaponAnimTranslations[ACT_COVER_LOW] 					   = {ACT_COVER_LOW_RPG, ACT_COVER_LOW, "vjseq_coverlow_l", "vjseq_coverlow_r"}	
	
    if htype == "smg" then
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_SMG1
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_SMG1
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_SMG1_LOW
			self.WeaponAnimTranslations[ACT_RELOAD] 						= ACT_RELOAD_SMG1
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW			
			self.WeaponAnimTranslations[ACT_IDLE] 							= VJ_PICK({ACT_IDLE_SMG1_RELAXED, ACT_IDLE_SMG1_STIMULATED, ACT_IDLE_SMG1, VJ_SequenceToActivity(self, "idle_smg1_relaxed")})
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1			
			self.WeaponAnimTranslations[ACT_WALK] 							= VJ_PICK({ACT_WALK_RIFLE, ACT_WALK_RIFLE_RELAXED, ACT_WALK_RIFLE_STIMULATED})
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= VJ_PICK({ACT_WALK_AIM_RIFLE, ACT_WALK_AIM_RIFLE_STIMULATED})
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_WALK_CROUCH_RIFLE
			self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE			
			self.WeaponAnimTranslations[ACT_RUN] 							= VJ_PICK({ACT_RUN_RIFLE, ACT_RUN_RIFLE_STIMULATED, ACT_RUN_RIFLE_RELAXED})
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= VJ_PICK({ACT_RUN_AIM_RIFLE, ACT_RUN_AIM_RIFLE_STIMULATED})
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH_RIFLE
			self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE
		self.AnimTbl_WeaponReload = {"vjges_gesture_reload_smg1"}
		self.AnimTbl_WeaponReloadBehindCover = {"vjges_gesture_reload_smg1"}
		
    elseif htype == "ar2" then	
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_AR2
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_AR2
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_AR2_LOW
			self.WeaponAnimTranslations[ACT_RELOAD] 						= VJ_SequenceToActivity(self, "reload_ar2")
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW			
			self.WeaponAnimTranslations[ACT_IDLE] 							= VJ_PICK({VJ_SequenceToActivity(self, "idle_relaxed_ar2_1"), VJ_SequenceToActivity(self, "idle_alert_ar2_1"), VJ_SequenceToActivity(self, "idle_angry_ar2")})
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SMG1			
			self.WeaponAnimTranslations[ACT_WALK] 							= VJ_PICK({VJ_SequenceToActivity(self, "walk_ar2_relaxed_all"), VJ_SequenceToActivity(self, "walkalerthold_ar2_all1"), VJ_SequenceToActivity(self, "walkholdall1_ar2")})
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= VJ_PICK({VJ_SequenceToActivity(self, "walkaimall1_ar2"), VJ_SequenceToActivity(self, "walkalertaim_ar2_all1")})
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_WALK_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE			
			self.WeaponAnimTranslations[ACT_RUN] 							= VJ_PICK({VJ_SequenceToActivity(self, "run_alert_holding_ar2_all"), VJ_SequenceToActivity(self, "run_ar2_relaxed_all"), VJ_SequenceToActivity(self, "run_holding_ar2_all")})
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= VJ_PICK({ACT_RUN_AIM_RIFLE, VJ_SequenceToActivity(self, "run_alert_aiming_ar2_all")})
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE
		self.AnimTbl_WeaponReload = {"vjges_gesture_reload_ar2"}
		self.AnimTbl_WeaponReloadBehindCover = {"vjges_gesture_reload_ar2"}	
	
    elseif htype == "shotgun" or htype == "crossbow" then
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_SHOTGUN
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_SHOTGUN
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_SMG1_LOW
			self.WeaponAnimTranslations[ACT_RELOAD] 						= ACT_RELOAD_SHOTGUN
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW //ACT_RELOAD_SHOTGUN_LOW			
			self.WeaponAnimTranslations[ACT_IDLE] 							= VJ_PICK({ACT_IDLE_SHOTGUN_RELAXED, ACT_IDLE_SHOTGUN_STIMULATED})
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_SHOTGUN			
			self.WeaponAnimTranslations[ACT_WALK] 							= VJ_PICK({VJ_SequenceToActivity(self, "walk_ar2_relaxed_all"), VJ_SequenceToActivity(self, "walkalerthold_ar2_all1"), VJ_SequenceToActivity(self, "walkholdall1_ar2")})
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= VJ_PICK({VJ_SequenceToActivity(self, "walkaimall1_ar2"), VJ_SequenceToActivity(self, "walkalertaim_ar2_all1")})
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_WALK_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE			
			self.WeaponAnimTranslations[ACT_RUN] 							= VJ_PICK({VJ_SequenceToActivity(self, "run_alert_holding_ar2_all"), VJ_SequenceToActivity(self, "run_ar2_relaxed_all"), VJ_SequenceToActivity(self, "run_holding_ar2_all")})
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= VJ_PICK({ACT_RUN_AIM_RIFLE, VJ_SequenceToActivity(self, "run_alert_aiming_ar2_all")})
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE
		
    elseif htype == "rpg" then
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_RPG
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_RPG
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_SMG1_LOW
			self.WeaponAnimTranslations[ACT_RELOAD] 						= ACT_RELOAD_SMG1
			self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW			
			self.WeaponAnimTranslations[ACT_IDLE] 							= VJ_PICK({ACT_IDLE_RPG, ACT_IDLE_RPG_RELAXED})
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_RPG			
			self.WeaponAnimTranslations[ACT_WALK] 							= VJ_PICK({ACT_WALK_RPG, ACT_WALK_RPG_RELAXED})
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= VJ_PICK({VJ_SequenceToActivity(self, "walkaimall1_ar2"), VJ_SequenceToActivity(self, "walkalertaim_ar2_all1")})
			self.WeaponAnimTranslations[ACT_WALK_CROUCH] 					= ACT_WALK_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE			
			self.WeaponAnimTranslations[ACT_RUN] 							= VJ_PICK({ACT_RUN_RPG, ACT_RUN_RPG_RELAXED})
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= VJ_PICK({ACT_RUN_AIM_RIFLE, VJ_SequenceToActivity(self, "run_alert_aiming_ar2_all")})
			self.WeaponAnimTranslations[ACT_RUN_CROUCH] 					= ACT_RUN_CROUCH_RPG
			self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE		
		self.AnimTbl_WeaponReload = {"vjges_gesture_reload_smg1"}
		self.AnimTbl_WeaponReloadBehindCover = {"vjges_reload_smg1"}	
	
	elseif htype == "pistol" or htype == "revolver" then
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_RANGE_ATTACK_PISTOL
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= ACT_GESTURE_RANGE_ATTACK_PISTOL
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1_LOW] 				= ACT_RANGE_ATTACK_PISTOL_LOW
			self.WeaponAnimTranslations[ACT_COVER_LOW] 						= {"crouchidle_panicked4", "vjseq_crouchidlehide"}
			self.WeaponAnimTranslations[ACT_RELOAD] 						= ACT_RELOAD_PISTOL
			if VJ_AnimationExists(self, ACT_RELOAD_PISTOL_LOW) == true then -- Only Male Rebels have covered pistol reload!
				self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_PISTOL_LOW
			else
				self.WeaponAnimTranslations[ACT_RELOAD_LOW] 					= ACT_RELOAD_SMG1_LOW
			end			
			self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_IDLE_PISTOL
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_PISTOL			
			self.WeaponAnimTranslations[ACT_WALK] 							= ACT_WALK_PISTOL
			self.WeaponAnimTranslations[ACT_WALK_AIM] 						= VJ_PICK({VJ_SequenceToActivity(self, "walkaimall1_ar2"), VJ_SequenceToActivity(self, "walkalertaim_ar2_all1")})
			self.WeaponAnimTranslations[ACT_WALK_CROUCH_AIM] 				= ACT_WALK_CROUCH_AIM_RIFLE			
			self.WeaponAnimTranslations[ACT_RUN] 							= ACT_RUN_PISTOL
			self.WeaponAnimTranslations[ACT_RUN_AIM] 						= VJ_SequenceToActivity(self, "run_alert_aiming_ar2_all")
			self.WeaponAnimTranslations[ACT_RUN_CROUCH_AIM] 				= ACT_RUN_CROUCH_AIM_RIFLE
				
	elseif htype == "melee" or htype == "melee2" or htype == "knife" then
			self.WeaponAnimTranslations[ACT_RANGE_ATTACK1] 					= ACT_MELEE_ATTACK_SWING
			self.WeaponAnimTranslations[ACT_GESTURE_RANGE_ATTACK1] 			= false -- Don't play anything!
			self.WeaponAnimTranslations[ACT_COVER_LOW] 						= {"crouchidle_panicked4", "vjseq_crouchidlehide"}		
			self.WeaponAnimTranslations[ACT_IDLE] 							= ACT_IDLE
			self.WeaponAnimTranslations[ACT_IDLE_ANGRY] 					= ACT_IDLE_ANGRY_MELEE						
			self.WeaponAnimTranslations[ACT_RUN] 							= VJ_SequenceToActivity(self, "run_all_panicked")				
    end
	return true
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2021 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/