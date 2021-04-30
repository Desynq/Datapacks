execute unless entity @s[scores={c.deagle=0..}] run scoreboard players set @s c.deagle 0

execute if entity @s[scores={c.deagle=1..}] at @s run function coas:guns/desert_eagle/cooldown

execute if entity @s[scores={u.coas=1..,c.deagle=0,a.deagle=1..},nbt={SelectedItem:{tag:{type:desert_eagle}}}] at @s run function coas:guns/desert_eagle/firing

execute if entity @s[scores={u.coas=1..,sneak=1..,m.deagle=1..},nbt={Inventory:[{Slot:-106b,tag:{type:desert_eagle}}]}] at @s run function coas:guns/desert_eagle/unload

execute if entity @s[scores={d.deagle=140..}] at @s run function coas:guns/desert_eagle/break