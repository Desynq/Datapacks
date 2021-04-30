loot give @s mine ~ ~ ~ mainhand

execute at @s run playsound block.stone.break master @a ~ ~ ~ .5
execute at @s run playsound entity.item.pickup master @a ~ ~ ~ .5
execute at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ .1

setblock ~ ~ ~ air

scoreboard players set @s ray.timer 20