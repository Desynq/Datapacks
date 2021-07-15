execute as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID run tellraw @p {"nbt":"data.DisabledUpgrades","entity":"@s"}
