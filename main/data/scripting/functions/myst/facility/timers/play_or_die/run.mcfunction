bossbar set pigstep players @a

execute store result bossbar pigstep value run scoreboard players add s1.pigstep myst 1

execute if score s1.pigstep myst matches 2500.. run summon item -115 20 31 {PickupDelay:20,Item:{id:stone,Count:1},Tags:["temp"],Invulnerable:1b}
execute if score s1.pigstep myst matches 2500.. run data modify entity @e[type=item,tag=temp,limit=1] Item set from block -115 19 31 RecordItem
execute if score s1.pigstep myst matches 2500.. run setblock -115 19 31 jukebox
execute if score s1.pigstep myst matches 2500.. run stopsound @a record music_disc.pigstep
execute if score s1.pigstep myst matches 2500.. run scoreboard players reset s1.pigstep myst
