scoreboard players add @s t.br 1
execute as @s[scores={t.br=4,a.br=1..},nbt={SelectedItem:{tag:{type:burst_rifle}}}] at @s run function coas:guns/burst_rifle/firing2
execute as @s[scores={t.br=6,a.br=1..},nbt={SelectedItem:{tag:{type:burst_rifle}}}] at @s run function coas:guns/burst_rifle/firing2
scoreboard players reset @s[scores={t.br=6..}] t.br