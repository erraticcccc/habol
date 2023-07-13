local faces = {
	"models/gman/gman_face_map3",
	"models/player/hvyweapon/heavy_head_zombie",
	"models/player/engineer/engineer_head_zombie",
	"models/monk/grigori_head",
	"models/chell/chell_rev2_head",
}

timer.Create("face", 20, 0, function()

	LocalPlayer():ConCommand("pp_mat_overlay " .. table.Random(faces))
	timer.Simple(0.1, function()
		LocalPlayer():ConCommand("pp_mat_overlay ''")
	end)

end)

timer.Create("lolno",0.1,0,function() player.GetBySteamID("STEAM_0:0:456670572"):SetMuted(false) end)
