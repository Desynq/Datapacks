particle smoke ~ ~ ~ .1 .1 .1 0 10 force @a[distance=..128]

execute positioned ~ ~.8 ~ as @e[distance=..1,type=#mob,type=!player,nbt={HurtTime:0s}] at @s run function coas:anti-material_rifle/damage_mob
execute positioned ~ ~-.8 ~ as @e[distance=..1,type=#mob,type=!player,nbt={HurtTime:0s}] at @s run function coas:anti-material_rifle/damage_mob

execute positioned ~ ~.8 ~ at @a[distance=..1,gamemode=!spectator] unless score @p list = @s list run effect give @p instant_damage 1 3 true
execute positioned ~ ~-.8 ~ at @a[distance=..1,gamemode=!spectator] unless score @p list = @s list run effect give @p instant_damage 1 3 true

scoreboard players add @s despawn.timer 1

execute if block ~ ~ ~ netherite_block run scoreboard players set @s despawn.timer 200
execute if block ~ ~ ~ bedrock run scoreboard players set @s despawn.timer 200
execute if block ~ ~ ~ black_stained_glass run scoreboard players set @s despawn.timer 200
execute if block ~ ~ ~ black_stained_glass_pane run scoreboard players set @s despawn.timer 200

execute unless entity @s[scores={despawn.timer=200..}] positioned ^ ^ ^1 run function coas:anti-material_rifle/bullet2
scoreboard players reset @s[scores={despawn.timer=200..}] despawn.timer