summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon armor_stand ~ ~ ~ {Small:1,Marker:1,Invisible:1,ArmorItems:[{},{},{},{id:firework_star,Count:1}],Tags:["rpg.bullet"]}
scoreboard players operation @e[tag=rpg.bullet,sort=nearest,limit=1] ent.list = @s list
execute as @e[tag=rpg.bullet,distance=..1] run tp ~ ~.8 ~

playsound block.anvil.land voice @a ~ ~ ~ 4
tp @s[nbt=!{RootVehicle:{}},tag=!proning] ~ ~ ~ ~ ~-30
playsound item.crossbow.loading_end master @a

scoreboard players remove @s a.rpg 1
scoreboard players add @s d.rpg 1

execute if entity @s[scores={d.rpg=50..}] run playsound item.shield.break master @a ~ ~ ~ 2
execute if entity @s[scores={d.rpg=50..}] run item replace entity @s weapon.mainhand with air
execute if entity @s[scores={d.rpg=50..}] run scoreboard players set @s d.rpg 0
