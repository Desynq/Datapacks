summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^30 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","mp5sd.bullet"],damage:5,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion

playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ .5 1.5
playsound entity.firework_rocket.blast_far master @a[distance=0..] ~ ~ ~ 4 1.5

scoreboard players add @s d.mp5sd 1

scoreboard players remove @s a.mp5sd 1

scoreboard players add @s[scores={f.mp5sd=1}] c.mp5sd 1

scoreboard players add @s spray 3