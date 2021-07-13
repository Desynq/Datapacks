execute unless entity @a unless score doDaylightCycle gamerule matches 0 run time add 1
execute if score doDaylightCycle gamerule matches 0 run time add 1


tellraw @a {"color":"dark_green","text":"|> The Deadzone has been resupplied"}


## Watchtower
data merge block 27 47 26 {LootTable:"custom:wasteland"}



## Mechanic Shop
data merge block -108 33 62 {LootTable:"custom:radtown/mechanic_shop"}
data merge block -106 31 57 {LootTable:"custom:radtown/mechanic_shop"}
data merge block -100 31 50 {LootTable:"custom:radtown/mechanic_shop"}
data merge block -99 33 71 {LootTable:"custom:radtown/mechanic_shop"}
data merge block -112 31 60 {LootTable:"custom:radtown/mechanic_shop"}



## Supermarket
data merge block -59 32 13 {LootTable:"custom:radtown/supermarket"}
data merge block -59 31 13 {LootTable:"custom:radtown/supermarket"}
data merge block -58 31 13 {LootTable:"custom:radtown/supermarket"}
data merge block -58 31 12 {LootTable:"custom:radtown/supermarket"}
data merge block -59 31 12 {LootTable:"custom:radtown/supermarket"}

data merge block -56 31 13 {LootTable:"custom:radtown/supermarket"}
data merge block -56 31 12 {LootTable:"custom:radtown/supermarket"}
data merge block -56 32 12 {LootTable:"custom:radtown/supermarket"}
data merge block -55 31 12 {LootTable:"custom:radtown/supermarket"}
data merge block -55 31 13 {LootTable:"custom:radtown/supermarket"}
data merge block -55 32 13 {LootTable:"custom:radtown/supermarket"}

data merge block -53 20 14 {LootTable:"custom:military"}
data merge block -50 20 18 {LootTable:"custom:military"}



## Warehouse
data merge block -68 31 65 {LootTable:"custom:radtown/warehouse"}
data merge block -75 31 64 {LootTable:"custom:radtown/warehouse"}
data merge block -74 31 57 {LootTable:"custom:radtown/warehouse"}
data merge block -79 31 56 {LootTable:"custom:radtown/warehouse"}
data merge block -65 31 48 {LootTable:"custom:radtown/warehouse"}
data merge block -65 31 57 {LootTable:"custom:radtown/warehouse"}
data merge block -65 31 60 {LootTable:"custom:radtown/warehouse"}
data merge block -70 36 54 {LootTable:"custom:radtown/warehouse"}
data merge block -70 31 44 {LootTable:"custom:radtown/warehouse"}
data merge block -70 39 65 {LootTable:"custom:elite"}



## News Press
data merge block -84 31 19 {LootTable:"custom:radtown/news_press"}
data merge block -70 36 19 {LootTable:"custom:radtown/news_press"}
data merge block -80 41 18 {LootTable:"custom:radtown/news_press"}



## Radio Tower
data merge block -59 83 -17 {LootTable:"custom:container/treasure"}



## Camping Site
data merge block 110 31 106 {LootTable:"custom:wasteland"}


	
## Excavator
data merge block -15 67 -92 {LootTable:"custom:container/treasure"}

data merge block -12 35 -88 {LootTable:"custom:container/mining"}
data merge block -31 44 -90 {LootTable:"custom:container/mining"}
data merge block -35 49 -88 {LootTable:"custom:container/mining"}
data merge block -15 58 -90 {LootTable:"custom:container/mining"}



## Militia Base
data merge block 120 32 -124 {LootTable:"custom:military"}

data merge block 118 31 -124 {LootTable:"custom:wasteland"}
data merge block 122 31 -120 {LootTable:"custom:wasteland"}



## Militia Bunker
data merge block 117 17 -87 {LootTable:"custom:military"}
data merge block 112 18 -83 {LootTable:"custom:military"}

data merge block 111 17 -96 {LootTable:"custom:wasteland"}
data merge block 111 17 -106 {LootTable:"custom:wasteland"}
data merge block 119 17 -108 {LootTable:"custom:wasteland"}
data merge block 119 17 -103 {LootTable:"custom:wasteland"}
data merge block 119 17 -100 {LootTable:"custom:wasteland"}
