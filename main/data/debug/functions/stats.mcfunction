# Attack Damage = +1
# Attack Speed = +0.2
# Max Health = +2.0
# Movement Speed = +0.01
# Luck = +2.0

execute as @a unless score @s stat.damage matches 0.. run scoreboard players set @s stat.damage 0
execute as @a unless score @s stat.swing matches 0.. run scoreboard players set @s stat.swing 0
execute as @a unless score @s stat.health matches 0.. run scoreboard players set @s stat.health 0
execute as @a unless score @s stat.speed matches 0.. run scoreboard players set @s stat.speed 0
execute as @a unless score @s stat.luck matches 0.. run scoreboard players set @s stat.luck 0

execute as @a run function debug:stats/damage
execute as @a run function debug:stats/swing
execute as @a run function debug:stats/health
execute unless entity @e[type=armor_stand,tag=scp106] as @a run function debug:stats/speed
execute as @a run function debug:stats/luck