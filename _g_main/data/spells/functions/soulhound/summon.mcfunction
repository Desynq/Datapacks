summon wolf ~ ~ ~ {Tags:["soulhound"],CollorColor:15,CustomName:'{"color":"dark_purple","text":"Soulhound"}',Attributes:[{Name:generic.movement_speed,Base:.5},{Name:generic.attack_damage,Base:10}]}
data modify entity @e[type=wolf,tag=soulhound,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
tag @e[tag=soulhound,tag=!marked] add marked

playsound entity.wolf.howl master @a[distance=0..] ~ ~ ~ 2 1


xp add @s -20 points
scoreboard players set @s c.spell 101

clear @s bone 1