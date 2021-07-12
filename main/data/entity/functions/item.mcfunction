execute if entity @s[tag=amr_casing] run function coas:anti-material_rifle/casing
execute if entity @s[tag=railgun_casing] run function coas:railgun/casing


execute if entity @s[tag=he_grenade,nbt={OnGround:0b}] run particle smoke ~ ~.2 ~ .1 .1 .1 .05 10 normal @a

execute if entity @s[tag=mgl.bullet,nbt={OnGround:0b}] run particle smoke ~ ~.2 ~ .1 .1 .1 .05 10 normal @a
execute if entity @s[tag=mgl.bullet,tag=he.mgl,nbt={OnGround:1b}] run function debug:explode/kill_after/small


execute if entity @s[nbt={Item:{tag:{type:chlorine_gas_grenade}}}] at @s run function entity:item/chlorine_gas/run



execute if entity @s[nbt={Item:{id:"minecraft:spider_eye"},PickupDelay:0s}] if block ~ ~ ~ water run function entity:item/bait



execute if entity @s[nbt={Item:{tag:{type:fake_watch}}}] run function soup:events/watch/run



###########
# Grenades
###########

scoreboard players add @s[tag=grenade] despawn.timer 1

execute if entity @s[tag=he.grenade,scores={despawn.timer=40..}] run function debug:explode/kill_after/small

execute if entity @s[predicate=entity/is/on_fire,nbt={Item:{id:"minecraft:poisonous_potato"}}] run function debug:explode/kill_after/small

#################
# Spawner Pickup
#################

execute if entity @s[predicate=dimension/overworld,predicate=!biome/wasteland,nbt={Item:{id:"minecraft:spawner"},OnGround:true}] if data entity @s Thrower if block ~ ~ ~ air run function entity:item/spawners/place



###################
# Rift Mage Ritual
###################

execute if entity @s[predicate=dimension/overworld,nbt={Item:{id:"minecraft:end_crystal"}}] unless entity @e[type=item,tag=ritual.rift_mage,distance=.5..] if block ~ ~ ~ air if block ~ ~-1 ~ crying_obsidian run function myst:rituals/rift_mage/start
execute if entity @s[tag=ritual.rift_mage,nbt={Item:{id:"minecraft:end_crystal"}}] unless block ~ ~ ~ air unless block ~ ~-1 ~ crying_obsidian run kill @s



# Glowing Glowstone
	execute if entity @s[nbt={Item:{id:"minecraft:glowstone_dust"}}] run data merge entity @s {Glowing:1}
#team join gold_glow @s[nbt={Item:{id:"minecraft:glowstone_dust"}}]

# Mystium Placeholder
	execute if entity @s[nbt={Item:{tag:{type:mystium_placeholder}}},predicate=in_trainyard] run effect give @a[distance=..3] instant_damage 1 3 true
	execute if entity @s[nbt={Item:{tag:{type:mystium_placeholder}}},predicate=in_trainyard] if block ~ ~ ~ air run setblock ~ ~ ~ obsidian
	kill @s[nbt={Item:{tag:{type:mystium_placeholder}}}]



#########
# Events
#########

execute if entity @s[predicate=dimension/the_myst,x=-224.5,y=26,z=121.5,distance=..1,nbt={Item:{tag:{type:zephyr_token}},OnGround:1b}] run function entity:item/event/zephyr
execute if entity @s[tag=zephyr_spawn,predicate=entity/is/on_fire] run data merge entity @s {Fire:0s}
execute if entity @s[tag=zephyr_spawn,nbt=!{PickupDelay:0s}] run particle splash ~ ~0.5 ~ 0.25 0.25 0.25 0.1 10 force @a
execute if entity @s[tag=zephyr_spawn,nbt=!{PickupDelay:0s}] run particle cloud ~ ~0.5 ~ 3 0.25 3 0.1 10 force @a
