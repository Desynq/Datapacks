execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s inventory.26



execute in minecraft:overworld store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players remove ice_cube durability 1

execute in minecraft:overworld run data modify block 0 0 0 Text1 set value '[{"italic":"false","color":"yellow","text":"Durability: "},{"italic":"false","color":"yellow","score":{"objective":"durability","name":"ice_cube"}},{"italic":"false","color":"yellow","text":"/1000"}]'
execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.display.Lore[2] set from block 0 0 0 Text1

execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int -0.025 run scoreboard players remove ice_cube durability 1000



execute in minecraft:overworld run item replace entity @s inventory.26 from block 0 0 1 container.0
