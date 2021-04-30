execute store result score daytime timer run time query daytime
execute if score 20 tick matches 20 store result score day timer store result score day temp run time query day
execute if score 20 tick matches 20 store result score moonPhase boolean run scoreboard players operation day temp %= 8 math



execute if score daytime timer matches 0 run function debug:time/equation/start
execute if score daytime timer matches 0..600 if score a daily_equation matches 0.. run function debug:time/equation/run
execute if score daytime timer matches 601 if score a daily_equation matches 0.. run function debug:time/equation/end
execute unless score a daily_equation matches 0.. as @a unless score @s answer matches ..-1 unless score @s answer matches 0.. run scoreboard players reset @s answer



execute if score daytime timer matches 13000 if score moonPhase boolean matches 0 run tellraw @a {"color":"dark_purple","italic":"true","text":"The Full Moon has risen"}
execute if score daytime timer matches 13000 if score moonPhase boolean matches 0 run playsound entity.wither.spawn master @a ~ ~ ~ 2147843647 0.75

execute if score daytime timer matches 23000 if score moonPhase boolean matches 0 run tellraw @a {"color":"dark_purple","italic":"true","text":"The Full Moon has fallen"}
execute if score daytime timer matches 23000 if score moonPhase boolean matches 0 run playsound entity.zombie_villager.converted master @a ~ ~ ~ 2147843647 1