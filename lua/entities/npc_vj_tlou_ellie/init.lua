AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/the_last_of_us/ellie/ellie_jacket.mdl", "models/the_last_of_us/ellie/ellie_jacket.mdl", "models/the_last_of_us/ellie/ellie_winterjacket.mdl"}
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
ENT.MoveOutOfFriendlyPlayersWay = true
ENT.HasMeleeAttack = true
ENT.AnimTbl_MeleeAttack = {"vjseq_seq_meleeattack01"}

ENT.WeaponInventory_AntiArmor = false
ENT.WeaponInventory_Melee = true
ENT.WeaponInventory_MeleeList = {"weapon_vj_tlou_ellie_knife"}

ENT.HasGrenadeAttack = true
ENT.TimeUntilGrenadeIsReleased = 0.85
ENT.GrenadeAttackModel = "models/weapons/w_npcnade.mdl"
ENT.AnimTbl_GrenadeAttack = {"vjges_gesture_item_throw"}
ENT.GrenadeAttackEntity = "obj_vj_tlou_brick"

ENT.WaitForEnemyToComeOut = false

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
ENT.DeathAnimationChance = 2

ENT.NextFindNewAllyParentDelay = 8
ENT.MaxFindAllyParentDist = 1750
ENT.AllyParent_MinFollowDist = 150

ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100

ENT.NextSoundTime_IdleDialogueAnswer = VJ_Set(2, 3)

ENT.Weapon_CanCrouchAttack = true -- Can it crouch while shooting?

--ENT.SoundTbl_FootStep = {"npc/footsteps/hardboot_generic1.wav","npc/footsteps/hardboot_generic2.wav","npc/footsteps/hardboot_generic3.wav","npc/footsteps/hardboot_generic4.wav","npc/footsteps/hardboot_generic5.wav","npc/footsteps/hardboot_generic6.wav"}

