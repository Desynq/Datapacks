summon armor_stand ~ ~1.75 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^1.75 ^50 {Tags:["vector.marker"],Radius:0}
execute facing entity @s eyes run summon arrow ^ ^ ^1.75 {Tags:["bullet","vector.bullet"],CustomName:'"a 9x19mm round"',SoundEvent:block.anvil.break,damage:5,Color:-1}

execute as @e[tag=vector.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=vector.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=vector.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=vector.marker] store result entity @e[tag=vector.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=vector.marker] store result entity @e[tag=vector.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=vector.marker] store result entity @e[tag=vector.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=vector.bullet,tag=!marked] add marked

playsound entity.firework_rocket.blast master @a ~ ~ ~ 4 1.25

scoreboard players remove @s a.vector 1

scoreboard players add @s d.vector 1
execute if score @s d.vector matches 360.. run function coas:guns/vector/break