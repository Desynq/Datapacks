loot give @s mine ^ ^ ^ mainhand

execute at @s anchored eyes run playsound block.stone.break voice @a ^ ^ ^ .5
execute at @s anchored eyes run playsound entity.item.pickup voice @a ^ ^ ^ .5

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle barrier ~ ~ ~ 0 0 0 0 1 force @a[scores={lowDetailMode=0}]

setblock ^ ^ ^ air

scoreboard players set @s ray.timer 20
