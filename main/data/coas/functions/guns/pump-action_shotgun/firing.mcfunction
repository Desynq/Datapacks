execute anchored eyes run summon armor_stand ^ ^ ^ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

execute at @s rotated ~ ~3 run function coas:guns/pump-action_shotgun/pellet
execute at @s rotated ~3 ~ run function coas:guns/pump-action_shotgun/pellet
execute at @s rotated ~ ~-3 run function coas:guns/pump-action_shotgun/pellet
execute at @s rotated ~-3 ~ run function coas:guns/pump-action_shotgun/pellet


playsound gun.m870.fire master @a ~ ~ ~ 4 2

function coas:guns/pump-action_shotgun/cooldown

tp @s[tag=!proning,predicate=!entity:riding/anything,scores={sneak=0}] ~ ~ ~ ~ ~-15





execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand

execute in minecraft:overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.ammo 1
execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove x temp 1

execute in minecraft:overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.durability 1
execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add x temp 1

execute in minecraft:overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.durability 1
execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -0.3125 run scoreboard players remove x temp 80
execute in minecraft:overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.Damage 1
execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -1 run scoreboard players remove x temp 25

execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 0 1 container.0
