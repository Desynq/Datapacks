effect give @s nausea 10 0 true
tp -126 69 -43
playsound entity.generic.explode master @s ~ ~ ~ 2147483647

scoreboard players reset @s elevator.timer
tag @s remove elevator.storage_bay