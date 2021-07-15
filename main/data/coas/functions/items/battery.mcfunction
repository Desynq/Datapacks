playsound block.beacon.activate master @a ~ ~ ~ 1 2
particle enchanted_hit ~ ~1 ~ .5 .5 .5 0 100 force @a[distance=..32]

scoreboard players set @s a.esr 50
scoreboard players set @s emp 0

xp add @s 500 points
function math:xp/run

item replace entity @s weapon.mainhand with air
