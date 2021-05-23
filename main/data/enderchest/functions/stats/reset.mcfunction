scoreboard players operation @s ply.lvl_left = @s ply.lvl
execute if entity @s[scores={ply.lvl=81..},advancements={challenges/myst/stage_4=false}] run scoreboard players set @s ply.lvl_left 80
execute if entity @s[scores={ply.lvl=61..},advancements={challenges/myst/stage_3=false}] run scoreboard players set @s ply.lvl_left 60
execute if entity @s[scores={ply.lvl=41..},advancements={challenges/myst/stage_2=false}] run scoreboard players set @s ply.lvl_left 40
execute if entity @s[scores={ply.lvl=21..},advancements={challenges/myst/stage_1=false}] run scoreboard players set @s ply.lvl_left 20

scoreboard players set @s stat.damage 0
scoreboard players set @s stat.health 0
scoreboard players set @s stat.speed 0
scoreboard players set @s stat.swing 0
scoreboard players set @s stat.luck 0

function debug:stats
tag @s add stat_checked
