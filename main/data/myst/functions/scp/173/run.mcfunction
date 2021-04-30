bossbar set blink players @a
execute unless entity @a[tag=173] run bossbar set blink visible false
execute if entity @a[tag=173] run bossbar set blink visible true

execute store result bossbar blink value run scoreboard players add blink timer 1

execute as @a[tag=173] at @s run function myst:scp/173/handler

execute if score blink timer matches 1 run bossbar set blink color red
execute if score blink timer matches 90 run bossbar set blink color white
execute if score blink timer matches 90 at @a[tag=173] run effect give @a[gamemode=adventure,tag=!173,tag=!scp,distance=..64] blindness 2 0 true
execute if score blink timer matches 100.. store result bossbar blink value run scoreboard players set blink timer 0