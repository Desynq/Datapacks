summon item ~ ~ ~ {Item:{id:stone,Count:1},Tags:["rx12.placeholder"]}
data modify entity @e[type=item,tag=rx12_headgear,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]
tellraw @s [{"color":"dark_red","text":"|> Your gas mask has been torn off!"}]

item replace entity @s armor.head with air
