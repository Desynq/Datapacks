execute unless entity @s[scores={c.chemx=0..}] run scoreboard players set @s c.chemx 0

execute if entity @s[scores={c.chemx=1..}] at @s run function coas:guns/chemx/cooldown

execute if entity @s[scores={u.coas=1..,c.chemx=0},nbt={SelectedItem:{tag:{type:chemx_svd}}}] at @s run function coas:guns/chemx/firing