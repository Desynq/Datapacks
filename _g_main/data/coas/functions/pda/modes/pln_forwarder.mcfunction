playsound block.stone_button.on master @a ~ ~ ~ 1 1.25
scoreboard players add @s pln_forward 1

execute if score @s pln_forward > # list run playsound block.stone_button.off master @a ~ ~ ~ 1 .75
execute if score @s pln_forward > # list run scoreboard players reset @s pln_forward