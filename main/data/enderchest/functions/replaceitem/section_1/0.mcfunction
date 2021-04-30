
execute in overworld run replaceitem block 0 0 1 container.0 iron_sword{Tags:["custom"],type:stat_damage,display:{Name:'{"italic":"false","color":"gray","text":"Attack Damage (+1)"}',Lore:['""']},AttributeModifiers:[]}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.damage"}},"/100"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.1 1 mine 0 0 1 air{drop_contents:true}



execute in overworld run replaceitem block 0 0 1 container.0 golden_pickaxe{Tags:["custom"],type:stat_swing,display:{Name:'{"italic":"false","color":"yellow","text":"Attack Speed (+0.2)"}',Lore:['""']},AttributeModifiers:[]}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.swing"}},"/100"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.2 1 mine 0 0 1 air{drop_contents:true}



execute in overworld run replaceitem block 0 0 1 container.0 apple{Tags:["custom"],type:stat_health,display:{Name:'{"italic":"false","color":"red","text":"Max Health (+2)"}',Lore:['""']}}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.health"}},"/100"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.3 1 mine 0 0 1 air{drop_contents:true}



execute in overworld run replaceitem block 0 0 1 container.0 iron_boots{Tags:["custom"],type:stat_speed,display:{Name:'{"italic":"false","color":"aqua","text":"Movement Speed (+0.01)"}',Lore:['""']},AttributeModifiers:[]}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.speed"}},"/50"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.4 1 mine 0 0 1 air{drop_contents:true}



execute in overworld run replaceitem block 0 0 1 container.0 rabbit_foot{Tags:["custom"],type:stat_luck,display:{Name:'{"italic":"false","color":"green","text":"Luck (+2)"}',Lore:['""']}}
	tag @s add temp
		execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","score":{"name":"@a[tag=temp]","objective":"stat.luck"}},"/50"]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
	tag @s remove temp
	execute in overworld run loot replace entity @s enderchest.5 1 mine 0 0 1 air{drop_contents:true}


replaceitem entity @s enderchest.6 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.7 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.8 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}



replaceitem entity @s enderchest.10 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.11 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.12 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.13 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.14 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.15 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.16 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.17 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}



replaceitem entity @s enderchest.18 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.19 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.20 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.21 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.22 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.23 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.24 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.25 blue_stained_glass_pane{Tags:["buyable"],type:main_shop,display:{Name:'{"italic":"false","color":"dark_aqua","text":"Main Shop"}'}}
replaceitem entity @s enderchest.26 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}





execute in overworld run replaceitem block 0 0 1 container.0 yellow_stained_glass{type:reset_stats,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"yellow","text":"Attribute Information"}',Lore:['""','""','""','""','""','""']}}

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





execute in overworld run replaceitem block 0 0 1 container.0 green_stained_glass{type:buy_stat,Tags:["custom"],display:{Name:'{"italic":"false","underlined":"true","color":"dark_green","text":"Buy Attribute"}',Lore:['""']}}

scoreboard players set 100 math 100
execute store result score a temp run scoreboard players operation 100 math *= @s ply.lvl
scoreboard players set 100 math 100

tag @s add temp
	execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"dark_aqua","text":"$"},{"score":{"name":"a","objective":"temp"}}]'
		execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1
tag @s remove temp

execute in overworld run loot replace entity @s enderchest.9 1 mine 0 0 1 air{drop_contents:true}