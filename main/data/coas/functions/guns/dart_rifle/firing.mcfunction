summon area_effect_cloud ^ ^ ^50 {Tags:["chemx.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","chemx.bullet"],CustomName:'"a ChemX round"',SoundEvent:block.anvil.break,damage:2,Color:-1,NoGravity:1,OwnerUUIDLeast:0,OwnerUUIDMost:0}
execute as @e[type=arrow,tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] run function coas:core/uuid

data modify entity @e[tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] Potion set from entity @s Inventory[{Slot:0b}].tag.Potion
data modify entity @e[tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] CustomPotionEffects set from entity @s Inventory[{Slot:0b}].tag.CustomPotionEffects

execute as @e[tag=chemx.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=chemx.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=chemx.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=chemx.marker] store result entity @e[tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=chemx.marker] store result entity @e[tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=chemx.marker] store result entity @e[tag=chemx.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=chemx.bullet,tag=!marked] add marked

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4

function coas:guns/chemx/cooldown
clear @s tipped_arrow 1
scoreboard players add @s d.chemx 1
tp @s[tag=!proning,predicate=!entity/riding/anything] ~ ~ ~ ~ ~-30
