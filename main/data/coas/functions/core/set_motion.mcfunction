# motion = 0.1 * distance
# to the thousandth degree
execute store result entity @s Motion[0] double .001 run data get entity @e[type=marker,tag=bullet.marker,limit=1] Pos[0] 1000
execute store result entity @s Motion[1] double .001 run data get entity @e[type=marker,tag=bullet.marker,limit=1] Pos[1] 1000
execute store result entity @s Motion[2] double .001 run data get entity @e[type=marker,tag=bullet.marker,limit=1] Pos[2] 1000

tag @s add marked
kill @e[type=marker,tag=bullet.marker]
