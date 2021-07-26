clear @s leather_helmet{type:temp.clothing} 1


loot spawn ~ ~ ~ loot custom:clothing/helmet
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_helmet",tag:{type:clothing,fromLootTable:"clothing"}}}] run function slime:clothing/data
