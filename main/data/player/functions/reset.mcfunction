scoreboard players set @s[scores={fall=1..}] fall 0
scoreboard players set @s[scores={jump=1..}] jump 0
scoreboard players set @s[scores={sprint=1..}] sprint 0
scoreboard players set @s[scores={walk=1..}] walk 0
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players set @s[scores={isDead=1..}] isDead 0
scoreboard players set @s[scores={killPlayer=1..}] killPlayer 0
scoreboard players set @s[scores={killWolf=1..}] killWolf 0


scoreboard players set @s[scores={u.honey_bottle=1..}] u.honey_bottle 0
scoreboard players set @s[scores={u.rotten_flesh=1..}] u.rotten_flesh 0
scoreboard players set @s[scores={u.golden_apple=1..}] u.golden_apple 0
scoreboard players set @s[scores={u.poison_potato=1..}] u.poison_potato 0
scoreboard players set @s[scores={u.notch_apple=1..}] u.notch_apple 0

scoreboard players set @s[scores={damage=1..}] damage 0
scoreboard players set @s[scores={damage_taken=1..}] damage_taken 0


scoreboard players set @s[scores={kb.zombie_v=1..}] kb.zombie_v 0


scoreboard players remove @s[scores={killSoul=1..,killPlayer=1..}] killSoul 1
scoreboard players remove @s[scores={kill2=1..,killPlayer=1..}] kill2 1
scoreboard players remove @s[scores={kill2=1..,killWolf=1..}] kill2 1
scoreboard players remove @s[scores={killSoul=1..}] killSoul 1



advancement revoke @s from debug/invalid



effect clear @s unluck