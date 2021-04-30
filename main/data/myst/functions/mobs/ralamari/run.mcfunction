scoreboard players add @s despawn.timer 1
scoreboard players add @s temp.timer 1

execute if entity @s[nbt={Glowing:1b}] unless entity @s[scores={temp.timer=5..}] run data merge entity @s {Glowing:0}
execute if entity @s[nbt=!{Glowing:1b},scores={temp.timer=5..}] run data merge entity @s {Glowing:1}

scoreboard players reset @s[scores={temp.timer=10..}] temp.timer

execute if entity @s[scores={despawn.timer=100..}] run function debug:explode/kill_after/small
execute if score @s despawn.timer matches 20 run playsound entity.elder_guardian.curse master @a ~ ~ ~ .5 1.5
execute if score @s despawn.timer matches 40 run playsound entity.elder_guardian.curse master @a ~ ~ ~ .5 1.5
execute if score @s despawn.timer matches 60 run playsound entity.elder_guardian.curse master @a ~ ~ ~ .5 1.5
execute if score @s despawn.timer matches 80 run playsound entity.elder_guardian.curse master @a ~ ~ ~ .5 1.5