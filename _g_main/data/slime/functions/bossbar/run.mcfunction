### Init ###

	bossbar set custom:boss players @a
	bossbar set minecraft:fuse players @a

### Visibility ###

	execute store success score %bool global run execute if entity @e[type=#mob,type=!wither,tag=boss]

	execute if score %bool global matches 1 run bossbar set custom:boss visible true
	execute if score %bool global matches 0 run bossbar set custom:boss visible false



### I don't know why this works ###

	execute unless entity @e[type=#mob,type=!wither,tag=boss,tag=bossbar] run tag @e[type=#mob,tag=boss,tag=!bossbar,limit=1] add bossbar

	execute if entity @e[type=#mob,type=!wither,tag=boss,nbt=!{HurtTime:0s}] run tag @e[type=#mob,tag=boss,tag=bossbar] remove bossbar

	tag @e[type=#mob,type=!wither,tag=boss,nbt=!{HurtTime:0s}] add bossbar


### Run ###

	execute as @e[type=#mob,type=!wither,tag=bossbar,limit=1] at @s run function slime:bossbar/run2






### Bomb ###

	execute store success score %bool global run execute if entity @e[type=tnt,tag=bomb]

	execute if score %bool global matches 1 run bossbar set minecraft:fuse visible true
	execute if score %bool global matches 0 run bossbar set minecraft:fuse visible false

	execute store result bossbar minecraft:fuse value run data get entity @e[type=tnt,tag=bomb,limit=1] Fuse 1
