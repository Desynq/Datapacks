scoreboard players set limit rng 4
function math:rng

execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet
execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet

execute if score output rng matches 1 unless entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..4] as @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..32] run function myst:mobs/rift_mage/spells/spikes/summon
