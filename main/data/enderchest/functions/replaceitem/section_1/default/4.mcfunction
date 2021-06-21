execute in overworld run item replace block 0 0 1 container.0 with iron_boots{Tags:["custom"],type:stat_speed,display:{Name:'{"italic":"false","color":"aqua","text":"Movement Speed (+0.01)"}',Lore:['""']},AttributeModifiers:[]}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.speed"}},"/50"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
execute in overworld run item replace entity @s enderchest.4 from block 0 0 1 container.0
