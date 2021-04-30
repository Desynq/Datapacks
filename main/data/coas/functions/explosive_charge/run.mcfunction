execute as @e[type=armor_stand,tag=placed_c4,tag=!rotated] store result entity @s Rotation[0] float 1 run scoreboard players get @s ent.roty
tag @e[type=armor_stand,tag=placed_c4,tag=!rotated] add rotated

execute as @a[scores={u.coas=1..},nbt={SelectedItem:{tag:{type:explosive_charge}}}] at @s run function coas:explosive_charge/deploy

execute as @e[type=arrow,tag=c4.arrow,nbt={inGround:1b}] at @s run function coas:explosive_charge/place


execute as @e[type=armor_stand,tag=placed_c4] at @s run function coas:explosive_charge/entity/run