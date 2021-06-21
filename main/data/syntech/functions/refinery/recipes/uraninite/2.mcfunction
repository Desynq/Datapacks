playsound block.anvil.use master @a
particle smoke ~ ~1 ~ 0.2 0.2 0.2 0 10 force

execute store result score @s i0 run data get entity @s Items[{Slot:0b}].Count
execute store result score @s i1 run data get entity @s Items[{Slot:1b}].Count
execute store result entity @s Items[{Slot:0b}].Count byte 1 run scoreboard players remove @s i0 2
execute store result entity @s Items[{Slot:1b}].Count byte 1 run scoreboard players remove @s i1 1

scoreboard players set limit rng 10
function math:rng
execute if score output rng matches 0 run item replace entity @s container.3 with white_dye{CustomModelData:16,type:uranium_235,Tags:["radioactive"],display:{Name:'{"italic":"false","color":"dark_green","text":"Uranium 235"}'}}
execute if score output rng matches 1.. run item replace entity @s container.3 with white_dye{CustomModelData:15,type:uranium_238,Tags:["radioactive"],display:{Name:'{"italic":"false","text":"Uranium 238"}'}}

scoreboard players set limit rng 3
function math:rng
execute if score output rng matches 0 run item replace entity @s container.4 with cobblestone
execute if score output rng matches 1 run item replace entity @s container.4 with emerald
