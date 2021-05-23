
#display and reset
	function enderchest:replaceitem/section_1/default/0

#attack damage
	execute if entity @s[predicate=!race/parasite] run function enderchest:replaceitem/section_1/default/1

#attack speed
	execute if entity @s[predicate=!race/parasite,predicate=!race/bloodborne,predicate=!race/arthropod] run function enderchest:replaceitem/section_1/default/2

	execute if entity @s[predicate=race/bloodborne] run function enderchest:replaceitem/section_1/locked/2
	execute if entity @s[predicate=race/arthropod] run function enderchest:replaceitem/section_1/locked/2

#max health
	execute if entity @s[predicate=!race/parasite,predicate=!race/sludge,predicate=!race/bloodborne] run function enderchest:replaceitem/section_1/default/3
	execute if entity @s[predicate=race/sludge] run function enderchest:replaceitem/section_1/sludge/3

	execute if entity @s[predicate=race/bloodborne] run function enderchest:replaceitem/section_1/locked/3

#movement speed
	execute if entity @s[predicate=!race/parasite] run function enderchest:replaceitem/section_1/default/4

#luck
	execute if entity @s[predicate=!race/parasite,predicate=!race/flora] run function enderchest:replaceitem/section_1/default/5
	execute if entity @s[predicate=race/flora] run function enderchest:replaceitem/section_1/flora/5



execute if predicate race/parasite run function enderchest:replaceitem/section_1/parasite/1-5

replaceitem entity @s enderchest.6 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.7 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
replaceitem entity @s enderchest.8 red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}



#buying
	function enderchest:replaceitem/section_1/default/9

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