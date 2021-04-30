summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^1.8 ^50 {Tags:["m14.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","m14.bullet"],CustomName:'"a 5.56x45mm round"',SoundEvent:block.anvil.break,damage:6,Color:-1}

execute as @e[tag=m14.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=m14.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=m14.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=m14.marker] store result entity @e[tag=m14.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=m14.marker] store result entity @e[tag=m14.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=m14.marker] store result entity @e[tag=m14.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=m14.bullet,tag=!marked] add marked

playsound entity.iron_golem.repair master @a ~ ~ ~ 4 2

tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~ ~-10
scoreboard players remove @s a.m14 1

scoreboard players add @s d.m14 1
execute if score @s d.m14 matches 240.. run function coas:guns/m14/break