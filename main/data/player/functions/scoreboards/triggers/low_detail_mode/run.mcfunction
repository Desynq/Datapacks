scoreboard players enable @s lowDetailMode

execute unless score @s lowDetailMode matches 0..1 run scoreboard players set @s lowDetailMode 0
