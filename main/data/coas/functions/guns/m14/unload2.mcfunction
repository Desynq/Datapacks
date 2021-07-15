execute store result entity @s Item.tag.ammo int 1 run scoreboard players get @p a.m14
scoreboard players operation @p mag = @p a.m14
execute store result entity @s Item.tag.Damage int -1.25 run scoreboard players operation @p mag -= 20 math

execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"gray","score":{"objective":"a.m14","name":"@a[tag=unloading]"}},{"italic":"false","color":"gray","text":"/20 Remaining"}]'
execute in minecraft:overworld run data modify entity @s Item.tag.display.Lore[0] set from block 0 0 0 Text1

tag @s remove unloading
