scoreboard players set arbVelocity temp 0
scoreboard players set raycastRemaining temp 20

execute rotated ~180 ~ align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^1 unless block ~ ~ ~ #air run function entity:armor_stand/artillery/raycast

item replace entity @s armor.head with air
