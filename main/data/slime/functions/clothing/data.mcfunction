data merge entity @s {PickupDelay:0,Motion:[0.0d,0.0d,0.0d]}
data modify entity @s Owner set from entity @p UUID


scoreboard players set limit rng 2147483647
function math:rng
execute store result entity @s Item.tag.display.color int 1 run scoreboard players get x rng

data remove entity @s Item.tag.fromLootTable
