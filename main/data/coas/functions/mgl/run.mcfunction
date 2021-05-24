execute unless entity @s[scores={a.mgl=0..}] run scoreboard players set @s a.mgl 0
execute unless entity @s[scores={type.mgl=0..}] run scoreboard players set @s type.mgl 0

# firing
execute if entity @s[scores={u.coas=1..,a.mgl=1..,type.mgl=0},nbt={SelectedItem:{tag:{type:mgl}}}] run function coas:mgl/firing/chemical
execute if entity @s[scores={u.coas=1..,a.mgl=1..,type.mgl=1},nbt={SelectedItem:{tag:{type:mgl}}}] run function coas:mgl/firing/explosive

execute if entity @s[scores={u.coas=1..,a.mgl=1..,type.mgl=0,sneak=0},nbt={Inventory:[{Slot:-106b,tag:{type:mgl}}]}] run function coas:mgl/firing/chemical
execute if entity @s[scores={u.coas=1..,a.mgl=1..,type.mgl=1,sneak=0},nbt={Inventory:[{Slot:-106b,tag:{type:mgl}}]}] run function coas:mgl/firing/explosive

# reload
execute if entity @s[tag=reloadable,scores={a.mgl=..5},nbt={Inventory:[{Slot:-106b,tag:{type:mgl}}]}] run function coas:mgl/reload

# swap ammo type
execute if entity @s[scores={sneak=1,u.coas=1},nbt={Inventory:[{Slot:-106b,tag:{type:mgl}}]}] run function coas:mgl/swap
