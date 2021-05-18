execute store result score daytime timer run time query daytime
execute if score 20 tick matches 20 store result score day timer store result score day temp run time query day
execute if score 20 tick matches 20 store result score moonPhase boolean run scoreboard players operation day temp %= 8 math



execute if score daytime timer matches 100 run function global:time/equation/start
execute if score daytime timer matches 100..700 if score a daily_equation matches 0.. run function global:time/equation/run
execute if score daytime timer matches 701 if score a daily_equation matches 0.. run function global:time/equation/end
execute unless score a daily_equation matches 0.. as @a unless score @s answer matches ..-1 unless score @s answer matches 0.. run scoreboard players reset @s answer



execute if score daytime timer matches 13000 if score moonPhase boolean matches 0 run function global:time/full_moon/start

execute if score daytime timer matches 13000..22999 if score moonPhase boolean matches 0 run function global:time/full_moon/run

execute if score daytime timer matches 23000 if score moonPhase boolean matches 0 run function global:time/full_moon/end
