data modify storage local:upgrades "race" set from storage custom:upgrades "sludge"



execute if score %tier temp matches 1 run function player:commands/show/upgrades/local/tier_1

execute if score %tier temp matches 2 run function player:commands/show/upgrades/sludge/tier_2
execute if score %tier temp matches 3 run function player:commands/show/upgrades/sludge/tier_3
