execute if entity @s[scores={c.mp5a3=1..}] at @s run function coas:guns/mp5a3/cooldown



execute if entity @s[scores={u.coas=1..},predicate=entity:equipment/mainhand/coas/gun/mp5] unless score @s a.mp5a3 matches 1.. at @s run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5
execute if entity @s[scores={u.coas=1..,sneak=0},predicate=entity:equipment/offhand/coas/gun/mp5,predicate=entity:equipment/mainhand/air] unless score @s a.mp5a3 matches 1.. at @s run playsound minecraft:block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5





execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..},predicate=entity:equipment/mainhand/coas/gun/mp5] unless score @s c.mp5a3 matches 1.. run function coas:guns/mp5a3/prefire





scoreboard players add @s[scores={u.coas=1..,sneak=0},predicate=entity:equipment/offhand/coas/gun/mp5,predicate=entity:equipment/mainhand/air] f.mp5a3 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5a3}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5
scoreboard players set @s[scores={f.mp5a3=2..}] f.mp5a3 0



execute if entity @s[scores={u.coas=1..,sneak=1..,m.mp5a3=1},nbt={Inventory:[{Slot:-106b,tag:{type:mp5a3}}]},nbt=!{SelectedItem:{}}] at @s run function coas:guns/mp5a3/unload
