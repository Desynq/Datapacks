execute store result score @s entOwner run data get entity @s Owner[0] 1
tag @s add selectorA




## Mystite Bow
execute at @a[predicate=equipment/mainhand/bow,predicate=equipment/mainhand/enchantment/piercing] if score @s entOwner = @p plyUUID run function entity:arrow/apply/piercing

## Crossbow
execute if data entity @s Owner as @e[type=#mob,type=!player,predicate=equipment/mainhand/crossbow,predicate=equipment/mainhand/enchantment/power] if score @s entUUID = @e[type=#arrows,tag=selectorA,limit=1] entOwner run function entity:arrow/apply/power
execute if data entity @s Owner as @a[predicate=equipment/mainhand/crossbow,predicate=equipment/mainhand/enchantment/power] if score @s plyUUID = @e[type=#arrows,tag=selectorA,limit=1] entOwner run function entity:arrow/apply/power



## Creep Race
execute at @a[predicate=race/creep,scores={disableUpgrades=0},advancements={races/creep/3=true,races/creep/3/1=false,races/creep/3/1/1=false}] if score @s entOwner = @p plyUUID unless data entity @s CustomPotionEffects run function entity:arrow/apply/demolitionist/tier_1
execute at @a[predicate=race/creep,scores={disableUpgrades=0},advancements={races/creep/3/1=true,races/creep/3/1/1=false}] if score @s entOwner = @p plyUUID unless data entity @s CustomPotionEffects run function entity:arrow/apply/demolitionist/tier_2
execute at @a[predicate=race/creep,scores={disableUpgrades=0},advancements={races/creep/3/1/1=true}] if score @s entOwner = @p plyUUID unless data entity @s CustomPotionEffects run function entity:arrow/apply/demolitionist/tier_3





tag @s add applied
tag @s remove selectorA
