function coas:zephyr/move_check

execute if score @s move.zephyr matches 100 run xp add @s -5 points
execute if score @s move.zephyr matches 100 run playsound entity.bat.takeoff master @a[distance=0..] ~ ~ ~ 4 1
execute if score @s move.zephyr matches 100 run function coas:zephyr/dash

scoreboard players reset @s move.zephyr