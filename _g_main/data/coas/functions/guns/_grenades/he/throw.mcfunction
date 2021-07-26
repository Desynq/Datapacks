summon area_effect_cloud ^ ^ ^150 {Tags:["he.marker"],Radius:0}
summon item ~ ~1.6 ~ {Tags:["grenade","he.grenade","marked"],PickupDelay:32767,Item:{id:firework_star,Count:1}}

execute as @e[tag=he.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=he.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=he.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=he.marker] store result entity @e[tag=he.grenade,sort=nearest,limit=1,tag=marked] Motion[0] double .01 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=he.marker] store result entity @e[tag=he.grenade,sort=nearest,limit=1,tag=marked] Motion[1] double .01 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=he.marker] store result entity @e[tag=he.grenade,sort=nearest,limit=1,tag=marked] Motion[2] double .01 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=he.grenade,tag=marked] remove marked

item replace entity @s weapon.mainhand with air
