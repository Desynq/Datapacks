execute as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID run data modify storage minecraft:player data set from entity @s data



## Bow with Piercing
execute if entity @s[predicate=minecraft:equipment/mainhand/bow,predicate=minecraft:equipment/mainhand/enchantment/piercing] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/piercing



## Crossbow with Power
execute if entity @s[predicate=minecraft:equipment/mainhand/crossbow,predicate=minecraft:equipment/mainhand/enchantment/power] run function entity:arrow/apply/power





execute unless data entity @e[type=#arrows,tag=selectorArrow,limit=1] CustomPotionEffects run function entity:arrow/apply/player/custom_effect
