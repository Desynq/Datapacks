tellraw @s {"color":"yellow","text":"----------------"}







tellraw @s ""
data modify storage local:upgrades upgrade set from storage local:upgrades race.2
execute if entity @s[advancements={minecraft:races/sludge/2=false}] run tellraw @s {"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 2"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}
execute if entity @s[advancements={minecraft:races/sludge/2=true}] run tellraw @s {"strikethrough":true,"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 2"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}



tellraw @s ""
data modify storage local:upgrades upgrade set from storage local:upgrades race.3
execute if entity @s[advancements={minecraft:races/sludge/3=false}] run tellraw @s {"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 3"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}
execute if entity @s[advancements={minecraft:races/sludge/3=true}] run tellraw @s {"strikethrough":true,"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 3"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}



tellraw @s ""
data modify storage local:upgrades upgrade set from storage local:upgrades race.4
execute if entity @s[advancements={minecraft:races/sludge/4=false}] run tellraw @s {"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 4"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}
execute if entity @s[advancements={minecraft:races/sludge/4=true}] run tellraw @s {"strikethrough":true,"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 4"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}}



tellraw @s {"color":"yellow","text":"----------------"}
