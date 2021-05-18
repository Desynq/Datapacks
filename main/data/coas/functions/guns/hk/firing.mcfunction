summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^ ^50 {Tags:["hk.marker"],Radius:0}
execute if entity @s[scores={m.hk=1}] run summon arrow ~ ~1.8 ~ {Tags:["bullet","hk.bullet"],CustomName:'"a 5.56x45mm NATO round"',SoundEvent:block.anvil.hkeak,damage:4,Color:-1}
execute if entity @s[scores={m.hk=2}] run summon spectral_arrow ~ ~1.8 ~ {Tags:["bullet","hk.bullet"],CustomName:'"a 5.56x45mm NATO Tracer round"',SoundEvent:block.anvil.hkeak,damage:3}
execute as @e[tag=hk.bullet,tag=!marked] run function coas:core/uuid

execute as @e[tag=hk.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=hk.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=hk.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=hk.marker] store result entity @e[tag=hk.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=hk.marker] store result entity @e[tag=hk.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=hk.marker] store result entity @e[tag=hk.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=hk.bullet,tag=!marked] add marked

playsound entity.firework_rocket.blast master @a ~ ~ ~ 4 .8

scoreboard players add @s d.hk 1
execute if score @s d.hk matches 900.. run function coas:guns/hk/break

scoreboard players remove @s a.hk 1
tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={f.hk=1}] ~ ~ ~ ~ ~-3


scoreboard players set limit rng 4
function math:rng

execute if score output rng matches 0 run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={f.hk=2}] ~ ~ ~ ~1 ~-1.5
execute if score output rng matches 1 run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={f.hk=2}] ~ ~ ~ ~-1 ~-1.5
execute if score output rng matches 2 run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={f.hk=2}] ~ ~ ~ ~1 ~1.5
execute if score output rng matches 3 run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={f.hk=2}] ~ ~ ~ ~-1 ~1.5

execute if score output rng matches 0 run tp @s[scores={f.hk=2,sneak=1}] ~ ~ ~ ~.5 ~-.75
execute if score output rng matches 1 run tp @s[scores={f.hk=2,sneak=1}] ~ ~ ~ ~-.5 ~-.75
execute if score output rng matches 2 run tp @s[scores={f.hk=2,sneak=1}] ~ ~ ~ ~.5 ~.75
execute if score output rng matches 3 run tp @s[scores={f.hk=2,sneak=1}] ~ ~ ~ ~-.5 ~.75


function coas:guns/hk/cooldown