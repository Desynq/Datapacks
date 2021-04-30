execute if entity @s[scores={u.coas=1..,a.vector=1..},nbt={SelectedItem:{tag:{type:vector}}}] at @s run function coas:guns/vector/firing

execute if entity @s[scores={u.coas=1..,sneak=1..,m.vector=1},nbt={Inventory:[{Slot:-106b,tag:{type:vector}}]}] at @s run function coas:guns/vector/unload