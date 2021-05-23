gamerule showDeathMessages false
kill @s

execute store success score ran temp if block ~ ~ ~ lava run tellraw @a [{"selector":"@s"},{"color":"white","text":" tried to swim in lava"}]
execute unless score ran temp matches 1 store success score ran temp if block ~ ~ ~ fire run tellraw @a [{"selector":"@s"},{"color":"white","text":" went up in flames"}]

execute unless score ran temp matches 1 run tellraw @a [{"selector":"@s"},{"color":"white","text":" burned to death"}]
gamerule showDeathMessages true
