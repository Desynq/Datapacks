scoreboard players add arbVelocity temp 1

scoreboard players remove raycastRemaining temp 1
execute if score arbVelocity temp matches 20.. run scoreboard players set raycastRemaining temp 0
execute if block ~ ~ ~ #air run scoreboard players set raycastRemaining temp 0


execute if score raycastRemaining temp matches 0 run function entity:armor_stand/artillery/fire
execute if score raycastRemaining temp matches 1.. positioned ^ ^ ^1 run function entity:armor_stand/artillery/raycast
