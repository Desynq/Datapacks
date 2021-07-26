execute unless entity @s[scores={c.br=0..}] run scoreboard players set @s c.br 0
execute unless entity @s[scores={f.br=0..}] run scoreboard players set @s f.br 0

execute if entity @s[scores={c.br=1..}] at @s run function coas:guns/burst_rifle/cooldown

execute if entity @s[scores={u.coas=1..,c.br=0,a.br=1..,f.br=1..},nbt={SelectedItem:{tag:{type:burst_rifle}}}] unless score @s d.br matches 540.. at @s run function coas:guns/burst_rifle/firing
execute if entity @s[scores={u.coas=1..,a.br=0,f.br=1..},nbt={SelectedItem:{tag:{type:burst_rifle}}}] at @s run playsound item.flintandsteel.use master @a

execute if entity @s[scores={t.br=1..}] at @s run function coas:guns/burst_rifle/timer

scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] f.br 1
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] run playsound block.stone_button.click_on master @a ~ ~ ~ 1 1.5
scoreboard players set @s[scores={f.br=3..}] f.br 0

execute if entity @s[scores={u.coas=1..,sneak=1..,m.br=1},nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]}] unless data entity @s SelectedItem at @s run function coas:guns/burst_rifle/unload