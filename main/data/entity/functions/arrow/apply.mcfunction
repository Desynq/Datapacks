execute unless score @s entOwner matches -2147483648..2147483647 store result score @s entOwner run data get entity @s Owner[0] 1
tag @s add selectorArrow



execute if data entity @s Owner at @a if score @s entOwner = @p plyUUID as @p run function entity:arrow/apply/player/run

execute if data entity @s Owner as @e[type=#mob,type=!player,predicate=equipment/mainhand/crossbow,predicate=equipment/mainhand/enchantment/power] if score @s entUUID = @e[type=#arrows,tag=selectorArrow,limit=1] entOwner run function entity:arrow/apply/power






tag @s add applied
tag @s remove selectorArrow
