scoreboard players enable @s pay
execute if entity @s[scores={pay=1..,pln_forward=1..}] at @a if score @s slime >= @s pay if score @s pln_forward = @p list run function player:pay/pay

execute unless entity @s[scores={pay=0}] run scoreboard players set @s pay 0