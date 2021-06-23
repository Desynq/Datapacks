summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^50 {Tags:["bullet.marker"],Radius:0}

execute if score @s sneak matches 0 run summon arrow ~ ~1.8 ~ {Tags:["bullet","glock.bullet"],damage:5,Color:-1}
execute if score @s sneak matches 1.. run summon arrow ~ ~1.495 ~ {Tags:["bullet","glock.bullet"],damage:5,Color:-1}

data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion


playsound entity.firework_rocket.blast master @a[distance=0..] ~ ~ ~ 4 .5



execute in overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add @s durability.mh 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int 0.049 run scoreboard players get @s durability.mh

execute in overworld run item replace entity @s weapon.mainhand from block 0 0 1 container.0



scoreboard players add @s spray 2
scoreboard players set @s spray_delay 5
