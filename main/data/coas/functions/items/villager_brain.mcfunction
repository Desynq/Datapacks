playsound entity.player.burp master @a ~ ~ ~ 4

scoreboard players reset @s necronoma
tellraw @s[tag=!necronoma] {"italic":"true","color":"dark_green","text":"God, that tasted awful"}
effect give @s[tag=!necronoma] nausea 30 0 true
tellraw @s[tag=necronoma] {"italic":"true","color":"dark_red","text":"More..."}

replaceitem entity @s weapon.mainhand air