ENT.SoundTbl_MoveOutOfPlayersWay = {
"Ellie/sorry.mp3",
"Ellie/sorry2.mp3",
"Ellie/sorry3.mp3",
"Ellie/sorry4.mp3",
"Ellie/sorry5.mp3",
"Ellie/sorry6.mp3",
"Ellie/sorry7.mp3",
"Ellie/sorry8.mp3",
"Ellie/sorry9.mp3",
"Ellie/sorry10.mp3",
"Ellie/sorry11.mp3",
"Ellie/sorry12.mp3",
}
ENT.SoundTbl_BecomeEnemyToPlayer = {
"Ellie/becomeenemy.mp3",
"Ellie/becomeenemy2.mp3",
"Ellie/becomeenemy3.mp3",
"Ellie/becomeenemy4.mp3",
"Ellie/becomeenemy5.mp3",
"Ellie/becomeenemy6.mp3",
"Ellie/becomeenemy7.mp3",
"Ellie/becomeenemy8.mp3",
"Ellie/becomeenemy9.mp3",
"Ellie/becomeenemy10.mp3",
"Ellie/becomeenemy11.mp3",
"Ellie/becomeenemy12.mp3",
"Ellie/becomeenemy13.mp3",
"Ellie/becomeenemy14.mp3",
"Ellie/becomeenemy15.mp3",
"Ellie/becomeenemy16.mp3",
"Ellie/becomeenemy17.mp3",
"Ellie/becomeenemy18.mp3",
"Ellie/becomeenemy19.mp3",
"Ellie/becomeenemy20.mp3",
"Ellie/becomeenemy21.mp3",
"Ellie/becomeenemy22.mp3",
"Ellie/becomeenemy23.mp3",
"Ellie/becomeenemy24.mp3",
"Ellie/becomeenemy25.mp3",
}
ENT.SoundTbl_IdleDialogue = {
"Ellie/dialogue.mp3",
"Ellie/dialogue2.mp3",
"Ellie/dialogue3.mp3",
"Ellie/dialogue4.mp3",
"Ellie/dialogue5.mp3",
"Ellie/dialogue6.mp3",
"Ellie/dialogue7.mp3",
"Ellie/dialogue8.mp3",
"Ellie/dialogue9.mp3",
"Ellie/dialogue10.mp3",
"Ellie/dialogue11.mp3",
"Ellie/dialogue12.mp3",
"Ellie/dialogue13.mp3",
"Ellie/dialogue14.mp3",
"Ellie/dialogue15.mp3",
"Ellie/dialogue16.mp3",
"Ellie/dialogue17.mp3",
"Ellie/dialogue18.mp3",
"Ellie/dialogue19.mp3",
"Ellie/dialogue20.mp3",
"Ellie/dialogue21.mp3",
"Ellie/dialogue22.mp3",
"Ellie/dialogue23.mp3",
"Ellie/dialogue24.mp3",
"Ellie/dialogue25.mp3",
"Ellie/dialogue26.mp3",
"Ellie/dialogue27.mp3",
"Ellie/dialogue28.mp3",
"Ellie/dialogue29.mp3",
"Ellie/dialogue30.mp3",
"Ellie/dialogue31.mp3",
"Ellie/dialogue32.mp3",
"Ellie/dialogue33.mp3",
}
ENT.SoundTbl_IdleDialogueAnswer = {
"Ellie/answer.mp3",
"Ellie/answer2.mp3",
"Ellie/answer3.mp3",
"Ellie/answer4.mp3",
"Ellie/answer5.mp3",
"Ellie/answer6.mp3",
"Ellie/answer7.mp3",
"Ellie/answer8.mp3",
"Ellie/answer9.mp3",
"Ellie/answer10.mp3",
"Ellie/answer11.mp3",
"Ellie/answer12.mp3",
"Ellie/answer13.mp3",
"Ellie/answer14.mp3",
"Ellie/answer15.mp3",
"Ellie/answer16.mp3",
"Ellie/answer17.mp3",
"Ellie/answer18.mp3",
"Ellie/answer19.mp3",
"Ellie/answer20.mp3",
"Ellie/answer21.mp3",
"Ellie/answer22.mp3",
"Ellie/answer23.mp3",
"Ellie/answer24.mp3",
"Ellie/answer25.mp3",
"Ellie/answer26.mp3",
"Ellie/answer27.mp3",
"Ellie/answer28.mp3",
"Ellie/answer29.mp3",
"Ellie/answer30.mp3",
"Ellie/answer31.mp3",
"Ellie/answer32.mp3",
"Ellie/answer33.mp3",
"Ellie/answer34.mp3",
"Ellie/answer35.mp3",
"Ellie/answer36.mp3",
"Ellie/answer37.mp3",
"Ellie/answer38.mp3",
"Ellie/answer39.mp3",
"Ellie/answer40.mp3",
"Ellie/answer41.mp3",
"Ellie/answer42.mp3",
"Ellie/answer43.mp3",
"Ellie/answer44.mp3",
"Ellie/answer45.mp3",
"Ellie/answer46.mp3",
"Ellie/answer47.mp3",
"Ellie/answer48.mp3",
"Ellie/answer49.mp3",
"Ellie/answer50.mp3",
}

