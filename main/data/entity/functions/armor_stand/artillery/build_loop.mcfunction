scoreboard players remove raycastRemaining temp 1

setblock ~ ~ ~ glass
execute if score raycastRemaining temp matches 1.. positioned ^ ^ ^1 run function entity:armor_stand/artillery/build_loop
