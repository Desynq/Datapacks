scoreboard players add @s c.chemx 1
execute at @s[scores={c.chemx=20..}] run playsound block.iron_door.close master @a ~ ~ ~ 1 .5
scoreboard players set @s[scores={c.chemx=20..}] c.chemx 0