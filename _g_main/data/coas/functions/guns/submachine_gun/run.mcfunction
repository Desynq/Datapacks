#firing
execute if entity @s[tag=!proning,scores={u.coas=1..,a.smg=1..,m.smg=1},nbt={SelectedItem:{tag:{type:submachine_gun}}}] at @s run function coas:guns/submachine_gun/prefire
execute if entity @s[tag=proning,scores={u.coas=1..,a.smg=1..,m.smg=1},nbt={SelectedItem:{tag:{type:submachine_gun}}}] at @s positioned ^ ^-1.175 ^1 run function coas:guns/submachine_gun/prefire


#firemode
scoreboard players add @s[nbt={Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] f.smg 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]},scores={u.coas=1..,sneak=0},nbt=!{SelectedItem:{}}] run playsound block.stone_button.click_on master @a ~ ~ ~ 1 1.5
scoreboard players set @s[scores={f.smg=3..}] f.smg 0


#unload
execute if entity @s[scores={m.smg=1..,u.coas=1..,sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]}] unless entity @s[nbt={SelectedItem:{}},nbt=!{SelectedItem:{tag:{type:p90_magazine}}}] at @s run function coas:guns/submachine_gun/unload