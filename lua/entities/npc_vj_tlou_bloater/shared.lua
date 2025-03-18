ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Bloater"
ENT.Author 			= "Alcachofas13"
ENT.Contact 		= ""
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "TLOU"

if CLIENT then
	net.Receive("VJ_TLOU_bloater_Controller",function(len,pl)
		local delete = net.ReadBool()
		local ent = net.ReadEntity()
		local class = net.ReadString()
		local ply = net.ReadEntity()
		local cent = net.ReadEntity()

		if !IsValid(ent) then delete = true end

        local hookRSE = "VJ_TLOU_bloater_Blindness" .. ent:EntIndex()

        if !delete then
			hook.Add("RenderScreenspaceEffects",hookRSE,function()
                if !IsValid(ent) then
                    hook.Remove("RenderScreenspaceEffects",hookRSE)
                    return
                end
				local tab = {
					["$pp_colour_addr"] = 0,
					["$pp_colour_addg"] = 0,
					["$pp_colour_addb"] = 0,
					["$pp_colour_brightness"] = -0.6,
					["$pp_colour_contrast"] = 0.1,
					["$pp_colour_colour"] = 0,
					["$pp_colour_mulr"] = 0,
					["$pp_colour_mulg"] = 0,
					["$pp_colour_mulb"] = 0
				}
				DrawColorModify(tab)

                surface.SetDrawColor(255,255,255,80)


			end)


			
			-- Recibir el evento y marcar la entidad
			net.Receive("VJ_TLOU_bloater_Controller_Hear", function()
				local soundEntity = net.ReadEntity() -- Leer la entidad enviada
				if !IsValid(soundEntity) then return end -- Verificar si la entidad es válida
				local hookListen = "VJ_TLOU_bloater_Listen" .. soundEntity:EntIndex()

				hook.Add("RenderScreenspaceEffects", hookListen, function()
					if !IsValid(ent) then
						hook.Remove("RenderScreenspaceEffects", hookListen)
						return
					end
					if IsValid(soundEntity) then
						local lighting = DynamicLight(soundEntity:EntIndex())
						if (lighting) then
							lighting.Pos = soundEntity:GetPos() + soundEntity:OBBCenter()
							lighting.r = 255
							lighting.g = 255
							lighting.b = 255
							lighting.Brightness = 100
							lighting.Size = 100
							lighting.NoModel = true
							lighting.Decay = 8000
							lighting.DieTime = CurTime() +0.05
							lighting.Style = 0
						end
					else
						hook.Remove("RenderScreenspaceEffects", hookListen)
					end
				end)


			end)
			
		else
            hook.Remove("RenderScreenspaceEffects",hookRSE)
        end
    end)


	
end