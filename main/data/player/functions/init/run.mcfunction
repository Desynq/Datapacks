execute unless score @s plyUUID matches -2147483648..2147483647 store result score @s plyUUID run data get entity @s UUID[0]
execute unless entity @s[scores={list=1..}] run function player:scoreboards/uuid/list






scoreboard players set %result global 0
execute as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID run scoreboard players set %result global 1

execute if score %result global matches 0 run function player:init/player_storage/summon






execute if score @s droppedItem matches 1.. run advancement grant @s only debug:inventory_changed



#############
# Attributes
#############

data modify storage minecraft:attributes Attributes set from entity @s Attributes



execute if score @s damage matches 1.. if data storage minecraft:attributes Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"random_crit"}] run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 2147483647 2



# random_crit
attribute @s generic.attack_damage modifier remove 0-0-0-0-0

# clownfish necklace slot0
attribute @s generic.luck modifier remove 0-0-0-0-1

# clownfish necklace slot1
attribute @s generic.luck modifier remove 0-0-0-0-2

# warriors_adrenaline
attribute @s generic.attack_damage modifier remove 0-0-0-0-4



################
# Miscellaneous
################



execute if entity @s[tag=zapped] run tag @s remove zapped

execute if score @s diedFrom matches 1.. run scoreboard players reset @s diedFrom
execute unless score @s insulation matches 0 run scoreboard players set @s insulation 0
