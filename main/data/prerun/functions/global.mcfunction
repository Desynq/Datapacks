execute if score stopwatch timer matches 1.. run scoreboard players remove stopwatch timer 1



### Day-logging ###

	execute unless entity @a run gamerule doDaylightCycle false
	execute if entity @a if score doDaylightCycle gamerule matches 1 run gamerule doDaylightCycle true
	execute if entity @a if score doDaylightCycle gamerule matches 0 run gamerule doDaylightCycle false

	execute if score daytime timer matches 0 run function prerun:global/new_day



### Con-current ###

	#function prerun:global/prestiges/scale/run
	
	function prerun:global/events/run



### Cleanup ###

	execute if score 20 tick matches 20 store result score count temp run execute if entity @e[type=item,tag=,predicate=dimension/overworld]
	execute if score 20 tick matches 20 if score count temp matches 256.. run tellraw @a {"color":"yellow","text":"|> Clearing unnecessary items..."}
	execute if score 20 tick matches 20 if score count temp matches 256.. as @e[type=item,tag=,predicate=dimension/overworld] unless data entity @s Thrower at @s unless entity @a[gamemode=!spectator,distance=..8] run kill @s