ENT.SoundTbl_Alert = {
"Ellie/alert.mp3",
"Ellie/alert2.mp3",
"Ellie/alert3.mp3",
"Ellie/alert4.mp3",
"Ellie/alert5.mp3",
"Ellie/alert6.mp3",
"Ellie/alert7.mp3",
"Ellie/alert8.mp3",
"Ellie/alert9.mp3",
"Ellie/alert10.mp3",
"Ellie/alert11.mp3",
"Ellie/alert12.mp3",
"Ellie/alert13.mp3",
"Ellie/alert14.mp3",
"Ellie/alert15.mp3",
"Ellie/alert16.mp3",
"Ellie/alert17.mp3",
"Ellie/alert18.mp3",
"Ellie/alert19.mp3",
"Ellie/alert20.mp3",
"Ellie/alert21.mp3",
"Ellie/alert22.mp3",
"Ellie/alert23.mp3",
"Ellie/alert24.mp3",
"Ellie/alert25.mp3",
"Ellie/alert26.mp3",
"Ellie/alert27.mp3",
"Ellie/alert28.mp3",
"Ellie/alert29.mp3",
"Ellie/alert30.mp3",
"Ellie/alert31.mp3",
"Ellie/alert32.mp3",
"Ellie/alert33.mp3",
"Ellie/alert34.mp3",
"Ellie/alert35.mp3",
"Ellie/alert36.mp3",
"Ellie/alert37.mp3",
"Ellie/alert38.mp3",
"Ellie/alert39.mp3",
"Ellie/alert40.mp3",
"Ellie/alert41.mp3",
"Ellie/alert42.mp3",
"Ellie/alert43.mp3",
"Ellie/alert44.mp3",
"Ellie/alert45.mp3",
"Ellie/alert46.mp3",
"Ellie/alert47.mp3",
"Ellie/alert48.mp3",
"Ellie/alert49.mp3",
"Ellie/alert50.mp3",
}
ENT.SoundTbl_CombatIdle = {
"Ellie/combat.mp3",
"Ellie/combat2.mp3",
"Ellie/combat3.mp3",
"Ellie/combat4.mp3",
"Ellie/combat5.mp3",
"Ellie/combat6.mp3",
"Ellie/combat7.mp3",
"Ellie/combat8.mp3",
"Ellie/combat9.mp3",
}
ENT.SoundTbl_MedicBeforeHeal = {
"Ellie/medkit.mp3",
"Ellie/medkit2.mp3",
"Ellie/medkit3.mp3",
"Ellie/medkit4.mp3",
"Ellie/medkit5.mp3",
"Ellie/medkit6.mp3",
"Ellie/medkit7.mp3",
"Ellie/medkit8.mp3",
"Ellie/medkit9.mp3",
"Ellie/medkit10.mp3",
"Ellie/medkit11.mp3",
"Ellie/medkit12.mp3",
"Ellie/medkit13.mp3",
"Ellie/medkit14.mp3",
"Ellie/medkit15.mp3",
}
ENT.SoundTbl_MedicReceiveHeal = {
"Ellie/heal.mp3",
"Ellie/heal2.mp3",
"Ellie/heal3.mp3",
"Ellie/heal4.mp3",
"Ellie/heal5.mp3",
"Ellie/heal6.mp3",
"Ellie/heal7.mp3",
"Ellie/heal8.mp3",
"Ellie/heal9.mp3",
"Ellie/heal10.mp3",
"Ellie/heal11.mp3",
"Ellie/heal12.mp3",
"Ellie/heal13.mp3",
"Ellie/heal14.mp3",
"Ellie/heal15.mp3",
"Ellie/heal16.mp3",
"Ellie/heal17.mp3",
"Ellie/heal18.mp3",
"Ellie/heal19.mp3",
"Ellie/heal20.mp3",
"Ellie/heal21.mp3",
}
ENT.SoundTbl_LostEnemy = {
"Ellie/lost.mp3",
"Ellie/lost2.mp3",
"Ellie/lost3.mp3",
"Ellie/lost4.mp3",
"Ellie/lost5.mp3",
"Ellie/lost6.mp3",
"Ellie/lost7.mp3",
"Ellie/lost8.mp3",
"Ellie/lost9.mp3",
"Ellie/lost10.mp3",
"Ellie/lost11.mp3",
"Ellie/lost12.mp3",
"Ellie/lost13.mp3",
"Ellie/lost14.mp3",
"Ellie/lost15.mp3",
"Ellie/lost16.mp3",
"Ellie/lost17.mp3",
"Ellie/lost18.mp3",
"Ellie/lost19.mp3",
"Ellie/lost20.mp3",
"Ellie/lost21.mp3",
"Ellie/lost22.mp3",
"Ellie/lost23.mp3",
}
ENT.SoundTbl_Investigate = {
"Ellie/investigate.mp3",
"Ellie/investigate2.mp3",
"Ellie/investigate3.mp3",
"Ellie/investigate4.mp3",
"Ellie/investigate5.mp3",
"Ellie/investigate6.mp3",
"Ellie/investigate7.mp3",
"Ellie/investigate8.mp3",
"Ellie/investigate9.mp3",
"Ellie/investigate10.mp3",
"Ellie/investigate11.mp3",
"Ellie/investigate12.mp3",
"Ellie/investigate13.mp3",
"Ellie/investigate14.mp3",
"Ellie/investigate15.mp3",
}
ENT.SoundTbl_CallForHelp = {
"Ellie/help.mp3",
"Ellie/help2.mp3",
"Ellie/help3.mp3",
"Ellie/help4.mp3",
"Ellie/help5.mp3",
"Ellie/help6.mp3",
"Ellie/help7.mp3",
"Ellie/help8.mp3",
"Ellie/help9.mp3",
"Ellie/help10.mp3",
"Ellie/help11.mp3",
"Ellie/help12.mp3",
"Ellie/help13.mp3",
"Ellie/help14.mp3",
"Ellie/help15.mp3",
}
ENT.SoundTbl_OnKilledEnemy = {
"Ellie/kill.mp3",
"Ellie/kill2.mp3",
"Ellie/kill3.mp3",
"Ellie/kill4.mp3",
"Ellie/kill5.mp3",
"Ellie/kill6.mp3",
"Ellie/kill7.mp3",
"Ellie/kill8.mp3",
"Ellie/kill9.mp3",
"Ellie/kill10.mp3",
"Ellie/kill11.mp3",
"Ellie/kill12.mp3",
"Ellie/kill13.mp3",
"Ellie/kill14.mp3",
"Ellie/kill15.mp3",
"Ellie/kill16.mp3",
"Ellie/kill17.mp3",
"Ellie/kill18.mp3",
"Ellie/kill19.mp3",
"Ellie/kill20.mp3",
"Ellie/kill21.mp3",
"Ellie/kill22.mp3",
"Ellie/kill23.mp3",
"Ellie/kill24.mp3",
"Ellie/kill25.mp3",
"Ellie/kill26.mp3",
"Ellie/kill27.mp3",
"Ellie/kill28.mp3",
"Ellie/kill29.mp3",
"Ellie/kill30.mp3",
"Ellie/kill31.mp3",
"Ellie/kill32.mp3",
"Ellie/kill33.mp3",
"Ellie/kill34.mp3",
"Ellie/kill35.mp3",
"Ellie/kill36.mp3",
"Ellie/kill37.mp3",
"Ellie/kill38.mp3",
"Ellie/kill39.mp3",
"Ellie/kill40.mp3",
"Ellie/kill41.mp3",
"Ellie/kill42.mp3",
"Ellie/kill43.mp3",
"Ellie/kill44.mp3",
"Ellie/kill45.mp3",
"Ellie/kill46.mp3",
"Ellie/kill47.mp3",
"Ellie/kill48.mp3",
"Ellie/kill49.mp3",
"Ellie/kill50.mp3",
}
ENT.SoundTbl_AllyDeath = {
"Ellie/fall.mp3",
"Ellie/fall2.mp3",
"Ellie/fall3.mp3",
"Ellie/fall4.mp3",
"Ellie/fall5.mp3",
"Ellie/fall6.mp3",
"Ellie/fall7.mp3",
"Ellie/fall8.mp3",
"Ellie/fall9.mp3",
"Ellie/fall10.mp3",
"Ellie/fall11.mp3",
"Ellie/fall12.mp3",
"Ellie/fall13.mp3",
"Ellie/fall14.mp3",
"Ellie/fall15.mp3",
"Ellie/fall16.mp3",
"Ellie/fall17.mp3",
"Ellie/fall18.mp3",
"Ellie/fall19.mp3",
"Ellie/fall20.mp3",
"Ellie/fall21.mp3",
"Ellie/fall22.mp3",
"Ellie/fall23.mp3",
"Ellie/fall24.mp3",
"Ellie/fall25.mp3",
"Ellie/fall26.mp3",
"Ellie/fall27.mp3",
"Ellie/fall28.mp3",
"Ellie/fall29.mp3",
"Ellie/fall30.mp3",
"Ellie/fall31.mp3",
"Ellie/fall32.mp3",
"Ellie/fall33.mp3",
"Ellie/fall34.mp3",
"Ellie/fall35.mp3",
"Ellie/fall36.mp3",
"Ellie/fall37.mp3",
"Ellie/fall38.mp3",
"Ellie/fall39.mp3",
"Ellie/fall40.mp3",
"Ellie/fall41.mp3",
}	
ENT.SoundTbl_WeaponReload = {
"Ellie/reload.mp3",
"Ellie/reload2.mp3",
"Ellie/reload3.mp3",
"Ellie/reload4.mp3",
"Ellie/reload5.mp3",
"Ellie/reload6.mp3",
"Ellie/reload7.mp3",
"Ellie/reload8.mp3",
"Ellie/reload9.mp3",
"Ellie/reload10.mp3",
"Ellie/reload11.mp3",
"Ellie/reload12.mp3",
"Ellie/reload13.mp3",
"Ellie/reload14.mp3",
"Ellie/reload15.mp3",
"Ellie/reload16.mp3",
"Ellie/reload17.mp3",
"Ellie/reload18.mp3",
"Ellie/reload19.mp3",
}
ENT.SoundTbl_OnDangerSight = {
"Ellie/danger.mp3",
"Ellie/danger2.mp3",
"Ellie/danger3.mp3",
"Ellie/danger4.mp3",
"Ellie/danger5.mp3",
"Ellie/danger6.mp3",
"Ellie/danger7.mp3",
"Ellie/danger8.mp3",
"Ellie/danger9.mp3",
"Ellie/danger10.mp3",
"Ellie/danger11.mp3",
"Ellie/danger12.mp3",
"Ellie/danger13.mp3",
"Ellie/danger14.mp3",
"Ellie/danger15.mp3",
"Ellie/danger16.mp3",
"Ellie/danger17.mp3",
"Ellie/danger18.mp3",
"Ellie/danger19.mp3",
"Ellie/danger20.mp3",
"Ellie/danger21.mp3",
"Ellie/danger22.mp3",
"Ellie/danger23.mp3",
"Ellie/danger24.mp3",
"Ellie/danger25.mp3",
"Ellie/danger26.mp3",
"Ellie/danger27.mp3",
"Ellie/danger28.mp3",
}
ENT.SoundTbl_GrenadeAttack = {
"Ellie/trhow.mp3",
"Ellie/trhow2.mp3",
"Ellie/trhow3.mp3",
"Ellie/trhow4.mp3",
"Ellie/trhow5.mp3",
"Ellie/trhow6.mp3",
"Ellie/trhow7.mp3",
"Ellie/trhow8.mp3",
"Ellie/trhow9.mp3",
"Ellie/trhow10.mp3",
"Ellie/trhow11.mp3",
"Ellie/trhow12.mp3",
}
ENT.SoundTbl_OnGrenadeSight = {
"Ellie/danger.mp3",
"Ellie/danger2.mp3",
"Ellie/danger3.mp3",
"Ellie/danger4.mp3",
"Ellie/danger5.mp3",
"Ellie/danger6.mp3",
"Ellie/danger7.mp3",
"Ellie/danger8.mp3",
"Ellie/danger9.mp3",
"Ellie/danger10.mp3",
"Ellie/danger11.mp3",
"Ellie/danger12.mp3",
"Ellie/danger13.mp3",
"Ellie/danger14.mp3",
"Ellie/danger15.mp3",
"Ellie/danger16.mp3",
"Ellie/danger17.mp3",
"Ellie/danger18.mp3",
"Ellie/danger19.mp3",
"Ellie/danger20.mp3",
"Ellie/danger21.mp3",
"Ellie/danger22.mp3",
"Ellie/danger23.mp3",
"Ellie/danger24.mp3",
"Ellie/danger25.mp3",
"Ellie/danger26.mp3",
"Ellie/danger27.mp3",
"Ellie/danger28.mp3",
"Ellie/grenade.mp3",
}
ENT.SoundTbl_Hurt = {
"Ellie/hurt.mp3",
"Ellie/hurt2.mp3",
"Ellie/hurt3.mp3",
"Ellie/hurt4.mp3",
"Ellie/hurt5.mp3",
"Ellie/hurt6.mp3",
"Ellie/hurt7.mp3",
}
ENT.SoundTbl_Pain = {
"Ellie/pain.mp3",
"Ellie/pain2.mp3",
"Ellie/pain3.mp3",
"Ellie/pain4.mp3",
"Ellie/pain5.mp3",
"Ellie/pain6.mp3",
"Ellie/pain7.mp3",
"Ellie/pain8.mp3",
"Ellie/pain9.mp3",
"Ellie/pain10.mp3",
"Ellie/pain11.mp3",
"Ellie/pain12.mp3",
"Ellie/pain13.mp3",
"Ellie/pain14.mp3",
"Ellie/pain15.mp3",
"Ellie/pain16.mp3",
"Ellie/pain17.mp3",
"Ellie/pain18.mp3",
"Ellie/pain19.mp3",
"Ellie/pain20.mp3",
"Ellie/pain21.mp3",
"Ellie/pain22.mp3",
"Ellie/pain23.mp3",
"Ellie/pain24.mp3",
"Ellie/pain25.mp3",
"Ellie/pain26.mp3",
}
ENT.SoundTbl_Death = {
"Ellie/death.mp3",
"Ellie/death2.mp3",
"Ellie/death3.mp3",
"Ellie/death4.mp3",
"Ellie/death5.mp3",
"Ellie/death6.mp3",
"Ellie/death7.mp3",
"Ellie/death8.mp3",
"Ellie/death9.mp3",
"Ellie/death10.mp3",
"Ellie/death11.mp3",
"Ellie/death12.mp3",
"Ellie/death13.mp3",
"Ellie/death14.mp3",
"Ellie/death15.mp3",
"Ellie/death16.mp3",
"Ellie/death17.mp3",
"Ellie/death18.mp3",
"Ellie/death19.mp3",
"Ellie/death20.mp3",
"Ellie/death21.mp3",
"Ellie/death22.mp3",
"Ellie/death23.mp3",
"Ellie/death24.mp3",
"Ellie/death25.mp3",
"Ellie/death26.mp3",
"Ellie/death27.mp3",
"Ellie/death28.mp3",
"Ellie/death29.mp3",
"Ellie/death30.mp3",
"Ellie/death31.mp3",
"Ellie/death32.mp3",
"Ellie/death33.mp3",
"Ellie/death34.mp3",
"Ellie/death35.mp3",
"Ellie/death36.mp3",
"Ellie/death37.mp3",
"Ellie/death38.mp3",
"Ellie/death39.mp3",
"Ellie/death40.mp3",
"Ellie/death41.mp3",
}
ENT.SoundTbl_FollowPlayer = {
"Ellie/follow.mp3",
"Ellie/follow2.mp3",
"Ellie/follow3.mp3",
"Ellie/follow4.mp3",
"Ellie/follow5.mp3",
"Ellie/follow6.mp3",
"Ellie/follow7.mp3",
"Ellie/follow8.mp3",
"Ellie/follow9.mp3",
"Ellie/follow10.mp3",
"Ellie/follow11.mp3",
"Ellie/follow12.mp3",
"Ellie/follow13.mp3",
"Ellie/follow14.mp3",
"Ellie/follow15.mp3",
"Ellie/follow16.mp3",
"Ellie/follow17.mp3",
"Ellie/follow18.mp3",
"Ellie/follow19.mp3",
"Ellie/follow20.mp3",
"Ellie/follow21.mp3",
"Ellie/follow22.mp3",
"Ellie/follow23.mp3",
"Ellie/follow24.mp3",
"Ellie/follow25.mp3",
"Ellie/follow26.mp3",
"Ellie/follow27.mp3",
"Ellie/follow28.mp3",
"Ellie/follow29.mp3",
"Ellie/follow30.mp3",
"Ellie/follow31.mp3",
"Ellie/follow32.mp3",
"Ellie/follow33.mp3",
"Ellie/follow34.mp3",
"Ellie/follow35.mp3",
"Ellie/follow36.mp3",
"Ellie/follow37.mp3",
"Ellie/follow38.mp3",
"Ellie/follow39.mp3",
"Ellie/follow40.mp3",
"Ellie/follow41.mp3",
"Ellie/follow42.mp3",
"Ellie/follow43.mp3",
"Ellie/follow44.mp3",
"Ellie/follow45.mp3",
"Ellie/follow46.mp3",
"Ellie/follow47.mp3",
"Ellie/follow48.mp3",
"Ellie/follow49.mp3",
"Ellie/follow50.mp3",
}
ENT.SoundTbl_UnFollowPlayer = {
"Ellie/unfollow.mp3",
"Ellie/unfollow2.mp3",
"Ellie/unfollow3.mp3",
"Ellie/unfollow4.mp3",
"Ellie/unfollow5.mp3",
"Ellie/unfollow6.mp3",
"Ellie/unfollow7.mp3",
"Ellie/unfollow8.mp3",
"Ellie/unfollow9.mp3",
"Ellie/unfollow10.mp3",
"Ellie/unfollow11.mp3",
"Ellie/unfollow12.mp3",
"Ellie/unfollow13.mp3",
"Ellie/unfollow14.mp3",
"Ellie/unfollow15.mp3",
"Ellie/unfollow16.mp3",
"Ellie/unfollow17.mp3",
"Ellie/unfollow18.mp3",
"Ellie/unfollow19.mp3",
"Ellie/unfollow20.mp3",
"Ellie/unfollow21.mp3",
"Ellie/unfollow22.mp3",
"Ellie/unfollow23.mp3",
"Ellie/unfollow24.mp3",
"Ellie/unfollow25.mp3",
"Ellie/unfollow26.mp3",
"Ellie/unfollow27.mp3",
"Ellie/unfollow28.mp3",
"Ellie/unfollow29.mp3",
"Ellie/unfollow30.mp3",
}
ENT.SoundTbl_OnPlayerSight = {
"Ellie/sight.mp3",
"Ellie/sight2.mp3",
"Ellie/sight3.mp3",
"Ellie/sight4.mp3",
"Ellie/sight5.mp3",
"Ellie/sight6.mp3",
"Ellie/sight7.mp3",
"Ellie/sight8.mp3",
"Ellie/sight9.mp3",
"Ellie/sight10.mp3",
"Ellie/sight11.mp3",
"Ellie/sight12.mp3",
"Ellie/sight13.mp3",
"Ellie/sight14.mp3",
"Ellie/sight15.mp3",
}
ENT.SoundTbl_DamageByPlayer = {
"Ellie/playerhit.mp3",
"Ellie/playerhit2.mp3",
"Ellie/playerhit3.mp3",
"Ellie/playerhit4.mp3",
"Ellie/playerhit5.mp3",
"Ellie/playerhit6.mp3",
"Ellie/playerhit7.mp3",
"Ellie/playerhit8.mp3",
"Ellie/playerhit9.mp3",
"Ellie/playerhit10.mp3",
"Ellie/playerhit11.mp3",
"Ellie/playerhit12.mp3",
"Ellie/playerhit13.mp3",
"Ellie/playerhit14.mp3",
}
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
function ENT:CustomOnPreInitialize()
	if GetConVar("vj_tlou_ellie_clothes"):GetInt() == 1 then
		self.Model = {"models/the_last_of_us/ellie/ellie_sweater.mdl"}
	end
	if GetConVar("vj_tlou_ellie_clothes"):GetInt() == 2 then
		self.Model = {"models/the_last_of_us/ellie/ellie_jacket.mdl"}
		self:SetSkin(2,2)
	end
	if GetConVar("vj_tlou_ellie_clothes"):GetInt() == 3 then
		self.Model = {"models/the_last_of_us/ellie/ellie_winterjacket.mdl"}
	end
	if GetConVar("vj_tlou_ellie_clothes"):GetInt() == 4 then
		self.Model = {"models/the_last_of_us/ellie/ellie_jacket.mdl"}
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
self.AllyParent = NULL
self.NextFindNewAllyParentTime = CurTime()
	if math.random(1,5) == 1 then 
