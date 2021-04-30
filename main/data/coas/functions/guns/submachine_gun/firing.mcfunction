summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^40 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.75 ~ {Tags:["bullet","smg.bullet"],SoundEvent:block.anvil.break,damage:4,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID

function coas:core/set_motion


playsound entity.firework_rocket.blast master @a ~ ~ ~ 4 .75

scoreboard players add @s d.smg 1
execute if entity @s[scores={d.smg=500..}] at @s run function coas:guns/submachine_gun/break

scoreboard players remove @s a.smg 1

scoreboard players add @s spray 5