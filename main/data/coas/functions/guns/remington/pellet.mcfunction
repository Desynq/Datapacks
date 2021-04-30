summon area_effect_cloud ^ ^ ^30 {Tags:["remington.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","remington.bullet"],SoundEvent:block.anvil.break,damage:10,Color:-1,OwnerUUIDLeast:0,OwnerUUIDMost:0}
execute as @e[type=arrow,tag=remington.bullet,sort=nearest,limit=1,tag=!marked] run function coas:core/uuid

execute as @e[tag=remington.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=remington.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=remington.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=remington.marker] store result entity @e[tag=remington.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=remington.marker] store result entity @e[tag=remington.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=remington.marker] store result entity @e[tag=remington.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[type=arrow,tag=remington.bullet,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=remington.marker]