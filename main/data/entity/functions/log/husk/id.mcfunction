data remove entity @s ArmorItems[]

attribute @s generic.max_health base set 20
attribute @s generic.movement_speed base set 0.3
attribute @s zombie.spawn_reinforcements base set 0
data merge entity @s {Health:20}

data modify entity @s CustomName set value '{"color":"dark_green","text":"Wasteland Zombie"}'
