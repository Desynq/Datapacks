summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon armor_stand ^ ^.8 ^ {Small:1,Marker:1,Invisible:1,ArmorItems:[{},{},{},{id:tripwire_hook,Count:1}],Tags:["zeus_electrode"]}
scoreboard players operation @e[tag=zeus_electrode,sort=nearest,limit=1] ent.list = @s list
execute positioned ^ ^.8 ^ as @e[tag=zeus_electrode,distance=..1] run tp @s ~ ~ ~ ~ ~



playsound entity.zombie_villager.cure master @a ~ ~ ~ 4
tp @s[nbt=!{RootVehicle:{}},tag=!proning] ~ ~ ~ ~ ~-5
playsound entity.item.pickup master @a
item replace entity @s weapon.mainhand with air
