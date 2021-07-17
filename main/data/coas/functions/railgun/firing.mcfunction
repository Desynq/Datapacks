execute anchored eyes run summon armor_stand ^ ^ ^ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon marker ~ ~ ~ {Tags:["railgun.bullet"]}
execute as @e[type=marker,tag=railgun.bullet] run function coas:core/uuid

execute anchored eyes run tp @e[type=marker,tag=railgun.bullet] ^ ^ ^ ~ ~
execute as @e[type=marker,tag=railgun.bullet] at @s run function coas:railgun/bullet/run





execute anchored eyes run playsound block.anvil.land voice @a ^ ^ ^ 4
execute anchored eyes run playsound item.crossbow.loading_end master @a ^ ^ ^ 1


summon item ^-.5 ^1 ^.5 {Invulnerable:true,PickupDelay:32767,Item:{id:"minecraft:minecart",Count:1},Tags:["railgun_casing"]}



tp @s[predicate=!entity:riding/anything,tag=!proning] ~ ~ ~ ~ ~-30

scoreboard players remove @s[scores={a.rg=1..}] a.rg 1
