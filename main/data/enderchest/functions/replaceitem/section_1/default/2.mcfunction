execute in overworld run replaceitem block 0 0 1 container.0 golden_pickaxe{Tags:["custom"],type:stat_swing,display:{Name:'{"italic":"false","color":"yellow","text":"Attack Speed (+0.2)"}',Lore:['""']},AttributeModifiers:[]}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.swing"}},"/100"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.2 1 mine 0 0 1 air{drop_contents:true}