execute in overworld run replaceitem block 0 0 1 container.0 yellow_stained_glass{type:reset_stats,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"yellow","text":"Attribute Information"}',Lore:['""','""','""','""','""','""','{"italic":"false","color":"dark_green","text":"Shift-Click To Reset Attributes"}']}}

tag @s add temp
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"ply.lvl_left"}},"/",{"score":{"name":"@a[tag=temp]","objective":"ply.lvl"}},"/100"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	
	
	
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Attack Damage: "},{"score":{"name":"@a[tag=temp]","objective":"stat.damage"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[1] set from block 0 0 0 Text1
		
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Attack Speed: "},{"score":{"name":"@a[tag=temp]","objective":"stat.swing"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[2] set from block 0 0 0 Text1
		
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Max Health: "},{"score":{"name":"@a[tag=temp]","objective":"stat.health"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[3] set from block 0 0 0 Text1
		
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Movement Speed: "},{"score":{"name":"@a[tag=temp]","objective":"stat.speed"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[4] set from block 0 0 0 Text1
		
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"Luck: "},{"score":{"name":"@a[tag=temp]","objective":"stat.luck"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[5] set from block 0 0 0 Text1
tag @s remove temp

execute in overworld run loot replace entity @s enderchest.0 1 mine 0 0 1 air{drop_contents:true}