local _m = math
local function oClamp(num,min,max) -- short for Overflow Clamp.
	if num < min then return max end
	if num > max then return min end
	return num
end

local oAngles
local currTarget
hook.Add('CreateMove','testingfunny',function(cmd)
	currTarget = LocalPlayer():GetEyeTrace()
	if currTarget.Entity:IsPlayer() or currTarget.Entity:IsNPC() then
		oAngles = cmd:GetViewAngles()
		cmd:SetViewAngles(Angle((_m.Clamp(oAngles.p+_m.Rand(-2,2),-89,89)),(oClamp(oAngles.y+_m.Rand(-2,2),-179,179)),oAngles.r)) -- Angle(pitch,yaw,roll)
	end
end)