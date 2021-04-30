summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^20 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","eoka.bullet"],damage:50,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion


playsound entity.firework_rocket.blast master @a[distance=0..] ~ ~ ~ 4 1

scoreboard players set limit rng 4
function math:rng
execute if score output rng matches 0 run replaceitem entity @s weapon.mainhand air
execute if score output rng matches 0 run playsound item.shield.break master @a[distance=0..] ~ ~ ~ 1

scoreboard players set @s a.eoka 0

tp @s[tag=!proning] ~ ~ ~ ~ ~-15