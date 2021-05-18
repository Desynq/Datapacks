# Unbreaking Tome
execute at @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:1b}] run data merge entity @e[type=item,sort=nearest,limit=1,nbt=!{Item:{tag:{type:unbreaking_tome}}},nbt=!{Item:{tag:{Unbreakable:0b}}}] {Item:{tag:{Unbreakable:1}}}
kill @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:1b}]


function slime:status_effects/run

# On Respawn
	execute if entity @a[scores={timeSinceDeath=20}] run function debug:stats
	effect give @a[scores={timeSinceDeath=20}] instant_health 20 99 true
	effect give @a[scores={timeSinceDeath=20}] hunger 1 199 true


# Patrol

execute at @a[tag=patrolling] as @e[type=iron_golem,sort=nearest,limit=1,tag=patrol] run function slime:patrol/run



# Bossbars
function slime:bossbar/run


# Overworld Protection
	gamemode survival @a[tag=!adventure,gamemode=adventure,predicate=dimension/overworld]
	gamemode survival @a[tag=!adventure,gamemode=adventure,predicate=dimension/pocket]
	tag @a[tag=adventure] remove adventure
		tag @a[predicate=dimension/overworld,scores={x=-128..127,z=-128..127}] add adventure
		tag @a[predicate=equipment/holding/shulker_box] add adventure
		execute as @a[predicate=dimension/overworld] at @s if entity @e[type=item_frame,tag=tool_cupboard,distance=..64] run function player:adventure/tool_cupboard
	gamemode adventure @a[tag=adventure,gamemode=survival]

#function slime:antiair/run


execute as @e[type=spectral_arrow,predicate=dimension/overworld,nbt={inGround:1b},nbt=!{pickup:0b}] store result score @s ent.uuid run data get entity @s Owner[0]
execute at @a[predicate=dimension/overworld,predicate=equipment/mainhand/ender_bow] as @e[type=spectral_arrow,predicate=dimension/overworld,nbt={inGround:1b},nbt=!{pickup:0b}] if score @p ply.uuid = @s ent.uuid run tp @p @s
effect give @a[predicate=equipment/mainhand/ender_bow] slow_falling 1 0 true
kill @e[type=spectral_arrow,nbt={inGround:1b}]


# Absorption

effect clear @a[predicate=effects/absorption,nbt={AbsorptionAmount:0f}] absorption
effect give @a[predicate=equipment/chest/absorbing_chainmail] absorption 1 0 true


# Supercharged Totem

replaceitem entity @a[scores={totem.use=1..},predicate=equipment/offhand/supercharged_totem] weapon.mainhand totem_of_undying
scoreboard players reset @a[scores={totem.use=1..}] totem.use

# Clothing Color Randomiser
execute as @a[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{type:temp.clothing}}]}] at @s run function slime:clothing/run


# Spider Webbing





# Disenchanting
execute as @e[type=item,predicate=dimension/overworld,nbt={Item:{id:"minecraft:enchanting_table"},OnGround:1b}] at @s if block ~ ~-1 ~ crying_obsidian align xyz positioned ~.5 ~.5 ~.5 if entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=..1] run function slime:disenchant


# No Frost Walker
execute at @a[predicate=equipment/feet/frostwalker] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 water replace frosted_ice
