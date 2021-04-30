playsound block.piston.contract master @a ~ ~ ~ .5 2


scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]}] m.br 1
execute store result score @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]}] a.br run data get entity @s SelectedItem.tag.ammo

scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] m.hk 1
execute store result score @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] a.hk run data get entity @s SelectedItem.tag.ammo


replaceitem entity @s weapon.mainhand air