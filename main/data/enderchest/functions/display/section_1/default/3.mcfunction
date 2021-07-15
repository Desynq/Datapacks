execute in minecraft:overworld run item replace block 0 0 1 container.0 with apple{Tags:["custom"],type:stat_health,display:{Name:'{"italic":"false","color":"red","text":"Max Health (+2)"}',Lore:['""']}}
	tag @s add temp
		execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.health"}},"/100"]'
		execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
execute in minecraft:overworld run item replace entity @s enderchest.3 from block 0 0 1 container.0
