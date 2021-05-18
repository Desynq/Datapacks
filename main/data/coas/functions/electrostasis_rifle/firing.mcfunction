summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

scoreboard players reset @s despawn.timer
execute anchored feet positioned ~ ~1.8 ~ run function coas:electrostasis_rifle/bullet



playsound entity.zombie_villager.cure master @a ~ ~ ~ .5 2
playsound item.crossbow.loading_end master @a
scoreboard players remove @s a.esr 1
scoreboard players remove @s[predicate=equipment/offhand/coas/electrostasis_rifle] a.esr 1
