scoreboard players set @s ply.lvl_left 20
execute if entity @s[advancements={challenges/myst/stage_1=true}] run scoreboard players add @s ply.lvl_left 20
execute if entity @s[advancements={challenges/myst/stage_2=true}] run scoreboard players add @s ply.lvl_left 20
execute if entity @s[advancements={challenges/myst/stage_3=true}] run scoreboard players add @s ply.lvl_left 20
execute if entity @s[advancements={challenges/myst/stage_4=true}] run scoreboard players add @s ply.lvl_left 20
execute if score @s ply.lvl_left > @s ply.lvl run scoreboard players operation @s ply.lvl_left = @s ply.lvl



scoreboard players set @s stat.damage 0
scoreboard players set @s stat.health 0
scoreboard players set @s stat.speed 0
scoreboard players set @s stat.swing 0
scoreboard players set @s stat.luck 0

function debug:stats
tag @s add stat_checked
