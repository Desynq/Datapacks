particle crit ~ ~ ~ 0 0 0 0 10 force @a[distance=..128]
summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

execute store success score ran temp positioned ~ ~-1 ~ if entity @e[type=#mob,distance=..1] run function coas:electrostasis_rifle/damage
execute if score ran temp matches 0 positioned ~ ~1 ~ if entity @e[type=#mob,distance=..1] run function coas:electrostasis_rifle/damage

scoreboard players add @s despawn.timer 1

execute unless block ~ ~ ~ #transparent run scoreboard players set @s despawn.timer 64

execute unless entity @s[scores={despawn.timer=64..}] positioned ^ ^ ^1 run function coas:electrostasis_rifle/bullet
scoreboard players reset @s[scores={despawn.timer=64..}] despawn.timer