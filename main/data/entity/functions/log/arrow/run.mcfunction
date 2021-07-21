tag @s add selectorArrow



execute if data entity @s "Owner" at @a if score @s entOwner = @p plyUUID as @p run function entity:log/arrow/apply/player/run

execute if data entity @s {"ShotFromCrossbow":true} if data entity @s "Owner" as @e[type=#mob,type=!player,predicate=entity:equipment/mainhand/crossbow,predicate=entity:equipment/mainhand/enchantment/power] if score @s entUUID = @e[type=#arrows,tag=selectorArrow,limit=1] entOwner run function entity:log/arrow/apply/power






tag @s remove selectorArrow
