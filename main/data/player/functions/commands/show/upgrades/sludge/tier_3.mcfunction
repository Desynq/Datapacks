tellraw @s {"color":"yellow","text":"----------------"}



data modify storage local:upgrades upgrade set from storage local:upgrades race.321
tellraw @s ["",{"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"hoverEvent":{"action":"show_text","contents":{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":"true"}}},{"color":"green","text":" ["},{"color":"blue","text":"Buy","clickEvent":{"action":"suggest_command","value":"/upgrade buy 321"},"hoverEvent":{"action":"show_text","contents":{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}}},{"color":"green","text":"]"}]
tellraw @s ["",{"color":"gold","text":"Requires:\n"},{"color":"gray","storage":"local:upgrades","nbt":"upgrade[3]","interpret":true}]



tellraw @s {"color":"yellow","text":"----------------"}
