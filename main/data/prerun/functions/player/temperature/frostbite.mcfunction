gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"},{"color":"white","text":" froze to death"}]
gamerule showDeathMessages true