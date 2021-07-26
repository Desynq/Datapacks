summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^1.8 ^50 {Tags:["lmg.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","lmg.bullet"],CustomName:'"a 5.56x45mm NATO round"',SoundEvent:block.anvil.break,damage:3,Color:-1}

execute as @e[tag=lmg.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=lmg.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=lmg.marker] store result score @s ent.z run data get entity @s Pos[2]

execute as @e[tag=lmg.marker] store result entity @e[tag=lmg.bullet,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=lmg.marker] store result entity @e[tag=lmg.bullet,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=lmg.marker] store result entity @e[tag=lmg.bullet,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=lmg.bullet,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=lmg.marker]

playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4 1.5