execute if entity @s[predicate=effects/night_vision_1] unless entity @s[gamemode=!adventure,gamemode=!survival] run effect clear @s night_vision
execute if entity @s[predicate=effects/night_vision_1] unless entity @s[scores={emp=0},gamemode=!creative,gamemode=!spectator] run effect clear @s night_vision

effect give @s[gamemode=!adventure,gamemode=!survival,predicate=equipment/head/nvg] night_vision 2048 1 true
effect give @s[gamemode=!creative,gamemode=!spectator,scores={emp=0},predicate=equipment/head/nvg] night_vision 2048 1 true