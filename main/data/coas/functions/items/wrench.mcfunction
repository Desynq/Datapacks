playsound block.anvil.use master @a ~ ~ ~ 4 1.5



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand

execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.durability set value 0
execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.Damage set value 0

execute in minecraft:overworld run item replace entity @s weapon.offhand from block 0 0 1 container.0



item replace entity @s weapon.mainhand with air
