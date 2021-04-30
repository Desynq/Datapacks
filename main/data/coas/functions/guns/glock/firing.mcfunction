summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^30 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","glock.bullet"],damage:5,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion


playsound entity.firework_rocket.blast master @a[distance=0..] ~ ~ ~ 4 .5

scoreboard players add @s d.glock 1



execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s SelectedItem.id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s SelectedItem.Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s SelectedItem.tag

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



tp @s[scores={sneak=0},tag=!proning] ~ ~ ~ ~ ~-5
tp @s[scores={sneak=1},tag=!proning] ~ ~ ~ ~ ~-2.5