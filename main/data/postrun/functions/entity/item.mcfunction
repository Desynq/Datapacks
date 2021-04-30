execute if entity @s[tag=amr_casing] run function coas:anti-material_rifle/casing
execute if entity @s[tag=railgun_casing] run function coas:railgun/casing


execute if entity @s[tag=he_grenade,nbt={OnGround:0b}] run particle smoke ~ ~.2 ~ .1 .1 .1 .05 10 normal @a

execute if entity @s[tag=mgl.bullet,nbt={OnGround:0b}] run particle smoke ~ ~.2 ~ .1 .1 .1 .05 10 normal @a
execute if entity @s[tag=mgl.bullet,tag=he.mgl,nbt={OnGround:1b}] run function debug:explode/kill_after/small


execute if entity @s[nbt={Item:{tag:{type:chlorine_gas_grenade}}}] at @s run function postrun:entity/item/chlorine_gas/run



execute if entity @s[nbt={Item:{id:"minecraft:spider_eye"},PickupDelay:0s}] if block ~ ~ ~ water run function postrun:entity/item/bait



execute if entity @s[nbt={Item:{tag:{type:fake_watch}}}] run function soup:events/watch/run



###########
# Grenades
###########

scoreboard players add @s[tag=grenade] despawn.timer 1

execute if entity @s[tag=he.grenade,scores={despawn.timer=40..}] run function debug:explode/kill_after/small

execute if entity @s[nbt={Item:{id:"minecraft:poisonous_potato"}},nbt=!{Fire:-1s}] run function debug:explode/kill_after/small

#################
# Spawner Pickup
#################

execute if entity @s[predicate=dimension/overworld,predicate=!biome/mushroom_fields,nbt={Item:{id:"minecraft:spawner"},OnGround:1b}] if data entity @s Thrower if block ~ ~ ~ air run function postrun:entity/item/spawners/check



###################
# Rift Mage Ritual
###################

execute if entity @s[nbt={Item:{id:"minecraft:ender_eye"}},predicate=dimension/overworld] unless entity @e[type=item,tag=ritual.rift_mage,distance=.5..] if block ~ ~ ~ air if block ~ ~-1 ~ crying_obsidian run function myst:rituals/rift_mage/start
execute if entity @s[tag=ritual.rift_mage,nbt={Item:{id:"minecraft:end_crystal"}}] unless block ~ ~ ~ air unless block ~ ~-1 ~ crying_obsidian run kill @s



# Glowing Glowstone
	execute if entity @s[nbt={Item:{id:"minecraft:glowstone_dust"}},team=!gold_glow] run data merge entity @s {Glowing:1}
	team join gold_glow @s[nbt={Item:{id:"minecraft:glowstone_dust"}},team=!gold_glow]
# Mystium Placeholder
	execute if entity @s[nbt={Item:{tag:{type:mystium_placeholder}}},predicate=in_trainyard] run effect give @a[distance=..3] instant_damage 1 1 true
	execute if entity @s[nbt={Item:{tag:{type:mystium_placeholder}}},predicate=in_trainyard] if block ~ ~ ~ air run setblock ~ ~ ~ obsidian
	kill @s[nbt={Item:{tag:{type:mystium_placeholder}}}]