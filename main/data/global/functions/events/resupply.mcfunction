execute unless entity @a unless score doDaylightCycle gamerule matches 0 run time add 1
execute if score doDaylightCycle gamerule matches 0 run time add 1


tellraw @a {"color":"dark_green","text":"|> The Deadzone has been resupplied"}


# Watchtower
	data merge block 27 79 26 {LootTable:"custom:wasteland"}

# Mechanic Shop
	data merge block -108 65 62 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -106 63 57 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -100 63 50 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -99 65 71 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -112 63 60 {LootTable:"custom:radtown/mechanic_shop"}

# Supermarket
	data merge block -59 64 13 {LootTable:"custom:radtown/supermarket"}
	data merge block -59 63 13 {LootTable:"custom:radtown/supermarket"}
	data merge block -58 63 13 {LootTable:"custom:radtown/supermarket"}
	data merge block -58 63 12 {LootTable:"custom:radtown/supermarket"}
	data merge block -59 63 12 {LootTable:"custom:radtown/supermarket"}

	data merge block -56 63 13 {LootTable:"custom:radtown/supermarket"}
	data merge block -56 63 12 {LootTable:"custom:radtown/supermarket"}
	data merge block -56 64 12 {LootTable:"custom:radtown/supermarket"}
	data merge block -55 63 12 {LootTable:"custom:radtown/supermarket"}
	data merge block -55 63 13 {LootTable:"custom:radtown/supermarket"}
	data merge block -55 64 13 {LootTable:"custom:radtown/supermarket"}

	data merge block -53 52 14 {LootTable:"custom:military"}
	data merge block -50 52 18 {LootTable:"custom:military"}
	
# Warehouse
	data merge block -68 63 65 {LootTable:"custom:radtown/warehouse"}
	data merge block -75 63 64 {LootTable:"custom:radtown/warehouse"}
	data merge block -74 63 57 {LootTable:"custom:radtown/warehouse"}
	data merge block -79 63 56 {LootTable:"custom:radtown/warehouse"}
	data merge block -65 63 48 {LootTable:"custom:radtown/warehouse"}
	data merge block -65 63 57 {LootTable:"custom:radtown/warehouse"}
	data merge block -65 63 60 {LootTable:"custom:radtown/warehouse"}
	data merge block -70 68 54 {LootTable:"custom:radtown/warehouse"}
	data merge block -70 63 44 {LootTable:"custom:radtown/warehouse"}
	data merge block -70 71 65 {LootTable:"custom:elite"}
	
# News Press
	data merge block -84 63 19 {LootTable:"custom:radtown/news_press"}
	data merge block -70 68 19 {LootTable:"custom:radtown/news_press"}
	data merge block -80 73 18 {LootTable:"custom:radtown/news_press"}



# Radio Tower
	data merge block -59 115 -17 {LootTable:"custom:vault"}


	
# Excavator
	data merge block -92 76 -57 {LootTable:"custom:military"}
	data merge block -95 76 -59 {LootTable:"custom:military"}


	data merge block -3 99 -92 {LootTable:"custom:vault"}

	data merge block 0 67 -88 {LootTable:"custom:admin_base/miner"}
	data merge block -23 81 -88 {LootTable:"custom:admin_base/miner"}
	data merge block -19 76 -90 {LootTable:"custom:admin_base/miner"}
	data merge block -3 90 -90 {LootTable:"custom:admin_base/miner"}



# Cave Chasm
	data merge block 16 38 -65 {LootTable:"custom:admin_base/miner"}

# Fracture Wither Skeleton Spawner
	data merge block -37 18 -17 {LootTable:"custom:wasteland"}
	data merge block -38 19 -16 {LootTable:"custom:wasteland"}

# Fracture Easer Egg
	data merge block -65 27 -8 {LootTable:"chests/end_city_treasure"}

# Fracture Ravine Simple Dungeon
	data merge block -92 17 -25 {LootTable:"chests/simple_dungeon"}
	data merge block -90 17 -21 {LootTable:"chests/simple_dungeon"}
