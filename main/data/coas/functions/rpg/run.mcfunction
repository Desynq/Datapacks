execute if entity @s[scores={u.coas=1..,a.rpg=1..},nbt={SelectedItem:{tag:{type:rpg}}}] run function coas:rpg/firing

execute if entity @s[tag=reloadable,scores={a.rpg=0},nbt={Inventory:[{Slot:-106b,tag:{type:rpg}},{tag:{type:explosive_arrow}}]}] run function coas:rpg/reload