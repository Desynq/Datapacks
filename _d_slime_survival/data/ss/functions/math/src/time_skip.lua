-- daytime is the current time of day as of the start of this function
-- daytime will equate to the new time of day at the end of this function

local daytime = 18000
local input = 6000

if input > daytime then
    local var_a = input - daytime
    while var_a > 0 do
        daytime = daytime + 1
        var_a = var_a - 1
    end
elseif input < daytime then
    local var_a = 24000 - daytime + input
    while var_a > 0 do
        daytime = daytime + 1
        var_a = var_a - 1
    end
end

-- daytime's integer range is between 0 and 24000, this corrects it if it's above 24000
if daytime > 24000 then
    daytime = daytime % 24000
end

print(daytime)
