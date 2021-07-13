
#display and reset
	function enderchest:display/section_1/default/0

#attack damage
	execute if entity @s[predicate=!race/parasite] run function enderchest:display/section_1/default/1

#attack speed
	execute if entity @s[predicate=!race/parasite,predicate=!race/bloodborne,predicate=!race/arthropod] run function enderchest:display/section_1/default/2
	execute if entity @s[predicate=race/arthropod] run function enderchest:display/section_1/arthropod/2

	execute if entity @s[predicate=race/bloodborne] run function enderchest:display/section_1/locked/2

#max health
	execute if entity @s[predicate=!race/parasite,predicate=!race/sludge,predicate=!race/bloodborne] run function enderchest:display/section_1/default/3
	execute if entity @s[predicate=race/sludge] run function enderchest:display/section_1/sludge/3

	execute if entity @s[predicate=race/bloodborne] run function enderchest:display/section_1/locked/3

#movement speed
	execute if entity @s[predicate=!race/parasite] run function enderchest:display/section_1/default/4

#luck
	execute if entity @s[predicate=!race/parasite,predicate=!race/flora] run function enderchest:display/section_1/default/5
	execute if entity @s[predicate=race/flora] run function enderchest:display/section_1/flora/5



execute if predicate race/parasite run function enderchest:display/section_1/parasite/1-5

item replace entity @s enderchest.6 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.7 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.8 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}



#buying
	function enderchest:display/section_1/default/9

item replace entity @s enderchest.10 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.11 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.12 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.13 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.14 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.15 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.16 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.17 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}



item replace entity @s enderchest.18 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.19 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.20 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.21 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.22 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.23 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
item replace entity @s enderchest.24 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}

item replace entity @s enderchest.25 with blue_stained_glass_pane{Tags:["buyable"],type:main_menu,display:{Name:'{"italic":"false","color":"gold","text":"Main Menu"}'}}

item replace entity @s enderchest.26 with red_stained_glass_pane{Tags:["buyable"],display:{Name:'""'}}
