execute unless entity @s[scores={c.ak=0..}] run scoreboard players set @s c.ak 0

execute if entity @s[scores={c.ak=1..}] run function coas:guns/assault_rifle/cooldown

#firing
execute if entity @s[tag=!proning,scores={u.coas=1..,a.ar=1..,m.ar=1,c.ak=0},nbt={SelectedItem:{tag:{type:assault_rifle}}}] at @s run function coas:guns/assault_rifle/noscope



#unload
execute if entity @s[scores={m.ar=1..,u.coas=1..,sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{type:assault_rifle}}]}] unless entity @s[nbt={SelectedItem:{}},nbt=!{SelectedItem:{tag:{type:30rnd_7.62s_magazine}}}] at @s run function coas:guns/assault_rifle/unload

execute store result score @s slowdown run data get entity @s ActiveEffects[{Id:2b,Amplifier:3b}].Duration
effect clear @s[scores={slowdown=..15},nbt={ActiveEffects:[{Id:2b,Amplifier:3b}]}] slowness
