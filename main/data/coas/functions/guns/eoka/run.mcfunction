execute if entity @s[scores={u.coas=1..},nbt={SelectedItem:{tag:{type:eoka}}}] unless score @s a.eoka matches 1.. at @s run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5

execute if entity @s[scores={u.coas=1..,a.eoka=1..},nbt={SelectedItem:{tag:{type:eoka}}}] at @s run function coas:guns/eoka/prefiring

execute if entity @s[tag=reloadable,nbt={Inventory:[{Slot:-106b,tag:{type:eoka}},{id:"minecraft:stone_button"},{id:"minecraft:gunpowder"}]}] unless score @s a.eoka matches 1.. at @s run function coas:guns/eoka/reload