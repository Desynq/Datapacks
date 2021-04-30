execute unless entity @a unless score doDaylightCycle gamerule matches 0 run time add 1
execute if score doDaylightCycle gamerule matches 0 run time add 1


tellraw @a {"color":"dark_green","text":"|> The Deadzone has been resupplied"}

# Mechanic Shop
	data merge block -108 65 62 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -106 63 57 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -100 63 50 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -99 65 71 {LootTable:"custom:radtown/mechanic_shop"}
	data merge block -112 63 60 {LootTable:"custom:radtown/mechanic_shop"}
	
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
	
# Excavator
	data merge block -92 76 -57 {LootTable:"custom:military"}
	data merge block -95 76 -59 {LootTable:"custom:military"}