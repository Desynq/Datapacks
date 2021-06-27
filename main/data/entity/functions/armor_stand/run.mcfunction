execute if entity @s[predicate=equipment/head/player_head/name/artillery_shell] run function entity:armor_stand/artillery/run



#############
# Raycasting
#############

execute at @s[tag=railgun_bullet] run function coas:railgun/bullet
execute at @s[tag=railgun_bullet] run function coas:railgun/bullet
execute at @s[tag=railgun_bullet] run function coas:railgun/bullet
execute at @s[tag=railgun_bullet] run function coas:railgun/bullet
execute at @s[tag=railgun_bullet] run function coas:railgun/bullet


execute at @s[tag=zeus_electrode] run function coas:zeus_x27/electrode
execute at @s[tag=zeus_electrode] run function coas:zeus_x27/electrode


execute at @s[tag=rpg.bullet] run function coas:rpg/bullet
execute at @s[tag=rpg.bullet] run function coas:rpg/bullet



#######
# Myst
#######

execute if entity @s[tag=spawn.rift_scavenger] run function myst:mobs/rift_scavenger/summon
execute if entity @s[tag=spawn.ralamari] run function myst:mobs/ralamari/summon
execute if entity @s[tag=spawn.ralamari_scavenger] run function myst:mobs/rift_scavenger/summon2
