execute in overworld run summon area_effect_cloud 0 0 0 {Radius:0,Tags:["math.rng"]}
execute store result score output rng store result score x rng run data get entity @e[type=area_effect_cloud,tag=math.rng,limit=1] UUID[0]
kill @e[type=area_effect_cloud,tag=math.rng]

execute if score limit rng matches ..0 run scoreboard players set limit rng 1
scoreboard players operation output rng %= limit rng