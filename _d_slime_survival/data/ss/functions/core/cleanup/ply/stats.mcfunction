###################
# Scoreboard Hooks
###################

execute if score @s fall matches 1.. run scoreboard players set fall 0

execute if score @s jump matches 1.. run scoreboard players set jump 0

execute if score @s sprint matches 1.. run scoreboard players set sprint 0

execute if score @s walk matches 1.. run scoreboard players set walk 0

execute if score @s sneak matches 1.. run scoreboard players set sneak 0

execute if score @s isDead matches 1.. run scoreboard players set isDead 0

execute if score @s droppedItem matches 1.. run scoreboard players set @s droppedItem 0


execute if score @s u.totem matches 1.. run scoreboard players set u.totem 0



##################
# Damage Tracking
##################

execute if score @s damageBlocked matches 1.. run scoreboard players set @s damageBlocked 0

execute if score @s damageDealt matches 1.. run scoreboard players set @s damageDealt 0

execute if score @s damageTaken matches 1.. run scoreboard players set @s damageTaken 0



#########
# Deaths
#########

scoreboard players set @s[scores={kb.zombie_v=1..}] kb.zombie_v 0


scoreboard players remove @s[scores={kill2=1..,killPlayer=1..}] kill2 1
scoreboard players remove @s[scores={kill2=1..,killWolf=1..}] kill2 1
scoreboard players remove @s[scores={killSoul=1..}] killSoul 1

scoreboard players set @s[scores={killPlayer=1..}] killPlayer 0
scoreboard players set @s[scores={killWolf=1..}] killWolf 0



################
# Miscellaneous
################

advancement revoke @s from ss:hook/inventory_changed
advancement revoke @s from ss:hook/consumed_an_item
advancement revoke @s from ss:hook/was_hurt
advancement revoke @s from ss:hook/was_killed



effect clear @s minecraft:luck
effect clear @s minecraft:unluck
