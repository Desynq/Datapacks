execute as @a run tellraw @p ["",{"color":"gray","text":"|> "},{"selector":"@s","hoverEvent":{"action":"show_text","contents":{"color":"dark_aqua","score":{"name":"@s","objective":"list"}}},"clickEvent":{"action":"suggest_command","value":"/trigger pln_forward set "}}]

scoreboard players set @s pln_show 0