tellraw @a [{"selector":"@s"},{"text":" was ripped to shreds by a soul flare"}]

gamerule showDeathMessages false
kill @s
tag @s add dead
gamerule showDeathMessages true
