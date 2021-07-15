execute anchored eyes run summon armor_stand ^ ^ ^ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}



execute anchored eyes run summon arrow ^ ^ ^ {Tags:["bullet","minigun.bullet"],SoundEvent:block.stone.hit,damage:10,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID

execute in minecraft:overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^10 {Tags:["bullet.marker"]}
execute as @e[type=arrow,tag=bullet,tag=!marked] run function coas:core/set_motion



scoreboard players set limit rng 3
function math:rng
execute if score output rng matches 0 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 16 1.225
execute if score output rng matches 1 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 16 1.25
execute if score output rng matches 2 run playsound entity.firework_rocket.large_blast_far master @a[distance=0..] ~ ~ ~ 16 1.275

execute anchored eyes run particle smoke ^-.5 ^-.6 ^1 .1 .1 .1 .05 1 force @s
effect give @s[scores={sneak=1},nbt=!{Inventory:[{Slot:103b,tag:{type:kevlar_helmet}}]},nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]},tag=!patrolling] nausea 4 0 true


clear @s white_dye{type:"5.56x45mm"} 1
execute if entity @s[tag=!patrolling] run scoreboard players remove @s ammo 1
kill @e[type=area_effect_cloud,tag=gun.pos]
