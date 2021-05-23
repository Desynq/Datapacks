execute if score gravestones datapack matches 1 as @a[gamemode=adventure,predicate=dimension/overworld,scores={DeathTime=1,x=-128..127,z=-128..127}] at @s unless entity @s[scores={x=-32..31,z=-32..31}] run function gravestones:runoffs

kill @e[type=chest_minecart,tag=grave,tag=checked,nbt=!{Items:[{}]}]
