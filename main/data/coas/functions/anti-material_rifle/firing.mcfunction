execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["muzzle_flash"],Small:true,Invisible:true,Marker:true,ArmorItems:[{},{},{},{id:"minecraft:lantern",Count:1,tag:{CustomModelData:1}}]}

summon marker ~ ~ ~ {Tags:["amr.bullet"]}
execute as @e[type=marker,tag=amr.bullet] run function coas:core/uuid

execute anchored eyes run tp @e[type=marker,tag=amr.bullet] ^ ^ ^ ~ ~
execute as @e[type=marker,tag=amr.bullet] at @s run function coas:anti-material_rifle/bullet/run



execute anchored eyes run playsound entity.firework_rocket.large_blast master @a[distance=0..] ^ ^ ^ 32 .5
summon item ^-.5 ^1 ^ {Tags:["amr_casing"],Invulnerable:true,PickupDelay:32767,Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{CustomModelData:2100}}}
playsound item.crossbow.loading_end master @a



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand

execute in minecraft:overworld store result block 0 0 1 Items[0].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1

execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 0 1 container.0



scoreboard players add @s spray 20
scoreboard players set @s spray_delay 5
