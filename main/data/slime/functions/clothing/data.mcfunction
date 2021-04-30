scoreboard players set limit rng 2147483647
function debug:rng/run

execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{type:clothing}}}] unless data entity @s Item.tag.display.color run data merge entity @s {PickupDelay:0,Motion:[0.0d,0.0d,0.0d]}
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{type:clothing}}}] unless data entity @s Item.tag.display.color run data modify entity @s Owner set from entity @p UUID
execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{type:clothing}}}] unless data entity @s Item.tag.display.color store result entity @s Item.tag.display.color int 1 run scoreboard players get x rng