execute if entity @s[scores={damage=1..},nbt={Attributes:[{Modifiers:[{Name:"random_crit"}]}]}] run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 2147483647 2

attribute @s generic.attack_damage modifier remove 0-0-0-0-0
attribute @s generic.luck modifier remove 0-0-0-0-1
attribute @s generic.luck modifier remove 0-0-0-0-2



execute if entity @s[tag=zapped] run tag @s remove zapped

execute if score @s diedFrom matches 1.. run scoreboard players reset @s diedFrom
execute unless score @s insulation matches 0 run scoreboard players set @s insulation 0
