gamerule showDeathMessages false



effect give @s minecraft:instant_damage 1 4 true

execute store result score @s DeathTime run data get entity @s DeathTime 1
execute if entity @s[scores={DeathTime=1}] run tellraw @a [{"selector":"@s"},{"color":"white","text":" got shot by an Anti-Materiel Rifle"}]



gamerule showDeathMessages true
scoreboard players operation @s lastHurtBy = UUID temp
