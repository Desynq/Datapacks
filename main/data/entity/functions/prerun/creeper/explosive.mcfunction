summon minecraft:marker ~ ~ ~ {Tags:["temp","explosive.marker"]}

scoreboard players operation @e[type=marker,tag=temp] entOwner = @s entUUID

tag @e[type=marker,tag=temp] remove temp
