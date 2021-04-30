summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

scoreboard players reset @s despawn.timer
execute positioned ~ ~1.8 ~ run function coas:anti-material_rifle/bullet2


playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4 .5
summon item ^-.5 ^1 ^ {Invulnerable:1,PickupDelay:32767,Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:2100}},Tags:["amr_casing"]}
playsound item.crossbow.loading_end master @a

tp @s[nbt=!{RootVehicle:{}},tag=!proning] ~ ~ ~ ~ ~-30



execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s SelectedItem.id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s SelectedItem.Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s SelectedItem.tag

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



scoreboard players add @s spray 20