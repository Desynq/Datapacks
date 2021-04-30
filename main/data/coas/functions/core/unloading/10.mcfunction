execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"gray","score":{"objective":"mag","name":"@a[tag=unloading]"}},{"italic":"false","color":"gray","text":"/10 Remaining"}]'
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[0] set from block 0 0 0 Text1

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players get @s mag
execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -2.5 run scoreboard players remove @s mag 10

tag @a remove unloading