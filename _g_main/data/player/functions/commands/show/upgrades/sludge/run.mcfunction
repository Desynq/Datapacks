data modify storage local:upgrades "race" set from storage custom:upgrades "sludge"



tellraw @s {"color":"yellow","text":"----------------"}



execute if score %tier temp matches 1 run function player:commands/show/upgrades/sludge/routes/1

execute if score %tier temp matches 2 run function player:commands/show/upgrades/sludge/routes/2

execute if score %tier temp matches 3 run function player:commands/show/upgrades/sludge/tier_3



tellraw @s {"color":"yellow","text":"----------------"}
