bossbar set bosshp color blue

execute store success score ran temp if entity @s[type=#mob,tag=patrol] run bossbar set bosshp color yellow

execute store success score ran temp if entity @s[type=wither_skeleton] run bossbar set bosshp color purple

execute store success score ran temp if entity @s[type=#mob,team=militia] run bossbar set bosshp color green