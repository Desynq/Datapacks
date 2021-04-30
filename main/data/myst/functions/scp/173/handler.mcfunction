effect clear @s invisibility
effect clear @s speed
effect clear @s slowness
effect clear @s weakness


execute unless score @s looked_at matches 1.. run function myst:scp/173/effect
execute unless score @s looked_at matches 2.. if score blink timer matches 90.. run function myst:scp/173/effect
effect give @s[nbt=!{ActiveEffects:[{Id:1b}]}] slowness 1 9 true
scoreboard players reset @s looked_at

execute if entity @s[nbt={ActiveEffects:[{Id:5b}]},gamemode=creative] as @a[gamemode=!spectator,gamemode=!creative,tag=!scp,tag=!173,distance=..1,tag=!dead] run function myst:scp/173/kill

replaceitem entity @s armor.head player_head{SkullOwner:scp173}
replaceitem entity @s armor.chest leather_chestplate{display:{color:16707231}}
replaceitem entity @s armor.legs leather_leggings{display:{color:16707231}}
replaceitem entity @s armor.feet leather_boots{display:{color:16707231}}

execute as @a[gamemode=!spectator,gamemode=!creative,tag=!dead,tag=!173,distance=..32] at @s run function myst:scp/173/ray_spawn