execute if data storage minecraft:arguments {"boolean":true} unless score @s lowDetailMode matches 0 run tellraw @s {"color":"green","text":"|> Low Detail Mode Deactivated!"}
execute if data storage minecraft:arguments {"boolean":true} if score @s lowDetailMode matches 0 run tellraw @s {"color":"red","text":"Low Detail Mode is already turned on!"}
execute if data storage minecraft:arguments {"boolean":true} run scoreboard players set @s lowDetailMode 0


execute if data storage minecraft:arguments {"boolean":false} unless score @s lowDetailMode matches 1 run tellraw @s {"color":"green","text":"|> Low Detail Mode Activated!"}
execute if data storage minecraft:arguments {"boolean":false} if score @s lowDetailMode matches 1 run tellraw @s {"color":"red","text":"Low Detail Mode is already turned off!"}
execute if data storage minecraft:arguments {"boolean":false} run scoreboard players set @s lowDetailMode 1



data remove storage minecraft:arguments boolean
