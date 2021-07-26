clear @s leather_chestplate{type:temp.clothing} 1


loot spawn ~ ~ ~ loot custom:clothing/chestplate
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate",tag:{type:clothing,fromLootTable:"clothing"}}}] run function slime:clothing/data
