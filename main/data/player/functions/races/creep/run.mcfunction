execute if entity @s[scores={DeathTime=1},advancements={races/creep/2=false}] run function player:races/creep/combust
execute if entity @s[scores={DeathTime=1},advancements={races/creep/2=true}] run function player:races/creep/upgrades/charged_combust

execute if entity @s[scores={DeathTime=0},advancements={races/creep/1=true},predicate=!effects/absorption] run function player:races/creep/upgrades/entropic_shield
