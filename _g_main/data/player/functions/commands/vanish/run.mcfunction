execute if data storage minecraft:arguments {boolean:true} run scoreboard players set @s admin.vanish 1
execute if data storage minecraft:arguments {boolean:false} run scoreboard players set @s admin.vanish 0

data remove storage minecraft:arguments boolean
