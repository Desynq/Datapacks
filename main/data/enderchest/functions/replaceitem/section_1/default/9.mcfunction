execute in overworld run replaceitem block 0 0 1 container.0 green_stained_glass{type:buy_stat,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"dark_green","text":"Buy Attribute"}',Lore:['""']}}

scoreboard players set 100 math 100
execute store result score a temp run scoreboard players operation 100 math *= @s ply.lvl
scoreboard players set 100 math 100

tag @s add temp
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"$"},{"score":{"name":"a","objective":"temp"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
tag @s remove temp

execute in overworld run loot replace entity @s enderchest.9 1 mine 0 0 1 air{drop_contents:true}