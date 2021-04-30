playsound block.bell.use master @a ~ ~ ~ 2147483647
playsound block.bell.resonate master @a ~ ~ ~ 2147483647

execute as @a[gamemode=!creative,gamemode=!spectator,distance=..32,nbt={DeathTime:0s}] at @a[gamemode=!creative,gamemode=!spectator,distance=..32,nbt={DeathTime:0s}] unless score @s list = @p list run function myst:mobs/rift_mage/spells/swap2