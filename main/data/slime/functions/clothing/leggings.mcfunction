clear @s leather_leggings{type:temp.clothing} 1


loot spawn ~ ~ ~ loot custom:clothing/leggings
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_leggings",tag:{type:clothing,fromLootTable:"clothing"}}}] run function slime:clothing/data
