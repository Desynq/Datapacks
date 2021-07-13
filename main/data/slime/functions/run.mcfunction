# Unbreaking Tome
execute at @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:true}] run data merge entity @e[type=item,sort=nearest,limit=1,nbt=!{Item:{tag:{type:unbreaking_tome}}},nbt=!{Item:{tag:{Unbreakable:false}}}] {Item:{tag:{Unbreakable:true}}}
kill @e[type=item,nbt={Item:{tag:{type:unbreaking_tome}},OnGround:true}]


function slime:status_effects/run


# Patrol
execute unless entity @e[type=iron_golem,tag=patrol] run bossbar set patrol_cooldown visible false
execute at @a[tag=patrolling] as @e[type=iron_golem,sort=nearest,limit=1,tag=patrol] run function slime:patrol/run

# Anti-Air
	#function slime:antiair/run



# Bossbars
	function slime:bossbar/run



# Clothing Color Randomiser
execute as @a[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{type:temp.clothing}}]}] at @s run function slime:clothing/run



# Disenchanting
function slime:rituals/run
