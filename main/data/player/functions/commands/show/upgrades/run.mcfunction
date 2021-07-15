execute if score %tier temp matches 1..5 run function player:commands/show/upgrades/valid

execute unless score %tier temp matches 1..5 run tellraw @s {"color":"red","text":"Only tiers 1 through 5 are accepted!"}
