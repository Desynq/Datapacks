execute in overworld run item replace block 0 0 1 container.0 with rabbit_foot{Tags:["custom"],type:stat_luck,display:{Name:'{"italic":"false","color":"green","text":"Luck (+2)"}',Lore:['""']}}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.luck"}},"/50"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
execute in overworld run item replace entity @s enderchest.5 from block 0 0 1 container.0
