scoreboard players add @s antiair 1
scoreboard players set @s antiair.math 80
scoreboard players operation @s antiair.math -= @s antiair
scoreboard players operation @s antiair.math /= 20 math
title @s reset
title @s times 0 10 0
title @s title [{"color":"dark_aqua","text":"Restricted Airspace: Lethal Force in "},{"color":"dark_aqua","score":{"objective":"antiair.math","name":"@s"}}]
title @s subtitle [{"color":"dark_aqua","score":{"objective":"antiair","name":"@s"}},{"color":"dark_aqua","text":"/60"}]

execute if entity @s[scores={antiair=10}] run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2147483647
execute if entity @s[scores={antiair=30}] run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2147483647
execute if entity @s[scores={antiair=50}] run playsound entity.elder_guardian.curse master @s ~ ~ ~ 2147483647

execute if entity @s[scores={antiair=60..}] run function slime:antiair/kill