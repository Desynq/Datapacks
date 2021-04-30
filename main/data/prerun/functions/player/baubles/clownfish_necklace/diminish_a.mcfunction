execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from storage inventory baubles[{Slot:34b}].id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from storage inventory baubles[{Slot:34b}].Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from storage inventory baubles[{Slot:34b}].tag

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players remove durability temp 1

execute in overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"yellow","text":"Durability: "},{"italic":"false","color":"yellow","score":{"objective":"temp","name":"durability"}},{"italic":"false","color":"yellow","text":"/1440"}]'
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[2] set from block 0 0 0 Text1

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -0.05 run scoreboard players remove durability temp 1440

execute in overworld run loot replace entity @s inventory.25 1 mine 0 0 1 air{drop_contents:true}