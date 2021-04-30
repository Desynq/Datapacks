tp ^ ^ ^1
scoreboard players add @s despawn.timer 1


tag @a[tag=173,distance=..2] add looked_at
execute positioned ~ ~-1 ~ run tag @a[tag=173,distance=..2] add looked_at



execute unless score @s despawn.timer matches 32.. at @s run function myst:scp/173/raycast

execute if score @s despawn.timer matches 32.. run scoreboard players add @a[tag=173,tag=looked_at] looked_at 1
tag @a[tag=173,tag=looked_at] remove looked_at

kill @s[scores={despawn.timer=32..}]