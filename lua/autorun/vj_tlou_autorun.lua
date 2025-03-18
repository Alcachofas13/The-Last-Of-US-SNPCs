/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local PublicAddonName = "The Last Of Us: SNPCS"
local AddonName = "The Last Of Us: SNPCS"
local AddonType = "SNPC"
local AutorunFile = "autorun/vj_tlou_autorun.lua"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua","GAME")
if VJExists == true then
	include('autorun/vj_controls.lua')

    VJ.AddCategoryInfo("The Last Of Us", {Icon = "icons/tlouicon.png"})

	local ellieWeapon = "weapon_vj_tlou_ellie_pistol"

	local ellieWeapon = "weapon_vj_tlou_ellie_pistol"

	-- Asegúrate de que la variable de configuración existe
	local ellieClothesConVar = GetConVar("vj_tlou_ellie_clothes")
	if ellieClothesConVar then
		if ellieClothesConVar:GetInt() == 3 then
			ellieWeapon = "weapon_vj_tlou_hunting_rifle"
		end

	end

	local vCat = "The Last Of Us" 
	-- Main Characters
	VJ.AddNPC_HUMAN("Ellie Williams","npc_vj_tlou_ellie",{ellieWeapon},vCat)
	VJ.AddNPC_HUMAN("Joel Miller","npc_vj_tlou_joel",{"weapon_vj_tlou_revolver"},vCat)
	-- Secondary Characters
	VJ.AddNPC_HUMAN("Tess Servopoulos","npc_vj_tlou_tess",{"weapon_vj_tlou_service_pistol"},vCat)
	VJ.AddNPC_HUMAN("Bill","npc_vj_tlou_bill",{"weapon_vj_tlou_shotgun"},vCat)
	VJ.AddNPC_HUMAN("Tommy Miller","npc_vj_tlou_tommy",{"weapon_vj_tlou_hunting_rifle"},vCat)
	-- Fedra
	VJ.AddNPC_HUMAN("Hazmat Soldier","npc_vj_tlou_fedra",{"weapon_vj_tlou_assault_rifle"},vCat)
	-- Infected
	VJ.AddNPC("Clicker","npc_vj_tlou_clicker",vCat)
	VJ.AddNPC("Bloater","npc_vj_tlou_bloater",vCat)
	

	-- Weapons (Used by default by the NPCs)
	VJ.AddNPCWeapon("VJ_TLOU_Revolver","weapon_vj_tlou_revolver")
	VJ.AddNPCWeapon("VJ_TLOU_Ellie_Pistol","weapon_vj_tlou_ellie_pistol")
	VJ.AddNPCWeapon("VJ_TLOU_Service_Pistol","weapon_vj_tlou_service_pistol")
	VJ.AddNPCWeapon("VJ_TLOU_Shotgun","weapon_vj_tlou_shotgun")
	VJ.AddNPCWeapon("VJ_TLOU_Hunting_Rifle","weapon_vj_tlou_hunting_rifle")
	VJ.AddNPCWeapon("VJ_TLOU_Assault_Rifle","weapon_vj_tlou_assault_rifle")
	VJ.AddNPCWeapon("VJ_TLOU_Machete","weapon_vj_tlou_machete")
	-- Weapons
	VJ.AddNPCWeapon("VJ_TLOU_9mm","weapon_vj_tlou_9mm")
	VJ.AddNPCWeapon("VJ_TLOU_Burst_Pistol","weapon_vj_tlou_burst_pistol")
	VJ.AddNPCWeapon("VJ_TLOU_Burst_Rifle","weapon_vj_tlou_burst_rifle")
	VJ.AddNPCWeapon("VJ_TLOU_Diablo","weapon_vj_tlou_diablo")
	VJ.AddNPCWeapon("VJ_TLOU_Double_Shotgun","weapon_vj_tlou_double_barreled_shotgun")
	VJ.AddNPCWeapon("VJ_TLOU_Pipe","weapon_vj_tlou_pipe")
	VJ.AddNPCWeapon("VJ_TLOU_Shorty","weapon_vj_tlou_shorty")
	VJ.AddNPCWeapon("VJ_TLOU_Specter_Rifle","weapon_vj_tlou_specter")
	VJ.AddNPCWeapon("VJ_TLOU_Variable_Rifle","weapon_vj_tlou_variable_rifle")


	-- Some General Sounds
	sound.Add( {
		name = "tloudeath",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 0,
		pitch = {100, 100},
		sound = "tlou/death.mp3"
	} )
	sound.Add( {
		name = "tlouspotted",
		channel = CHAN_STATIC,
		volume = 1.0,
		level = 0,
		pitch = {100, 100},
		sound = "tlou/spotted.mp3"
	} )
	-- Menu Options
	VJ.AddConVar("vj_tlou_ellie_clothes", 1, {FCVAR_ARCHIVE})
	VJ.AddConVar("vj_tlou_joel_clothes", 1, {FCVAR_ARCHIVE})
	VJ.AddConVar("vj_tlou_bloater_intro", 0, {FCVAR_ARCHIVE})

if CLIENT then
    hook.Add("PopulateToolMenu", "THE_LAST_OF_US_MENU", function()
        spawnmenu.AddToolMenuOption("DrVrej", "SNPC Configures", "The Last Of Us: SNPCS", "The Last Of Us: SNPCS", "", "", function(Panel)
            Panel:ControlHelp("\nWhat clothes should Ellie wear?")
            Panel:AddControl("Slider",{Label = "Ellie's Seasonal Clothes",Command = "vj_tlou_ellie_clothes",Min = 0,Max = 4})
            Panel:ControlHelp("0 = Random\n1 = Summer\n2 = Autumn\n3 = Winter\n4 = Spring\n")

			Panel:ControlHelp("\nWhat clothes should Joel wear?")
            Panel:AddControl("Slider",{Label = "Joel's Seasonal Clothes",Command = "vj_tlou_joel_clothes",Min = 0,Max = 4})
            Panel:ControlHelp("0 = Random\n1 = Summer\n2 = Autumn\n3 = Winter\n4 = Spring\n")

			Panel:AddControl("Checkbox",{Label = "Does Ellie know what the bloater is?",Command = "vj_tlou_bloater_intro"})
end)
    end)
end
-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile(AutorunFile)
	VJ.AddAddonProperty(AddonName,AddonType)
else
	if (CLIENT) then
		chat.AddText(Color(0,200,200),PublicAddonName,
		Color(0,255,0)," was unable to install, you are missing ",
		Color(255,100,0),"VJ Base!")
	end
	timer.Simple(1,function()
		if not VJF then
			if (CLIENT) then
				VJF = vgui.Create("DFrame")
				VJF:SetTitle("ERROR!")
				VJF:SetSize(790,560)
				VJF:SetPos((ScrW()-VJF:GetWide())/2,(ScrH()-VJF:GetTall())/2)
				VJF:MakePopup()
				VJF.Paint = function()
					draw.RoundedBox(8,0,0,VJF:GetWide(),VJF:GetTall(),Color(200,0,0,150))
				end
				
				local VJURL = vgui.Create("DHTML",VJF)
				VJURL:SetPos(VJF:GetWide()*0.005, VJF:GetTall()*0.03)
				VJURL:Dock(FILL)
				VJURL:SetAllowLua(true)
				VJURL:OpenURL("https://sites.google.com/site/vrejgaming/vjbasemissing")
			elseif (SERVER) then
				timer.Create("VJBASEMissing",5,0,function() print("VJ Base is Missing! Download it from the workshop!") end)
			end
		end
	end)
end