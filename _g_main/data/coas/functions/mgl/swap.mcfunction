execute if entity @s[scores={a.mgl=1..}] run function coas:mgl/swap2

scoreboard players add @s type.mgl 1
scoreboard players set @s[scores={type.mgl=2..}] type.mgl 0