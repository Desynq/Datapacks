scoreboard players add turret.1 timer 1
execute if score turret.1 timer matches 10.. in overworld positioned -243 17 -82 as @a[gamemode=!spectator,gamemode=!creative,distance=..50,scores={DeathTime=0}] run function slime:turret/summon
execute if score turret.1 timer matches 10.. run scoreboard players set turret.1 timer 0
