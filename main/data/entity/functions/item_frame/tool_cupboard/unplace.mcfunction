summon item ~ ~ ~ {PickupDelay:10,Item:{id:stone,Count:1},Tags:["placeholder"]}
data modify entity @e[type=item,tag=placeholder,sort=nearest,limit=1] Item set from entity @s Item

kill @s
summon item ~ ~ ~ {PickupDelay:10,Item:{id:item_frame,Count:1}}