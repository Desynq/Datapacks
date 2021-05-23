#
# Gamerules
#

scoreboard players set ran temp 0
execute if entity @a[predicate=dimension/cmp] store success score ran temp run gamerule doMobSpawning false
execute if score ran temp matches 0 run gamerule doMobSpawning true

execute unless entity @a run gamerule doDaylightCycle false
execute if entity @a if score doDaylightCycle gamerule matches 1 run gamerule doDaylightCycle true
execute if entity @a if score doDaylightCycle gamerule matches 0 run gamerule doDaylightCycle false



#
# Time
#

	execute store result score daytime timer run time query daytime
	execute if score 20 tick matches 20 store result score day timer store result score day temp run time query day
	execute if score 20 tick matches 20 store result score moonPhase boolean run scoreboard players operation day temp %= 8 math

	execute if score 20 tick matches 20 run scoreboard players operation @a ply.moonPhase = moonPhase boolean
	execute if score 20 tick matches 20 run scoreboard players operation @a ply.daytime = daytime timer



	execute if score daytime timer matches 100 run function global:time/equation/start
	execute if score daytime timer matches 100..700 if score a daily_equation matches 0.. run function global:time/equation/run
	execute if score daytime timer matches 701 if score a daily_equation matches 0.. run function global:time/equation/end
	execute unless score a daily_equation matches 0.. as @a unless score @s answer matches ..-1 unless score @s answer matches 0.. run scoreboard players reset @s answer



	execute if score daytime timer matches 13000 if score moonPhase boolean matches 0 run function global:time/full_moon/start

	execute if score daytime timer matches 13000..22999 if score moonPhase boolean matches 0 run function global:time/full_moon/run

	execute if score daytime timer matches 23000 if score moonPhase boolean matches 0 run function global:time/full_moon/end

	execute if score daytime timer matches 0 run function global:time/new_day



#
# Runtime
#

	#function global:prestiges/scale/run

	function global:events/run

	execute if score stopwatch timer matches 1.. run scoreboard players remove stopwatch timer 1



#
# Cleanup
#

	execute if score 20 tick matches 20 store result score count temp run execute if entity @e[type=item,tag=,predicate=dimension/overworld]
	execute if score 20 tick matches 20 if score count temp matches 256.. run tellraw @a {"color":"yellow","text":"|> Clearing unnecessary items..."}
	execute if score 20 tick matches 20 if score count temp matches 256.. as @e[type=item,tag=,predicate=dimension/overworld] unless data entity @s Thrower at @s unless entity @a[gamemode=!spectator,distance=..8] run kill @s
