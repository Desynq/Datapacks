execute unless entity @s[scores={c.hk=0..}] run scoreboard players set @s c.hk 0
execute unless entity @s[scores={c2.hk=0..}] run scoreboard players set @s c2.hk 0
execute unless entity @s[scores={t.hk=0..}] run scoreboard players set @s t.hk 0
execute unless entity @s[scores={f.hk=1..}] run scoreboard players set @s f.hk 1


execute if entity @s[scores={u.coas=1..,c.hk=0,a.hk=1..,f.hk=1..2},nbt={SelectedItem:{tag:{type:hk416}}}] at @s run function coas:guns/hk/firing
execute if entity @s[scores={u.coas=1..,c2.hk=0,f.hk=3},nbt={SelectedItem:{tag:{type:hk416}},Inventory:[{id:"minecraft:firework_rocket"}]}] at @s run function coas:guns/hk/gl_fire

scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{tag:{Tags:["mag"]}}}] f.hk 1
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{tag:{Tags:["mag"]}}}] run playsound block.stone_button.click_on master @a ~ ~ ~ 1 1.5
scoreboard players set @s[scores={f.hk=4..}] f.hk 1

execute if entity @s[scores={u.coas=1..,sneak=1..,m.hk=1..},nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] at @s run function coas:guns/hk/unload

execute if entity @s[scores={c.hk=1..}] at @s run function coas:guns/hk/cooldown
execute if entity @s[scores={c2.hk=1..}] at @s run function coas:guns/hk/cooldown2