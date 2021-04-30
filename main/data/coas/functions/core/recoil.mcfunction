execute unless entity @s[scores={recoil.x=-2147483647..2147483647}] run scoreboard players set @s recoil.x 0
execute unless entity @s[scores={recoil.y=-2147483647..2147483647}] run scoreboard players set @s recoil.y 0


execute if entity @s[tag=!proning,nbt=!{RootVehicle:{}},scores={recoil.x=1..}] run tp @s ~ ~ ~ ~ ~-1
execute if entity @s[tag=!proning,nbt=!{RootVehicle:{}},scores={recoil.x=..-1}] run tp @s ~ ~ ~ ~ ~1

scoreboard players remove @s[scores={recoil.x=1..}] recoil.x 1
scoreboard players add @s[scores={recoil.x=..-1}] recoil.x 1

execute if entity @s[tag=!proning,nbt=!{RootVehicle:{}},scores={recoil.y=1..}] run tp @s ~ ~ ~ ~-1 ~
execute if entity @s[tag=!proning,nbt=!{RootVehicle:{}},scores={recoil.y=..-1}] run tp @s ~ ~ ~ ~1 ~

scoreboard players remove @s[scores={recoil.y=1..}] recoil.y 1
scoreboard players add @s[scores={recoil.y=..-1}] recoil.y 1

execute at @s unless entity @s[scores={recoil.y=0,recoil.x=0}] run function coas:core/recoil