scoreboard players set limit rng 10
function debug:rng/run
execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet
execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..64] run function myst:mobs/rift_mage/spells/shulker_bullet

execute if score output rng matches 1 run function myst:mobs/rift_mage/spells/lightning
execute if score output rng matches 2 run function myst:mobs/rift_mage/spells/multiply
execute if score output rng matches 3 run function myst:mobs/rift_mage/spells/swap
execute if score output rng matches 4 unless entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..4] if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..32] run effect give @s glowing 1 0 true


execute if entity @s[tag=!remaster] if score output rng matches 4 unless entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..4] as @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..32] run function myst:mobs/rift_mage/spells/spikes/summon
execute if entity @s[tag=remaster] if score output rng matches 4 as @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..32] run function myst:mobs/rift_mage/spells/spikes/summon



scoreboard players reset @s spell.timer