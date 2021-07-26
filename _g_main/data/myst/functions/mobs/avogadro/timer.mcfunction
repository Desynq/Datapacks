scoreboard players add @s spell.timer 1
execute if entity @s[scores={spell.timer=40..}] run function myst:mobs/avogadro/cast
