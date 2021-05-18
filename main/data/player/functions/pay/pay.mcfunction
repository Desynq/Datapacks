tellraw @s [{"color":"yellow","text":"|> Paying "},{"color":"white","selector":"@p"}," ",{"color":"dark_green","score":{"objective":"pay","name":"@s"}}]

tellraw @p [{"selector":"@s"},{"color":"yellow","text":" paid you "},{"color":"dark_green","score":{"objective":"pay","name":"@s"}}]

execute as @p if entity @s[name=Desynq] run tag @s add dont_pay
scoreboard players operation @p slime += @s pay
execute at @s as @a[tag=dont_pay] run scoreboard players operation @s slime -= @p pay
scoreboard players operation @s slime -= @s pay
tag @p remove dont_pay