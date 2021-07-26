scoreboard players operation @s pln_forward = @a[tag=selectorA,limit=1] list



execute if entity @a[tag=selectorA] run tellraw @s ["",{"color":"green","text":"|> Your PLN-dependent commands will now target "},{"selector":"@a[tag=selectorA]"}]



tag @a remove selectorA
