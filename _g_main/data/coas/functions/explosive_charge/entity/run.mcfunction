kill @s[nbt=!{ArmorItems:[{},{},{},{tag:{type:explosive_charge}}]}]

scoreboard players add @s entTimer 1

execute positioned ~ ~1.8 ~ run particle dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a

execute if entity @s[scores={entTimer=25}] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 1 1
execute if entity @s[scores={entTimer=100}] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 1 1
execute if entity @s[scores={entTimer=175}] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 1 1

execute if entity @s[scores={entTimer=200..}] positioned ~ ~1.8 ~ run function coas:explosive_charge/entity/detonate
