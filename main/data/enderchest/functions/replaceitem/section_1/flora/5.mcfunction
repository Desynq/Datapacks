execute in overworld run replaceitem block 0 0 1 container.0 rabbit_foot{Tags:["custom"],type:stat_luck,display:{Name:'{"italic":"false","color":"green","text":"Luck (+4)"}',Lore:['""']}}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.luck"}},"/25"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.5 1 mine 0 0 1 air{drop_contents:true}