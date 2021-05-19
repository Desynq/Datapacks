# Unbreaking Tome
execute at @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:1b}] run data merge entity @e[type=item,sort=nearest,limit=1,nbt=!{Item:{tag:{type:unbreaking_tome}}},nbt=!{Item:{tag:{Unbreakable:0b}}}] {Item:{tag:{Unbreakable:1}}}
kill @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:1b}]


function slime:status_effects/run


# Patrol
	execute at @a[tag=patrolling] as @e[type=iron_golem,sort=nearest,limit=1,tag=patrol] run function slime:patrol/run



# Bossbars
	function slime:bossbar/run



execute as @e[type=spectral_arrow,predicate=dimension/overworld,nbt={inGround:1b},nbt=!{pickup:0b}] store result score @s ent.uuid run data get entity @s Owner[0]
execute at @a[predicate=dimension/overworld,predicate=equipment/mainhand/ender_bow] as @e[type=spectral_arrow,predicate=dimension/overworld,nbt={inGround:1b},nbt=!{pickup:0b}] if score @p ply.uuid = @s ent.uuid run tp @p @s
effect give @a[predicate=equipment/mainhand/ender_bow] slow_falling 1 0 true
kill @e[type=spectral_arrow,nbt={inGround:1b}]



# Clothing Color Randomiser
execute as @a[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{type:temp.clothing}}]}] at @s run function slime:clothing/run



# Disenchanting
execute as @e[type=item,predicate=dimension/overworld,nbt={Item:{id:"minecraft:enchanting_table"},OnGround:1b}] at @s if block ~ ~-1 ~ crying_obsidian align xyz positioned ~.5 ~.5 ~.5 if entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=..1] run function slime:disenchant
