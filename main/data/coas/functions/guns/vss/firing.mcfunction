summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^30 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","vss.bullet"],SoundEvent:block.anvil.break,damage:10,Color:-1,PierceLevel:9}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID

function coas:core/set_motion


playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ .5 1.5
playsound entity.firework_rocket.blast_far master @a[distance=0..] ~ ~ ~ 4

function coas:guns/vss/cooldown

scoreboard players add @s d.vss 1

scoreboard players remove @s a.vss 1

effect give @s slowness 1 3 true