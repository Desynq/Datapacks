scoreboard players set 10 math 10

scoreboard players operation %int temp = @s percentHealth
scoreboard players operation %int temp /= 10 math

scoreboard players operation %dec temp = @s percentHealth
scoreboard players operation %dec temp %= 10 math



tellraw @s [{"color":"gray","text":"Health% = "},{"color":"gold","score":{"name":"%int","objective":"temp"}},{"color":"gold","text":"."},{"color":"gold","score":{"name":"%dec","objective":"temp"}},{"color":"gold","text":"%"}]
