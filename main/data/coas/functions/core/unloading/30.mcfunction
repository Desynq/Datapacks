execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"gray","score":{"objective":"mag","name":"@a[tag=unloading]"}},{"italic":"false","color":"gray","text":"/30 Remaining"}]'
execute in overworld run data modify entity @s Item.tag.display.Lore[0] set from block 0 0 0 Text1

execute store result entity @s Item.tag.ammo int 1 run scoreboard players get @p mag
execute store result entity @s Item.tag.Damage int -.834 run scoreboard players operation @p mag -= 30 math

tag @s remove unloading
tag @a remove unloading