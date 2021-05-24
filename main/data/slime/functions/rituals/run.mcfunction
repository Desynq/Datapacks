execute as @e[type=item,predicate=dimension/overworld,nbt={Item:{id:"minecraft:enchanting_table"},OnGround:1b}] at @s if block ~ ~-1 ~ crying_obsidian align xyz positioned ~.5 ~.5 ~.5 if entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=0.01..1] run function slime:disenchant



execute as @e[type=item,predicate=dimension/overworld,nbt={Item:{id:"minecraft:tnt",Count:8b},OnGround:1b}] at @s if block ~ ~ ~ enchanting_table at @e[type=item,nbt={OnGround:1b},nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}},nbt=!{Item:{tag:{raceLocked:1b}}},sort=nearest,limit=1,distance=0.01..1] run function slime:rituals/blast_protection/run
