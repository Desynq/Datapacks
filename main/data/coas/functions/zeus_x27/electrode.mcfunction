tp ^ ^ ^1
particle enchanted_hit ^ ^1 ^-2 .1 .1 .1 0 10 force @a[distance=..64]

execute positioned ~ ~.8 ~ at @e[distance=..1,type=#mob,type=!#undead,gamemode=!creative,gamemode=!spectator] unless score @e[type=#mob,type=!#undead,sort=nearest,limit=1] list = @s ent.list run function coas:zeus_x27/kill
execute positioned ~ ~-.8 ~ at @e[distance=..1,type=#mob,type=!#undead,gamemode=!creative,gamemode=!spectator] unless score @e[type=#mob,type=!#undead,sort=nearest,limit=1] list = @s ent.list run function coas:zeus_x27/kill

execute unless block ~ ~.8 ~ #air unless block ~ ~.8 ~ #transparent run kill @s

scoreboard players add @s despawn.timer 1
kill @s[scores={despawn.timer=10..}]