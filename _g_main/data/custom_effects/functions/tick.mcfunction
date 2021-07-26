execute unless entity @s[scores={emp=0..}] run scoreboard players set @s emp 0
execute unless entity @s[scores={off.nvg=0..}] run scoreboard players set @s off.nvg 0
execute unless entity @s[scores={off.flashlight=0..}] run scoreboard players set @s off.flashlight 0

scoreboard players remove @s[scores={emp=1..}] emp 1
scoreboard players remove @s[scores={off.nvg=1..}] off.nvg 1
scoreboard players remove @s[scores={off.flashlight=1..}] off.flashlight 1