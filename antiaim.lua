local _m = table.Copy(math)
local _h = table.Copy(hook)
local _t = table.Copy(timer)

local oAngles
local currTarget
_h.Add('CreateMove','testingfunny',function(cmd)
    currTarget = LocalPlayer():GetEyeTrace()
    if currTarget.Entity:IsPlayer() or currTarget.Entity:IsNPC() then
        oAngles = cmd:GetViewAngles()
        local newAngles = Angle(oAngles.x + _m.Rand(-8,8),oAngles.y + _m.Rand(-8,8),oAngles.z)
        newAngles:Normalize()
        cmd:SetViewAngles(newAngles) -- Angle(pitch,yaw,roll)
    end
end)
