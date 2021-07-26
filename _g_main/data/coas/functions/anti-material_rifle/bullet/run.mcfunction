## Memory
scoreboard players operation list temp = @s entList
scoreboard players operation UUID temp = @s entUUID



## Visuals
particle smoke ^ ^ ^ .1 .1 .1 0 10 force @a[distance=..128]


## Targeting
execute as @e[dx=0,type=#mob,type=!player,nbt=!{Invulnerable:true}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s lastHurtBy = UUID temp at @s run function coas:anti-material_rifle/bullet/damage_mob
execute as @e[dx=0,type=player,gamemode=!spectator] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s list = list temp unless score @s lastHurtBy = UUID temp at @s run function coas:anti-material_rifle/bullet/damage_player



## Timer
scoreboard players add @s despawnTimer 1
execute if block ~ ~ ~ netherite_block run scoreboard players set @s despawnTimer 200



## Looping
execute unless score @s despawnTimer matches 200.. positioned ^ ^ ^1 run function coas:anti-material_rifle/bullet/run
execute if score @s despawnTimer matches 200.. run kill @s
