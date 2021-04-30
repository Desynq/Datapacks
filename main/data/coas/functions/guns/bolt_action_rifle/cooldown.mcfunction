scoreboard players add @s c.bar 1
execute at @s[scores={c.bar=30..}] run playsound block.iron_door.close master @a ~ ~ ~ 1 .5
scoreboard players set @s[scores={c.bar=30..}] c.bar 0