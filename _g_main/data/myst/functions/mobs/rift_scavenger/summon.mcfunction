kill @s[type=armor_stand]

summon wither_skeleton ~ ~ ~ {Tags:["temp","custom","rift_scavenger"],Team:mob,CustomName:'{"color":"dark_purple","text":"Rift Scavenger"}',ArmorItems:[{},{},{},{id:crying_obsidian,Count:1}],Health:30,Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:.3},{Name:generic.follow_range,Base:64}]}
execute as @e[type=wither_skeleton,tag=temp] run function entity:mob/custom/temp


particle reverse_portal ~ ~1 ~ .5 .5 .5 5 1000 force @a
playsound block.portal.travel voice @a ~ ~ ~ .2
