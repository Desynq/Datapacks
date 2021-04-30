execute if entity @s[scores={c.mp5sd=1..}] at @s run function coas:guns/mp5sd/cooldown


execute if entity @s[scores={u.coas=1..},nbt={SelectedItem:{tag:{type:mp5sd}}}] unless score @s a.mp5sd matches 1.. at @s run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5
execute if entity @s[scores={u.coas=1..,sneak=0},nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] unless score @s a.mp5sd matches 1.. at @s run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5

execute if entity @s[scores={u.coas=1..,a.mp5sd=1..},nbt={SelectedItem:{tag:{type:mp5sd}}}] at @s unless score @s d.mp5sd matches 450.. unless score @s c.mp5sd matches 1.. run function coas:guns/mp5sd/prefire


scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] f.mp5sd 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5
scoreboard players set @s[scores={f.mp5sd=2..}] f.mp5sd 0


execute if entity @s[scores={u.coas=1..,sneak=1..,m.mp5sd=1},nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]},nbt=!{SelectedItem:{}}] at @s run function coas:guns/mp5sd/unload