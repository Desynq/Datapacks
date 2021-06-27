summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

execute at @s rotated ~ ~3 run function coas:guns/remington/pellet
execute at @s rotated ~3 ~ run function coas:guns/remington/pellet
execute at @s rotated ~ ~-3 run function coas:guns/remington/pellet
execute at @s rotated ~-3 ~ run function coas:guns/remington/pellet


playsound gun.m870.fire master @a ~ ~ ~ 4 2

function coas:guns/remington/cooldown

tp @s[tag=!proning,predicate=!entity/riding/anything,scores={sneak=0}] ~ ~ ~ ~ ~-15





function coas:core/get_data/mainhand

execute in overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.ammo 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove x temp 1

execute in overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.durability 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add x temp 1

execute in overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.durability 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -0.3125 run scoreboard players remove x temp 80
execute in overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.Damage 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -1 run scoreboard players remove x temp 25

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}
