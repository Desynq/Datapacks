execute store result score @s mag.ammo run data get entity @s SelectedItem.tag.ammo



	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..49},nbt={SelectedItem:{tag:{type:p90_magazine}},Inventory:[{tag:{type:5.7x28mm}}]}] run function coas:guns/_mags/p90

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..29},nbt={SelectedItem:{tag:{type:30rnd_9mm_magazine}},Inventory:[{tag:{type:9mm}}]}] run function coas:guns/_mags/30rnd_9mm

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..29},nbt={SelectedItem:{tag:{type:30rnd_5.56_magazine}},Inventory:[{tag:{type:5.56x45mm}}]}] run function coas:guns/_mags/30rnd_5.56

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..29},nbt={SelectedItem:{tag:{type:30rnd_7.62s_magazine}},Inventory:[{tag:{type:7.62s,ammo:default}}]}] run function coas:guns/_mags/30rnd_7.62s

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..19},nbt={SelectedItem:{tag:{type:20rnd_9x39_magazine}},Inventory:[{tag:{type:9x39}}]}] run function coas:guns/_mags/20rnd_9x39

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..19},nbt={SelectedItem:{tag:{type:20rnd_5.56_magazine}},Inventory:[{tag:{type:5.56x45mm}}]}] run function coas:guns/_mags/20rnd_5.56

	execute if entity @s[scores={sneak=1,u.coas=1..,mag.ammo=..9},nbt={SelectedItem:{tag:{type:10rnd_.50bmg_magazine}},Inventory:[{tag:{type:bmg_ammo}}]}] run function coas:guns/_mags/10rnd_.50bmg