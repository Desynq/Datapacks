execute store result score @s ent.hp run data get entity @s Health

particle flame ~ ~1 ~ .4 .5 .4 .01 20 force @a

execute if entity @s[predicate=minecraft:dimension/overworld,scores={ent.hp=150..}] run fill ~-1 ~.5 ~-1 ~1 ~.5 ~1 fire keep

execute if entity @s[nbt={Fire:-20s},nbt=!{Fire:0s}] run data merge entity @s {Fire:0}
execute if entity @s[scores={ent.hp=750..}] run effect give @a[distance=..3] instant_damage 1 0 true
execute if block ~ ~ ~ water run effect give @s[scores={ent.hp=750..}] instant_health 1 0 true

execute if score 100 tick matches 100 if entity @a[distance=..64,gamemode=!creative,gamemode=!spectator] run summon blaze ~ ~ ~ {DeathLootTable:"",Health:100,Attributes:[{Name:generic.max_health,Base:100}]}
execute if score 100 tick matches 100 if entity @a[distance=..64,gamemode=!creative,gamemode=!spectator] run summon zombified_piglin ~ ~ ~ {Tags:["noDrops"],HandItems:[{id:golden_sword,Count:1,tag:{AttributeModifiers:[]}}],DeathLootTable:"",AngerTime:2147483647,Health:100,Attributes:[{Name:generic.max_health,Base:100},{Name:generic.attack_damage,Base:25}]}

execute as @e[type=slime,distance=..32] at @s run function myst:scp/457/convert_slime
