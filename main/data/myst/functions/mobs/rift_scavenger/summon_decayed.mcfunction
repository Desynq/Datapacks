kill @s[type=armor_stand]
summon wither_skeleton ~ ~ ~ {ActiveEffects:[{Id:20,Duration:2147483647}],Tags:["rift_scavenger"],Team:mob,CustomName:'{"color":"dark_purple","text":"Rift Scavenger"}',ArmorItems:[{},{},{},{id:crying_obsidian,Count:1}],Health:30,Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:.3},{Name:generic.follow_range,Base:64}]}
particle reverse_portal ~ ~1 ~ .5 .5 .5 5 1000 force @a
playsound block.portal.travel voice @a ~ ~ ~ .2