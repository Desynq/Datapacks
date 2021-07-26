clear @s leather_boots{type:temp.clothing} 1


loot spawn ~ ~ ~ loot custom:clothing/boots
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_boots",tag:{type:clothing,fromLootTable:"clothing"}}}] run function slime:clothing/data
