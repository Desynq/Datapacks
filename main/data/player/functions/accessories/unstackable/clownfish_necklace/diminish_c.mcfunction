execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s inventory.26



execute in minecraft:overworld store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players remove durability temp 1

execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"yellow","text":"Durability: "},{"italic":"false","color":"yellow","score":{"objective":"temp","name":"durability"}},{"italic":"false","color":"yellow","text":"/1440"}]'
execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[2] set from block 0 0 0 Text1

execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -0.01736 run scoreboard players remove durability temp 1440



execute in minecraft:overworld run item replace entity @s inventory.26 from block 0 0 1 container.0
