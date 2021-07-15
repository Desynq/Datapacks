execute if entity @s[nbt=!{HurtTime:0s}] run function myst:mobs/rift_mage/hurt/run

effect give @s minecraft:slow_falling 1 0 true

execute if entity @a[scores={DeathTime=1},distance=..64] if entity @s[tag=!remaster] run effect give @s minecraft:instant_damage 10 1 true
execute if entity @a[scores={DeathTime=1},distance=..64] if entity @s[tag=remaster] run effect give @s minecraft:instant_damage 10 4 true





execute if entity @s[predicate=effects/absorption,tag=!stage2] run function myst:mobs/rift_mage/stage2

execute if entity @s[tag=stage2] run function myst:mobs/rift_mage/spells/timer
