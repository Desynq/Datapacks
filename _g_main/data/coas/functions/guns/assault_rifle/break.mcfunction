playsound item.shield.break master @a ~ ~ ~ 4
clear @s carrot_on_a_stick{type:assault_rifle} 1
scoreboard players reset @s d.ar

execute if entity @s[scores={m.ar=1..}] run function coas:guns/assault_rifle/unload