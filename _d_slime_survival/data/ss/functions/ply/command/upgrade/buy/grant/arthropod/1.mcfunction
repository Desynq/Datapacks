advancement grant @s only ss:race/arthropod/1

tellraw @s ["",{"color":"dark_green","text":"Purchased: "},"Ensnaring Arrows"]



tellraw @s ["",{"color":"red","text":"- $"},{"color":"red","score":{"name":"%cost","objective":"temp"}}]
scoreboard players operation @s slime -= %cost temp
