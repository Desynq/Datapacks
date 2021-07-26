effect clear @s invisibility
effect clear @s speed
effect clear @s slowness
effect clear @s jump_boost

effect clear @a[gamemode=!spectator,gamemode=!creative,tag=!scp,tag=!173,scores={DeathTime=0},distance=0..] glowing
effect give @p[gamemode=!spectator,gamemode=!creative,tag=!scp,tag=!173,scores={DeathTime=0},distance=0..] glowing 1 0 true

execute unless score @s looked_at matches 1.. run function myst:scp/173/effect
execute unless score @s looked_at matches 2.. if score blink timer matches 90.. run function myst:scp/173/effect
effect give @s[predicate=!effects/speed] slowness 1 6 true
effect give @s[predicate=!effects/speed] jump_boost 1 128 true
scoreboard players reset @s looked_at

execute if entity @s[predicate=effects/invisibility,gamemode=creative] as @a[gamemode=!spectator,gamemode=!creative,tag=!scp,tag=!173,distance=..1.5,scores={DeathTime=0}] run function myst:scp/173/kill

item replace entity @s armor.head with player_head{SkullOwner:scp173}
item replace entity @s armor.chest with leather_chestplate{display:{color:16707231}}
item replace entity @s armor.legs with leather_leggings{display:{color:16707231}}
item replace entity @s armor.feet with leather_boots{display:{color:16707231}}

execute as @a[gamemode=!spectator,gamemode=!creative,scores={DeathTime=0},tag=!scp,tag=!173,distance=..32] at @s run function myst:scp/173/ray_spawn
