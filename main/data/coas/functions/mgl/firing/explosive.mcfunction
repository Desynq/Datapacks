summon armor_stand ~ ~1.75 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^1.75 ^20 {Tags:["mgl.marker"],Radius:0}
summon item ~ ~1.75 ~ {Tags:["mgl.bullet","he.mgl"],PickupDelay:32767,Invulnerable:1,Item:{id:firework_star,Count:1}}


execute as @e[tag=mgl.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=mgl.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=mgl.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=mgl.marker] store result entity @e[tag=mgl.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=mgl.marker] store result entity @e[tag=mgl.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=mgl.marker] store result entity @e[tag=mgl.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=mgl.bullet,tag=!marked] add marked

playsound entity.arrow.shoot master @a ~ ~ ~ 4 .75
playsound item.crossbow.loading_end master @a ~ ~ ~ 2 1

tp @s[predicate=!entity:riding/anything,tag=!proning] ~ ~ ~ ~ ~-5

scoreboard players remove @s a.mgl 1
