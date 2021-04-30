playsound block.piston.contract master @a ~ ~ ~ .5 2

scoreboard players set @s m.ar 2
execute store result score @s a.ar run data get entity @s SelectedItem.tag.ammo
replaceitem entity @s weapon.mainhand air