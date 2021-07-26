tellraw @s ["",{"color":"yellow","text":"|> Paying "},{"selector":"@p"}," ",{"color":"dark_green","score":{"objective":"pay","name":"@s"}}]

tellraw @p ["",{"selector":"@s"},{"color":"yellow","text":" paid you "},{"color":"dark_green","score":{"objective":"pay","name":"@s"}}]



scoreboard players operation @p slime += @s pay
scoreboard players operation @s slime -= @s pay
