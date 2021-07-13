### Init ###

	bossbar set bosshp players @a
	bossbar set fuse players @a

### Visibility ###

	execute if entity @e[type=#mob,type=!wither,tag=boss,tag=!fakeboss] run bossbar set bosshp visible true
	execute unless entity @e[type=#mob,type=!wither,tag=boss,tag=!fakeboss] run bossbar set bosshp visible false



### I don't know why this works ###

	execute unless entity @e[type=#mob,type=!wither,tag=boss,tag=bossbar] run tag @e[type=#mob,tag=boss,tag=!bossbar,limit=1] add bossbar
	execute if entity @e[type=#mob,type=!wither,tag=boss,tag=!fakeboss,nbt=!{HurtTime:0s}] run tag @e[type=#mob,tag=boss,tag=!fakeboss,tag=bossbar] remove bossbar
	tag @e[type=#mob,type=!wither,tag=boss,tag=!fakeboss,nbt=!{HurtTime:0s}] add bossbar


### Run ###

	execute as @e[type=#mob,type=!wither,tag=bossbar,limit=1] at @s run function slime:bossbar/run2






### Bomb ###

	execute if entity @e[type=tnt,tag=bomb] run bossbar set fuse visible true
	execute unless entity @e[type=tnt,tag=bomb] run bossbar set fuse visible false

	execute store result bossbar fuse value run data get entity @e[type=tnt,tag=bomb,limit=1] Fuse
