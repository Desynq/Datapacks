scoreboard players add @s lowDetailMode 1
execute if score @s lowDetailMode matches 2.. run scoreboard players set @s lowDetailMode 0



execute if score @s lowDetailMode matches 1 run tellraw @s {"color":"green","text":"|> Low Detail Mode Activated!"}
execute if score @s lowDetailMode matches 0 run tellraw @s {"color":"red","text":"|> Low Detail Mode Deactivated!"}
