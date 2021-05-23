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
	
	execute if entity @s[nbt={SelectedItem:{tag:{type:myst_teleporter}}}] run function coas:items/myst_teleporter/run


###########
# Lootbags
###########

execute if entity @s[nbt={SelectedItem:{tag:{type:loot_bag}}}] run function coas:loot_bags/run



##### Magazines #####

### 5.7x28 ###
execute if entity @s[scores={m.smg=0},nbt={SelectedItem:{tag:{type:p90_magazine}},Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]}] at @s run function coas:items/mags/p90



### .50 AE ###
execute if entity @s[scores={m.deagle=0},nbt={SelectedItem:{tag:{type:7rnd_.50ae_magazine}}}] at @s run function coas:items/mags/7rnd_.50ae



### 9mm ###
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:30rnd_9mm_magazine}}},predicate=equipment/offhand/coas/vector] at @s run function coas:core/load_mag
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:30rnd_9mm_magazine}}},predicate=equipment/offhand/coas/glock] at @s run function coas:core/load_mag
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:30rnd_9mm_magazine}}},predicate=equipment/offhand/coas/mp5a3] at @s run function coas:items/mags/30rnd_9mm/mp5a3
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:30rnd_9mm_magazine}}},predicate=equipment/offhand/coas/mp5sd] at @s run function coas:items/mags/30rnd_9mm/mp5sd


### 9x39 ###
execute if entity @s[scores={m.vss=0},nbt={SelectedItem:{tag:{type:20rnd_9x39_magazine}},Inventory:[{Slot:-106b,tag:{type:vss}}]}] at @s run function coas:items/mags/20rnd_9x39/vss


### 7.62s ###
execute if entity @s[scores={m.ar=0},nbt={SelectedItem:{tag:{type:30rnd_7.62s_magazine}},Inventory:[{Slot:-106b,tag:{type:assault_rifle}}]}] at @s run function coas:items/mags/30rnd_7.62s
execute if entity @s[scores={m.ar=0},nbt={SelectedItem:{tag:{type:30rnd_7.62s_hv_magazine}},Inventory:[{Slot:-106b,tag:{type:assault_rifle}}]}] at @s run function coas:items/mags/30rnd_7.62s_hv



### 7.62 ###




### 5.56 ###
execute if entity @s[scores={m.m14=0},nbt={SelectedItem:{tag:{type:20rnd_5.56_magazine}},Inventory:[{Slot:-106b,tag:{type:m14}}]}] at @s run function coas:items/mags/20rnd_5.56

execute if entity @s[nbt={SelectedItem:{tag:{type:30rnd_5.56_magazine}}}] at @s unless entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]},nbt=!{Inventory:[{Slot:-106b,tag:{type:burst_fire}}]}] run function coas:items/mags/30rnd_5.56
execute if entity @s[nbt={SelectedItem:{tag:{type:30rnd_5.56_magazine}}}] at @s unless entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]},nbt=!{Inventory:[{Slot:-106b,tag:{type:hk416}}]}] run function coas:items/mags/30rnd_5.56
execute if entity @s[scores={m.hk=0},nbt={SelectedItem:{tag:{type:100rnd_5.56tracer_magazine}}},nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] at @s run function coas:items/mags/100rnd_5.56tracer


### .50 BMG ###
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:10rnd_.50bmg_magazine}},Inventory:[{Slot:-106b,tag:{type:anti-material_rifle}}]}] at @s run function coas:items/mags/10rnd_.50bmg
execute unless score @s mag.offhand matches 1.. if entity @s[nbt={SelectedItem:{tag:{type:5rnd_ap_.50bmg_magazine}},Inventory:[{Slot:-106b,tag:{type:anti-material_rifle}}]}] at @s run function coas:items/mags/5rnd_ap_.50bmg
