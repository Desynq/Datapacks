#medkit
execute if entity @s[nbt={SelectedItem:{tag:{type:medkit}}}] at @s run function coas:items/medkit

#adrenaline
execute if entity @s[nbt={SelectedItem:{tag:{type:adrenaline}}}] at @s run function coas:syringes/adrenaline

#morphine
execute if entity @s[nbt={SelectedItem:{tag:{type:morphine}}}] at @s run function coas:syringes/morphine

#keycards
execute if entity @s[scores={kc=0..}] at @s run function coas:keycards/run

########
# Items
########
	execute if entity @s[nbt={SelectedItem:{tag:{type:battery}}}] at @s run function coas:items/battery

	execute if entity @s[nbt={SelectedItem:{tag:{type:wrench}}}] at @s run function coas:items/wrench

	execute if entity @s[nbt={SelectedItem:{tag:{type:benzodiazepine}}}] at @s run function coas:items/benzodiazepine

	execute if entity @s[nbt={SelectedItem:{tag:{type:villager_brain}}}] at @s run function coas:items/villager_brain

	execute if entity @s[nbt={SelectedItem:{tag:{type:icebag}}}] at @s run function coas:items/icebag

	execute unless score stopwatch timer matches 1.. if entity @s[scores={xp=250..},nbt={SelectedItem:{tag:{type:watch}}}] run function coas:items/stopwatch/run
	
	execute if entity @s[nbt={SelectedItem:{tag:{type:pocket_teleporter}}}] run function coas:items/pocket_teleporter/run


###########
# Lootbags
###########

execute if entity @s[nbt={SelectedItem:{tag:{type:loot_bag}}}] run function coas:loot_bags/run
