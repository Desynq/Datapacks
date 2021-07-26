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




execute if entity @s[advancements={minecraft:races/bloodborne/1=true},predicate=minecraft:race/bloodborne] run attribute @s minecraft:generic.knockback_resistance base set 1








execute store success score ran temp if entity @s[predicate=race/parasite,scores={parasite=1..}] unless score @s parasite = @s list at @a if score @s parasite = @p list run function debug:stats/parasite
execute if predicate race/parasite unless score ran temp matches 1 run function debug:stats/parasite_fail


function debug:stats/damage


execute unless predicate race/arthropod run function debug:stats/swing
execute if predicate race/arthropod run function debug:stats/swing_arthropod

execute unless predicate race/sludge run function debug:stats/health
execute if predicate race/sludge run function debug:stats/health_sludge

execute unless entity @e[type=armor_stand,tag=scp106,distance=0..] run function debug:stats/speed

execute unless predicate race/flora run function debug:stats/luck
execute if predicate race/flora run function debug:stats/luck_flora
