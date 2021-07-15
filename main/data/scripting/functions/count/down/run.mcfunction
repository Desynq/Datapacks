title @a reset
title @a times 10 5 5
title @a title [{"color":"dark_red","score":{"name":"%a","objective":"timer.temp"}},"..."]

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 2147483647 .5



execute if score %a timer.temp matches 1.. run scoreboard players remove %a timer.temp 1


execute if score %a timer.temp matches 1.. run schedule function scripting:count/down/run 1s replace
execute unless score %a timer.temp matches 1.. run schedule function scripting:count/down/end 1s replace
