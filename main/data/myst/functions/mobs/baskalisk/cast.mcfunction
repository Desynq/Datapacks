scoreboard players set limit rng 10
function debug:rng/run
execute if score output rng matches 0..3 if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet
execute if score output rng matches 0..3 if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet

execute if score output rng matches 4 positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..32] run function myst:mobs/rift_mage/spells/spikes/summon


scoreboard players reset @s spell.timer