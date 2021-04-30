scoreboard players add @s c2.hk 1
execute if entity @s[scores={c2.hk=20}] run playsound block.iron_door.open master @a ~ ~ ~ 2 .75
execute if entity @s[scores={c2.hk=40}] run playsound item.crossbow.loading_end master @a ~ ~ ~ 2 1
execute if entity @s[scores={c2.hk=60}] run playsound block.iron_door.close master @a ~ ~ ~ 2 .75
scoreboard players set @s[scores={c2.hk=60..}] c2.hk 0