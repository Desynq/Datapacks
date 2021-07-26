execute if data storage minecraft:inventory baubles[{Slot:0b}].tag{type:"mana_cloak"} run function player:accessories/stackable/mana_cloak/run
execute if data storage minecraft:inventory baubles[{Slot:1b}].tag{type:"mana_cloak"} run function player:accessories/stackable/mana_cloak/run
execute if data storage minecraft:inventory baubles[{Slot:2b}].tag{type:"mana_cloak"} run function player:accessories/stackable/mana_cloak/run



execute if data storage minecraft:inventory baubles[{Slot:0b}].tag{type:"winter_coat"} run scoreboard players add @s insulation 2
execute if data storage minecraft:inventory baubles[{Slot:1b}].tag{type:"winter_coat"} run scoreboard players add @s insulation 2
execute if data storage minecraft:inventory baubles[{Slot:2b}].tag{type:"winter_coat"} run scoreboard players add @s insulation 2

execute if data storage minecraft:inventory baubles[{Slot:0b,id:"minecraft:soul_lantern"}] run scoreboard players remove @s insulation 1
execute if data storage minecraft:inventory baubles[{Slot:1b,id:"minecraft:soul_lantern"}] run scoreboard players remove @s insulation 1
execute if data storage minecraft:inventory baubles[{Slot:2b,id:"minecraft:soul_lantern"}] run scoreboard players remove @s insulation 1
