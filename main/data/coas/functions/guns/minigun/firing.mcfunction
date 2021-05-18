summon armor_stand ~ ~1.75 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^ ^100 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.75 ~ {Tags:["bullet","minigun.bullet"],SoundEvent:block.stone.hit,damage:2,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion


scoreboard players set limit rng 3
function math:rng
execute if score output rng matches 0 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 8 1.225
execute if score output rng matches 1 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 8 1.25
execute if score output rng matches 2 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 8 1.275


execute unless score @s d.minigun matches 3600.. run scoreboard players add @s d.minigun 1

execute if entity @s[scores={sneak=0}] run particle smoke ^-.5 ^1.3 ^1 .1 .1 .1 .05 5 force @a[distance=..32]
execute if entity @s[scores={sneak=1}] run particle smoke ^-.5 ^.7 ^1 .1 .1 .1 .05 5 force @a[distance=..32]
effect give @s[scores={sneak=1},nbt=!{Inventory:[{Slot:103b,tag:{type:kevlar_helmet}}]},nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]},tag=!patrolling] nausea 4 0 true


clear @s white_dye{type:5.56x45mm} 1
execute if entity @s[tag=!patrolling] store result score @s ammo run clear @s white_dye{type:5.56x45mm} 0
kill @e[type=area_effect_cloud,tag=gun.pos]
