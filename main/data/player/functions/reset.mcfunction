scoreboard players set @s[scores={fall=1..}] fall 0
scoreboard players set @s[scores={jump=1..}] jump 0
scoreboard players set @s[scores={sprint=1..}] sprint 0
scoreboard players set @s[scores={walk=1..}] walk 0
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players set @s[scores={isDead=1..}] isDead 0



execute if score @s droppedItem matches 1.. run scoreboard players set @s droppedItem 0



scoreboard players set @s[scores={u.totem=1..}] u.totem 0



##################
# Damage Tracking
##################

scoreboard players set @s[scores={damage=1..}] damage 0
scoreboard players set @s[scores={damage_taken=1..}] damage_taken 0
scoreboard players set @s[scores={blockedDamage=1..}] blockedDamage 0


scoreboard players set @s[scores={kb.zombie_v=1..}] kb.zombie_v 0


scoreboard players remove @s[scores={kill2=1..,killPlayer=1..}] kill2 1
scoreboard players remove @s[scores={kill2=1..,killWolf=1..}] kill2 1
scoreboard players remove @s[scores={killSoul=1..}] killSoul 1

scoreboard players set @s[scores={killPlayer=1..}] killPlayer 0
scoreboard players set @s[scores={killWolf=1..}] killWolf 0



################
# Miscellaneous
################

advancement revoke @s from debug:inventory_changed
advancement revoke @s from debug:consume_item



effect clear @s minecraft:luck
effect clear @s minecraft:unluck
