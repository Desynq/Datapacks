tellraw @a {"color":"dark_red","text":"Disabling \"file/main\""}
datapack disable "file/main"

tellraw @a {"color":"dark_red","text":"Disabling \"file/_advancements\""}
datapack disable "file/_advancements"

tellraw @a {"color":"dark_red","text":"Disabling \"file/_recipes\""}
datapack disable "file/_recipes"

tellraw @a {"color":"dark_red","text":"Disabling \"file/_loot_tables\""}
datapack disable "file/_loot_tables"

tellraw @a {"color":"dark_red","text":"Disabling \"file/_dimensions\""}
datapack disable "file/_dimensions"

tellraw @a {"color":"dark_red","text":"Disabling \"file/DesynqLib\""}
datapack disable "file/DesynqLib"




##############
# Re-Enabling
##############

tellraw @a {"color":"dark_green","text":"Enabling \"file/DesynqLib\""}
datapack enable "file/DesynqLib" last

tellraw @a {"color":"dark_green","text":"Enabling \"file/_dimensions\""}
datapack enable "file/_dimensions" last

tellraw @a {"color":"dark_green","text":"Enabling \"file/_loot_tables\""}
datapack enable "file/_loot_tables" last

tellraw @a {"color":"dark_green","text":"Enabling \"file/_recipes\""}
datapack enable "file/_recipes" last

tellraw @a {"color":"dark_green","text":"Enabling \"file/_advancements\""}
datapack enable "file/_advancements" last

tellraw @a {"color":"dark_green","text":"Enabling \"file/main\""}
datapack enable "file/main" last
