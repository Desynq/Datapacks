playsound item.flintandsteel.use master @a ~ ~ ~ 2

execute positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd0,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=1..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd1,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=2..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd2,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=3..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd3,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=4..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd4,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=5..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd5,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5
execute if entity @s[scores={kc=6..}] positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=kcd6,distance=..2.5] run playsound entity.experience_orb.pickup master @a ~ ~1 ~ 2 1.5