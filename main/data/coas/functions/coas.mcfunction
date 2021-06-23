execute if entity @s[scores={u.coas=1..}] at @s run function coas:run2

#######
# Guns
#######

#railgun
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/railgun,predicate=!equipment/offhand/gun/coas/railgun] run function coas:railgun/run

#amr
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/anti-material_rifle,predicate=!equipment/offhand/coas/gun/anti-material_rifle] run function coas:anti-material_rifle/run

#zeus_x27
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/zeus_x27,predicate=!equipment/offhand/coas/zeus_x27] run function coas:zeus_x27/run

#rpg
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/rpg,predicate=!equipment/offhand/coas/rpg] run function coas:rpg/run

#assault rifle
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/assault_rifle,predicate=!equipment/offhand/coas/assault_rifle] run function coas:guns/assault_rifle/run

#burst rifle
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/burst_rifle,predicate=!equipment/offhand/coas/burst_rifle] run function coas:guns/burst_rifle/run

#lmg
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/light_machine_gun,predicate=!equipment/offhand/coas/light_machine_gun] run function coas:guns/light_machine_gun/run

#submachine gun
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/submachine_gun,predicate=!equipment/offhand/coas/submachine_gun] run function coas:guns/submachine_gun/run

#bolt-action
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/bolt-action_rifle,predicate=!equipment/offhand/coas/bolt-action_rifle] run function coas:guns/bolt_action_rifle/run

#deagle
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/desert_eagle,predicate=!equipment/offhand/coas/desert_eagle] run function coas:guns/desert_eagle/run

#vector
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/vector,predicate=!equipment/offhand/coas/vector] run function coas:guns/vector/run

#glock
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/glock,predicate=!equipment/offhand/coas/glock] run function coas:guns/glock/run

#minigun
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/minigun] run function coas:guns/minigun/run

#semi-auto
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/semi-auto_rifle,predicate=!equipment/offhand/coas/semi-auto_rifle] run function coas:guns/m14/run

#hk
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/hk416,predicate=!equipment/offhand/coas/hk416] run function coas:guns/hk/run

#pump-action
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/pump-action_shotgun,predicate=!equipment/offhand/coas/pump-action_shotgun] run function coas:guns/remington/run

#vss
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/vss,predicate=!equipment/offhand/coas/vss] run function coas:guns/vss/run

#eoka pistol
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/eoka,predicate=!equipment/offhand/coas/eoka] run function coas:guns/eoka/run

#mp5a3
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/mp5a3,predicate=!equipment/offhand/coas/mp5a3] run function coas:guns/mp5a3/run

#mp5sd
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/mp5sd,predicate=!equipment/offhand/coas/mp5sd] run function coas:guns/mp5sd/run

#mgl
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/mgl,predicate=!equipment/offhand/coas/mgl] run function coas:mgl/run

#esr
execute unless entity @s[predicate=!equipment/mainhand/coas/gun/electrostasis_rifle,predicate=!equipment/offhand/coas/electrostasis_rifle] run function coas:electrostasis_rifle/run



###########
# Not Guns
###########


#zephyr / ultimatum
execute unless entity @s[predicate=!equipment/mainhand/coas/zephyr,predicate=!equipment/offhand/coas/zephyr] run function coas:zephyr/run

execute unless entity @s[predicate=!equipment/mainhand/coas/ultimatum,predicate=!equipment/offhand/coas/ultimatum] run function coas:zephyr/run



#mining laser
execute unless entity @s[predicate=!equipment/mainhand/coas/mining_laser,predicate=!equipment/offhand/coas/mining_laser] run function coas:mining_laser/run
