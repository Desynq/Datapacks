tellraw @a [{"selector":"@s"},{"text":" was ripped to shreds by a soul flare"}]

gamerule showDeathMessages false
kill @s
scoreboard players set @s DeathTime -1
gamerule showDeathMessages true
