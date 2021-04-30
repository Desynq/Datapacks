playsound block.piston.contract master @a ~ ~ ~ .5 2

execute store result score @s a.mp5sd run data get entity @s SelectedItem.tag.ammo
scoreboard players set @s m.mp5sd 1
replaceitem entity @s weapon.mainhand air