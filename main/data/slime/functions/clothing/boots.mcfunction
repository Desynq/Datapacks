clear @s leather_boots{type:temp.clothing}


loot spawn ~ ~ ~ loot custom:clothing/boots
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{type:clothing}}}] unless data entity @s Item.tag.display.color run function slime:clothing/data