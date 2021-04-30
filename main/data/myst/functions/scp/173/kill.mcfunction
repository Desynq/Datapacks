gamerule showDeathMessages false

kill @s
tellraw @a [{"selector":"@s"},{"color":"white","text":" got their neck snapped"}]

gamerule showDeathMessages true