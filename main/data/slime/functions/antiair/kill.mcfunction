playsound entity.ender_dragon.death master @a[distance=0..] ~ ~ ~ 64 1.5
particle lava ~ ~1 ~ 1 1 1 0 100 force @a
scoreboard players reset @s antiair

gamerule showDeathMessages false
kill @s

scoreboard players set limit rng 5
function math:rng

execute if score output rng matches 0 run tellraw @a [{"selector":"@s"},{"color":"white","text":" ate a SAMwich"}]
execute if score output rng matches 1 run tellraw @a [{"selector":"@s"},{"color":"white","text":" flew too close to the \"Sun\""}]
execute if score output rng matches 2 run tellraw @a [{"selector":"@s"},{"color":"white","text":" didn't read the war memo"}]
execute if score output rng matches 3 run tellraw @a [{"selector":"@s"},{"color":"white","text":" became one with an anti-air missile"}]
execute if score output rng matches 4 run tellraw @a [{"selector":"@s"},{"color":"white","text":"'s elytra wasn't fast enough"}]

gamerule showDeathMessages true
