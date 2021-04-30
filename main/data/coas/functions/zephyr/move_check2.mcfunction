scoreboard players remove zephyr temp 1

execute if block ~ ~-.1 ~ #transparent if block ~ ~ ~ #transparent if block ~ ~1 ~ #transparent if block ~ ~1.5 ~ #transparent if block ^-.2 ^ ^ #transparent if block ^.2 ^ ^ #transparent run scoreboard players add @s move.zephyr 1

execute if score zephyr temp matches 1.. positioned ^ ^ ^.01 run function coas:zephyr/move_check2