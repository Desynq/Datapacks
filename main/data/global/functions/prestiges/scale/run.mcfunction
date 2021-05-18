execute as @e[type=#mob,type=!player,tag=,predicate=dimension/overworld] unless score @s ent.hp_init matches 1.. store result score @s ent.hp_init run attribute @s generic.max_health base get
execute as @e[type=#mob,type=!player,tag=,predicate=dimension/overworld] unless score @s ent.dmg_init matches 1.. store result score @s ent.dmg_init run attribute @s generic.attack_damage base get

scoreboard players reset avg temp
scoreboard players operation avg temp += @a ply.prestiges
execute store result score ply_count temp run execute if entity @a
scoreboard players operation avg temp /= ply_count temp
scoreboard players add avg temp 20

execute as @e[type=#mob,type=!player,tag=,scores={ent.hp_init=1..,ent.dmg_init=1..},predicate=dimension/overworld] unless score @s ent.scaled = avg temp run function global:prestiges/scale/entity
