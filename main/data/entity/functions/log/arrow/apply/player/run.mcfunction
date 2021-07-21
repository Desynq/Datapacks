execute as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID run data modify storage minecraft:player data set from entity @s data



## Bow with Piercing
execute if entity @s[predicate=entity:equipment/mainhand/bow,predicate=entity:equipment/mainhand/enchantment/piercing] as @e[type=#arrows,tag=selectorArrow] run function entity:log/arrow/apply/piercing



## Crossbow with Power
execute if entity @s[predicate=entity:equipment/mainhand/crossbow,predicate=entity:equipment/mainhand/enchantment/power] run function entity:log/arrow/apply/power





execute unless data entity @e[type=#arrows,tag=selectorArrow,limit=1] CustomPotionEffects run function entity:log/arrow/apply/player/custom_effect
