summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^ ^50 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","lmg.bullet"],CustomName:'"a 5.56x45mm NATO round"',SoundEvent:block.anvil.break,damage:3,Color:-1}

function coas:core/set_motion

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4 1.5

execute if entity @s[scores={sneak=1..}] run function coas:guns/light_machine_gun/cooldown
scoreboard players add @s d.lmg 1

#scoreboard players set limit rng 5
#function math:rng
#execute if score output rng matches 0 run tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~ ~-5
#execute if score output rng matches 1 run tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~2 ~-5
#execute if score output rng matches 2 run tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~-2 ~-5
#execute if score output rng matches 3 run tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~3 ~
#execute if score output rng matches 4 run tp @s[tag=!proning,nbt=!{RootVehicle:{}}] ~ ~ ~ ~-3 ~

scoreboard players remove @s a.lmg 1