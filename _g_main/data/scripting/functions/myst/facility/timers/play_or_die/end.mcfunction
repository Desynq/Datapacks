summon item ~ ~1 ~ {Tags:["temp"],Invulnerable:true,PickupDelay:20,Item:{id:"minecraft:stone",Count:1}}
data modify entity @e[type=minecraft:item,tag=temp,limit=1] Item set from block ~ ~ ~ RecordItem
execute as @e[type=item,tag=temp] run tag @s remove temp
setblock ~ ~ ~ minecraft:jukebox


stopsound @a[distance=0..] record minecraft:music_disc.pigstep



scoreboard players reset s1.pigstep myst
