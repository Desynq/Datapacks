playsound block.piston.contract master @a ~ ~ ~ .5 2

execute store result score @s a.vss run data get entity @s SelectedItem.tag.ammo
scoreboard players set @s m.vss 1
replaceitem entity @s weapon.mainhand air