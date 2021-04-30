execute if score portal temp matches 0 run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 2147483647 .5
execute if score portal temp matches 0 run tellraw @s {"color":"dark_purple","text":"The Rift seems to be refusing to open..."}

execute if score portal temp matches 1 if entity @s[predicate=dimension/overworld] run function myst:portal/enter