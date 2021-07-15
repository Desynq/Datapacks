execute in minecraft:overworld run item replace block 0 0 1 container.0 with green_stained_glass{type:buy_stat,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"dark_green","text":"Buy Attribute"}',Lore:['""']}}

scoreboard players set 50 math 50
execute store result score a temp run scoreboard players operation 50 math *= @s ply.lvl
scoreboard players set 50 math 50

tag @s add temp
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"$"},{"score":{"name":"a","objective":"temp"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
tag @s remove temp

execute in minecraft:overworld run item replace entity @s enderchest.9 from block 0 0 1 container.0
