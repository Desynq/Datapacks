summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon armor_stand ^ ^.8 ^ {Small:1,Marker:1,Invisible:1,ArmorItems:[{},{},{},{id:conduit,Count:1}],Tags:["railgun_bullet"]}
execute positioned ^ ^.8 ^ as @e[tag=railgun_bullet,distance=..1] run tp @s ^ ^ ^ ~ ~

playsound block.anvil.land voice @a ~ ~ ~ 4
tp @s[nbt=!{RootVehicle:{}},tag=!proning] ~ ~ ~ ~ ~-30
summon item ^-.5 ^1 ^.5 {Invulnerable:1,PickupDelay:32767,Item:{id:minecart,Count:1},Tags:["railgun_casing"]}
playsound item.crossbow.loading_end master @a
scoreboard players remove @s[scores={a.rg=1..}] a.rg 1