playsound block.piston.contract master @a ~ ~ ~ .5 2

execute store result score @s a.deagle run data get entity @s SelectedItem.tag.ammo
scoreboard players set @s m.deagle 1
replaceitem entity @s weapon.mainhand air