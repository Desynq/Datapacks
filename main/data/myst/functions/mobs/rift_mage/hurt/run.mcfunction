playsound entity.evoker.prepare_summon master @a[distance=0..] ~ ~ ~ 2 1.25

scoreboard players set limit rng 2
function debug:rng/run
execute unless entity @s[tag=remaster] unless entity @s[tag=stage2] if score output rng matches 0 run function myst:mobs/rift_mage/hurt/reposition
execute unless entity @s[tag=remaster] unless entity @s[tag=stage2] if score output rng matches 1 run function myst:mobs/rift_scavenger/summon

execute unless entity @s[tag=remaster] if entity @s[tag=stage2] if score output rng matches 0 run function myst:mobs/rift_mage/spells/multiply
execute unless entity @s[tag=remaster] if entity @s[tag=stage2] run function myst:mobs/rift_mage/hurt/reposition

execute if entity @s[tag=remaster] run function myst:mobs/rift_scavenger/summon

#function myst:mobs/rift_scavenger/summon

data merge entity @s {HurtTime:0s}