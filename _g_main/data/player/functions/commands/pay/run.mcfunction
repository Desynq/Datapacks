execute if score @s pay matches 1.. if score @s slime >= @s pay run function player:commands/pay/valid



execute unless score @s pay matches 0.. run tellraw @s {"color":"red","text":"You can't steal from somebody without consent!"}
execute if score @s pay matches 0 run tellraw @s {"color":"red","text":"No spam-mailing allowed!"}

execute if score @s pay matches 1.. unless score @s slime >= @s pay run tellraw @s ["",{"color":"red","text":"Sorry, "},{"selector":"@s"},{"color":"red","text":", I can't give credit."}]



execute if score @s pay matches -2147483648..2147483647 run scoreboard players reset @s pay
