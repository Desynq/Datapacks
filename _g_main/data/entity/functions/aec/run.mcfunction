execute if entity @s[tag=ritual.rm_1] unless entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..1] run kill @s

execute if entity @s[tag=mage.spikes] run function myst:mobs/rift_mage/spells/spikes/move

execute if entity @s[nbt={Effects:[{Id:26b,Amplifier:1b}]}] run function debug:explode/kill_after/small
execute if entity @s[nbt={Effects:[{Id:26b,Amplifier:2b}]}] run function debug:explode/kill_after/charged


execute if entity @s[tag=cobweb,nbt={Age:199}] if block ~ ~ ~ cobweb run particle poof ~ ~.5 ~ .2 .2 .2 .1 10 force @a
execute if entity @s[tag=cobweb,nbt={Age:199}] if block ~ ~ ~ cobweb run setblock ~ ~ ~ air
execute if entity @s[tag=cobweb] at @s unless block ~ ~ ~ cobweb run kill @s



################
# Creative AECs
################

execute if entity @s[tag=setupElevator] if block ~ ~ ~ #air run function entity:aec/setup/elevator
execute if entity @s[tag=elevator] run function entity:aec/elevator/run
