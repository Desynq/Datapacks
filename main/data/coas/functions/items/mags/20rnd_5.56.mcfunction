playsound block.piston.contract master @a ~ ~ ~ .5 2

scoreboard players set @s m.m14 1
execute store result score @s a.m14 run data get entity @s SelectedItem.tag.ammo
replaceitem entity @s weapon.mainhand air