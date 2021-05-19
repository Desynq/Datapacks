# Attack Damage = 1
# Attack Speed = 0.2
# Max Health = 2.0 or 4.0
# Movement Speed = 0.01
# Luck = 2.0

execute unless score @s stat.damage matches 0.. run scoreboard players set @s stat.damage 0
execute unless score @s stat.swing matches 0.. run scoreboard players set @s stat.swing 0
execute unless score @s stat.health matches 0.. run scoreboard players set @s stat.health 0
execute unless score @s stat.speed matches 0.. run scoreboard players set @s stat.speed 0
execute unless score @s stat.luck matches 0.. run scoreboard players set @s stat.luck 0

function debug:stats/damage
function debug:stats/swing
execute unless score @s race matches 3 run function debug:stats/health
execute if score @s race matches 3 run function debug:stats/health_sludge
execute unless entity @e[type=armor_stand,tag=scp106,distance=0..] run function debug:stats/speed
function debug:stats/luck
