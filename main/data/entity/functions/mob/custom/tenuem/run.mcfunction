particle soul_fire_flame ~ ~ ~ 3 3 3 0.1 20 force @a
execute positioned ~ ~ ~ run effect give @a[gamemode=!spectator,gamemode=!creative,distance=..10] instant_damage 1 1 true

execute if entity @s[nbt={Invulnerable:true}] unless entity @e[type=phantom,tag=tenuem_acolyte] unless entity @e[type=wither] run data merge entity @s {Invulnerable:false}
