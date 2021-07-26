execute in minecraft:overworld run item replace block 0 0 1 container.0 with yellow_stained_glass{type:reset_stats,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"yellow","text":"Attribute Information"}',Lore:['""','""','""','""','""','""','{"italic":"false","color":"dark_green","text":"Shift-Click To Reset Attributes"}']}}

tag @s add temp
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"white","text":""},{"color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"ply.lvl_left"}}," / ",{"color":"gold","score":{"name":"@a[tag=temp]","objective":"ply.lvl_max"}}," | ",{"color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"ply.lvl"}}," / ",{"color":"dark_gray","text":"100"}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	
	
	
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Attack Damage: "},{"score":{"name":"@a[tag=temp]","objective":"stat.damage"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[1] set from block 0 0 0 Text1
		
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Attack Speed: "},{"score":{"name":"@a[tag=temp]","objective":"stat.swing"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[2] set from block 0 0 0 Text1
		
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Max Health: "},{"score":{"name":"@a[tag=temp]","objective":"stat.health"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[3] set from block 0 0 0 Text1
		
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Movement Speed: "},{"score":{"name":"@a[tag=temp]","objective":"stat.speed"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[4] set from block 0 0 0 Text1
		
	execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Luck: "},{"score":{"name":"@a[tag=temp]","objective":"stat.luck"}}]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[5] set from block 0 0 0 Text1
tag @s remove temp

execute in minecraft:overworld run item replace entity @s enderchest.0 from block 0 0 1 container.0
