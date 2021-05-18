
execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..},predicate=entity/is/sneaking,predicate=equipment/mainhand/coas/light_machine_gun]

execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..,f.smg=2},predicate=equipment/mainhand/coas/submachine_gun]

execute store success score ran temp run execute if entity @s[scores={ammo=1..},predicate=entity/is/sneaking,predicate=equipment/mainhand/coas/minigun]
execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..},predicate=equipment/mainhand/coas/minigun,nbt={RootVehicle:{}}]

execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..,f.hk=2},predicate=equipment/mainhand/coas/hk416]

execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..},predicate=entity/is/sneaking,predicate=equipment/mainhand/coas/assault_rifle]

execute store success score ran temp run execute if entity @s[scores={ammo.mainhand=1..,f.mp5=1},predicate=entity/is/sneaking,predicate=equipment/mainhand/coas/mp5]



execute unless score ran temp matches 1 run scoreboard players set @s u.coas 0
execute if score @s u.coas matches 2.. run scoreboard players set @s u.coas 0
