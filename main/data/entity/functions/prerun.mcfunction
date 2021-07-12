execute unless score @s entUUID matches -2147483648..2147483647 run function entity:prerun/uuid


execute if entity @s[type=armor_stand] run function entity:prerun/armor_stand/run
