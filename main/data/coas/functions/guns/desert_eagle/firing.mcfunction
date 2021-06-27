summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ~ ~ ~ {Tags:["deagle.marker"],Radius:0}
tp @e[tag=deagle.marker,distance=..1] ^ ^ ^50
execute facing entity @s eyes run summon arrow ^ ^ ^1.8 {Tags:["bullet","deagle.bullet"],CustomName:'"a .50ae round"',SoundEvent:block.anvil.break,damage:8,Color:-1,PierceLevel:2,OwnerUUIDLeast:0,OwnerUUIDMost:0}
execute as @e[type=arrow,tag=deagle.bullet,sort=nearest,limit=1,tag=!marked] run function coas:core/uuid

execute as @e[tag=deagle.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=deagle.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=deagle.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=deagle.marker] store result entity @e[tag=deagle.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=deagle.marker] store result entity @e[tag=deagle.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=deagle.marker] store result entity @e[tag=deagle.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=deagle.bullet,tag=!marked] add marked

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4 .75

function coas:guns/desert_eagle/cooldown
scoreboard players add @s d.deagle 1
tp @s[tag=!proning,predicate=!entity/riding/anything] ~ ~ ~ ~ ~-20
scoreboard players remove @s a.deagle 1
