execute store result score @s attr.toughness run attribute @s minecraft:generic.armor_toughness get 1

execute store result score @s attr.damage run attribute @s minecraft:generic.attack_damage get 100

execute store result score @s attr.attackSpeed run attribute @s minecraft:generic.attack_speed get 1000

execute store result score @s attr.kbResist run attribute @s minecraft:generic.knockback_resistance get 1000

execute store result score @s attr.luck run attribute @s minecraft:generic.luck get 1

execute store result score @s attr.maxHealth run attribute @s minecraft:generic.max_health get 1

execute store result score @s attr.moveSpeed run attribute @s minecraft:generic.movement_speed get 1000





scoreboard players set 1000 math 1000


scoreboard players operation @s percentHealth = @s Health
scoreboard players operation @s percentHealth *= 1000 math
scoreboard players operation @s percentHealth /= @s attr.maxHealth
