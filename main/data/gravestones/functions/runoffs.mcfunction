execute if entity @s[tag=ish_stealth] run function soup:ish/unstealth


execute unless entity @s[y=0,dy=-2147483647] run function gravestones:core/summon
execute if entity @s[y=0,dy=-2147483647] positioned ~ 1 ~ run function gravestones:core/summon

execute unless entity @s[y=0,dy=-2147483647] run function gravestones:core/modify
execute if entity @s[y=0,dy=-2147483647] positioned ~ 1 ~ run function gravestones:core/modify

execute as @e[type=chest_minecart,tag=grave,tag=!checked,nbt={Items:[{id:"minecraft:barrier"}]}] run function gravestones:core/replaceitem
tag @e[type=chest_minecart,tag=grave,tag=!checked] add checked

clear @s