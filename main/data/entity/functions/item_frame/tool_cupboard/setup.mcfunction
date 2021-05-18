data merge entity @s {Invulnerable:1}

tag @s add tool_cupboard

scoreboard players operation @s tc.code = @p code





execute store result score @s tc.x1 run data get entity @s Pos[0] 1
scoreboard players remove @s tc.x1 16

execute store result score @s tc.x2 run data get entity @s Pos[0] 1
scoreboard players add @s tc.x2 16


execute store result score @s tc.y1 run data get entity @s Pos[1] 1
scoreboard players remove @s tc.y1 16

execute store result score @s tc.y2 run data get entity @s Pos[1] 1
scoreboard players add @s tc.y2 16


execute store result score @s tc.z1 run data get entity @s Pos[2] 1
scoreboard players remove @s tc.z1 16

execute store result score @s tc.z2 run data get entity @s Pos[2] 1
scoreboard players add @s tc.z2 16



execute at @e[type=item_frame,tag=tool_cupboard,distance=0.5..64] unless score @s tc.code = @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1] tc.code run tag @s add unplace

execute if entity @s[tag=!unplace] run playsound entity.zombie.attack_wooden_door master @p ~ ~ ~ 2147483647 .5
execute if entity @s[tag=!unplace] run tellraw @p {"color":"gold","text":"|> TC Established!"}

execute if entity @s[tag=unplace] run playsound entity.zombie.attack_iron_door master @p ~ ~ ~ 2147483647 .5
execute if entity @s[tag=unplace] run tellraw @p {"color":"red","text":"|> Too close to enemy TC!"}


execute if entity @s[tag=unplace] run function entity:item_frame/tool_cupboard/unplace
execute if entity @s[tag=!unplace] if block ^ ^ ^-1 #indestructible run function entity:item_frame/tool_cupboard/unplace