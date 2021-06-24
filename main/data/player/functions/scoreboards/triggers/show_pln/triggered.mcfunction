tellraw @s {"color":"yellow","text":"-----"}

tellraw @s {"color":"dark_aqua","text":"○ To view a player's PLN, hover over their name in the chat"}
tellraw @s {"color":"dark_aqua","text":"○ You can click on a player's name to suggest the command"}

tellraw @s {"color":"yellow","text":"-----"}

execute as @a run tellraw @p ["",{"selector":"@s","hoverEvent":{"action":"show_text","contents":{"color":"dark_aqua","score":{"name":"@s","objective":"list"}}},"clickEvent":{"action":"suggest_command","value":"/trigger pln_forward set "}}]

tellraw @s {"color":"yellow","text":"-----"}



scoreboard players set @s showPLN 0