self.IsMedicSNPC = true 
end
end
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.Bloater = nil
ENT.BloaterScene = true
function ENT:CustomOnAlert() 
	local enemy = self:GetEnemy()
	if enemy:IsPlayer() and math.random(1,3) == 1 then 
		enemy:SendLua( "surface.PlaySound('tlouspotted')" )
	elseif enemy:GetClass() == "npc_vj_tlou_bloater" and self.BloaterScene and GetConVar("vj_tlou_bloater_intro"):GetInt() == 0 then
		self.Bloater = enemy
		self.BloaterScene = false

		self.SoundTbl_AllyDeath = false
		self.SoundTbl_BecomeEnemyToPlayer = false
		self.SoundTbl_BeforeMeleeAttack = false
		self.SoundTbl_BeforeRangeAttack = false
		self.SoundTbl_CallForHelp = false
		self.SoundTbl_CombatIdle = false
		self.SoundTbl_DamageByPlayer = false
		self.SoundTbl_FollowPlayer = false
		self.SoundTbl_GrenadeAttack = false
		self.SoundTbl_Investigate = false
		self.SoundTbl_LostEnemy = false
		self.SoundTbl_OnDangerSight = false
		self.SoundTbl_OnGrenadeSight = false
		self.SoundTbl_OnKilledEnemy = false
		self.SoundTbl_UnFollowPlayer = false
		self.SoundTbl_WeaponReload = false

		self:PlaySoundSystem("Alert", "ellie/bloaterscene.wav")

		timer.Simple(2, function()
			for _, bill in pairs(ents.FindInSphere(self:GetPos(), 2500)) do
				if bill:GetClass() == "npc_vj_tlou_bill" then
					bill:EmitSound("bill/bloaterscene.wav")
					timer.Simple(2, function()
						if !self:IsValid() and !bill:IsValid() then return end
						self:EmitSound("ellie/bloaterscene2.wav")
						timer.Simple(1, function()
							for _, joel in pairs(ents.FindInSphere(self:GetPos(), 2500)) do
								if joel:GetClass() == "npc_vj_tlou_joel" then
									joel:EmitSound("joel/bloaterscene.wav")
								end
							end
						end)
					end)
				end
			end

		end)
	
	elseif math.random(1,2) == 1 then
		if enemy:GetClass() == "npc_vj_tlou_bloater" then
			local bloaterAlert = {
				"ellie/infected.wav",
				"ellie/bloater.wav",
				"ellie/bloater2.wav",
				"ellie/bloater3.wav"
			}
			
			-- Generar un índice aleatorio
			local randomIndex = math.random(1, #bloaterAlert)
			
			-- Seleccionar un sonido aleatorio
			local selectedBloaterAlert = bloaterAlert[randomIndex]
			
			-- Reproducir el sonido seleccionado
			self:PlaySoundSystem("Alert", selectedBloaterAlert)
		end
		if enemy:GetClass() == "npc_vj_tlou_clicker" then
			local clickerAlert = {
				"ellie/infected.wav",
				"ellie/clicker.wav",
				"ellie/clicker2.wav",
			}
			
			-- Generar un índice aleatorio
			local randomIndex = math.random(1, #clickerAlert)
			
			-- Seleccionar un sonido aleatorio
			local selectedClickerAlert = clickerAlert[randomIndex]
			
			-- Reproducir el sonido seleccionado
			self:PlaySoundSystem("Alert", selectedClickerAlert)
		end
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
ENT.Bloater_Lesson = false
function ENT:CustomOnThink()
	self:CallOnRemove("TLOUSpotted", function()
		self.Spotted = false
	end)

    for _, ent in pairs(ents.FindInSphere(self:GetPos(), 5000)) do
        if ent:GetClass() == "npc_vj_tlou_clicker"  and self.Spotted == false then
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


	if self.Bloater and self.Bloater_Lesson == false then
		-- Aquí puedes agregar lógica para atacar al enemigo o seguirlo
		if not self.Bloater:IsValid() or (self.Bloater:Health() <= 0 and self.Bloater_Lesson == false) then
			-- Si el enemigo no es válido o ha muerto
			self:EmitSound("ellie/bloaterscene3.wav") -- Emitir el sonido correctamente
			timer.Simple(3.5, function()
				for _, joel in pairs(ents.FindInSphere(self:GetPos(), 2500)) do
					if joel:GetClass() == "npc_vj_tlou_joel" then
						joel:EmitSound("joel/bloaterscene2.wav")
						timer.Simple(4.6, function()
							if !self:IsValid() then return end
							self:EmitSound("ellie/bloaterscene4.wav")
							timer.Simple(2.6, function()
								for _, bill in pairs(ents.FindInSphere(self:GetPos(), 2500)) do
									if bill:GetClass() == "npc_vj_tlou_bill" then
										bill:EmitSound("bill/bloaterscene2.wav")
										if self:IsValid() then
											self.SoundTbl_AllyDeath = true
											self.SoundTbl_BecomeEnemyToPlayer = true
											self.SoundTbl_BeforeMeleeAttack = true
											self.SoundTbl_BeforeRangeAttack = true
											self.SoundTbl_CallForHelp = true
											self.SoundTbl_CombatIdle = true
											self.SoundTbl_DamageByPlayer = true
											self.SoundTbl_FollowPlayer = true
											self.SoundTbl_GrenadeAttack = true
											self.SoundTbl_Investigate = true
											self.SoundTbl_LostEnemy = true
											self.SoundTbl_OnDangerSight = true
											self.SoundTbl_OnGrenadeSight = true
											self.SoundTbl_OnKilledEnemy = true
											self.SoundTbl_UnFollowPlayer = true
											self.SoundTbl_WeaponReload = true
										end
									end
								end
							end)
						end)
					end
				end
			end)
			self.Bloater_Lesson = true
		end
	end
end
