playsound block.anvil.use master @a
particle smoke ~ ~1 ~ 0.2 0.2 0.2 0 10 force

execute store result score @s i0 run data get entity @s Items[{Slot:0b}].Count
execute store result score @s i1 run data get entity @s Items[{Slot:1b}].Count
execute store result entity @s Items[{Slot:0b}].Count byte 1 run scoreboard players remove @s i0 2
execute store result entity @s Items[{Slot:1b}].Count byte 1 run scoreboard players remove @s i1 1

item replace entity @s container.3 with white_dye{CustomModelData:16,type:uranium_235,Tags:["radioactive"],display:{Name:'{"italic":"false","color":"dark_green","text":"Uranium 235"}'}} 2
item replace entity @s container.4 with lava_bucket{type:nuclear_waste,Tags:["radioactive"],display:{Name:'{"italic":"false","text":"Nuclear Waste"}'}}
