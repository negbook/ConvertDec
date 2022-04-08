function DectoN(num,N) 
    local str = ""
    while num > 0 do
        local remainder = math.fmod(num, N)
        if remainder < 10 then
            str = remainder .. str
        else
            str = string.char(65 + remainder - 10) .. str
        end
        num = math.floor(num / N)
    end
    if #str == 0 then
        str = "0"
    end
    return str
end

function NtoDec(num,N)
    local dec = 0
    local num = tostring(num)
    local len = #num
    for i = 1, len do
        local c = string.byte(num, i)
        if c >= 65 and c <= 90 then
            dec = dec + (c - 65 + 10) * math.pow(N, len - i)
        else
            dec = dec + (c - 48) * math.pow(N, len - i)
        end
    end
    return math.floor(dec)
end

function toDuodecimal(num)
   return DectoN(num,12)
end 
