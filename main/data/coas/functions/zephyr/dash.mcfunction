particle poof ~ ~1 ~ .3 .3 .3 .1 10 force @a


execute if entity @s[predicate=equipment/mainhand/coas/zephyr] as @e[type=#mob,type=!#undead,distance=..2] unless score @s list = @p list run effect give @s instant_damage 1 0 true
execute if entity @s[predicate=equipment/mainhand/coas/ultimatum] as @e[type=#mob,type=!#undead,distance=..2] unless score @s list = @p list run effect give @s instant_damage 1 1 true

execute at @s as @e[type=#mob,type=!#undead,distance=..2] unless score @s list = @p list run playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ 4 1
execute at @s as @e[type=#mob,type=!#undead,distance=..2] unless score @s list = @p list run particle sweep_attack ~ ~1 ~ .5 .5 .5 .1 1 force @a

execute if entity @s[predicate=equipment/mainhand/coas/zephyr] run effect give @e[type=#undead,distance=..2] instant_health 1 0 true
execute if entity @s[predicate=equipment/mainhand/coas/ultimatum] run effect give @e[type=#undead,distance=..2] instant_health 1 1 true

execute if entity @e[type=#undead,distance=..2] run playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ 4 1
execute if entity @e[type=#undead,distance=..2] run particle sweep_attack ~ ~1 ~ .5 .5 .5 .1 1 force @a


scoreboard players add @s t.zephyr 1


tp ^ ^ ^.5

execute at @s run function coas:zephyr/move_check
execute at @s unless score @s t.zephyr matches 20.. if score @s move.zephyr matches 100 run function coas:zephyr/dash


execute unless score @s t.zephyr matches 20.. unless score @s move.zephyr matches 100 run particle smoke ^ ^1 ^2 .3 .3 .3 .1 100 force @a
execute if score @s t.zephyr matches 20.. run particle smoke ^ ^1 ^2 .3 .3 .3 .1 100 force @a

effect give @s slow_falling 1 0 true

scoreboard players reset @s t.zephyr
scoreboard players set @s c.zephyr 10
