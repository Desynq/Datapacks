execute unless entity @s[scores={c.lmg=0..}] run scoreboard players set @s c.lmg 0

execute if entity @s[scores={c.lmg=1..}] at @s run function coas:guns/light_machine_gun/cooldown

execute if entity @s[scores={u.coas=1..,c.lmg=0,a.lmg=1..},nbt={SelectedItem:{tag:{type:light_machine_gun}}}] at @s run function coas:guns/light_machine_gun/firing

execute if entity @s[tag=reloadable,scores={a.lmg=..99},nbt={Inventory:[{Slot:-106b,tag:{type:light_machine_gun}}]}] at @s run function coas:guns/light_machine_gun/reload

execute if entity @s[scores={d.lmg=400..}] at @s run function coas:guns/light_machine_gun/break