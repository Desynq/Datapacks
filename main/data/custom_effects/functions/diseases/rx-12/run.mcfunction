particle falling_dust green_wool ~ ~1.6 ~ .2 .2 .2 .05 1 force @a[distance=.5..64]
tag @a[distance=..4,tag=!RX-12,gamemode=!spectator,scores={DeathTime=0},predicate=equipment/head/gas_mask] add RX-12

effect give @s[scores={emp=0}] strength 1 3 true
effect give @s[scores={emp=0}] resistance 1 3 true

execute at @s as @a[distance=..5,scores={DeathTime=1},predicate=!equipment/head/air] at @s run function custom_effects:diseases/rx-12/remove_gasmask
tag @e[type=item,tag=rx12.placeholder] remove rx12.placeholder
