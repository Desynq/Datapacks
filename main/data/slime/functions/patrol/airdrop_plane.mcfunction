summon iron_golem ~ ~ ~ {Tags:["patrol","boss"],CustomName:'{"color":"gray","text":"Airdrop Plane"}',Health:1024,Attributes:[{Name:generic.max_health,Base:1024}]}
execute store result entity @e[type=iron_golem,tag=patrol,tag=!set,limit=1] Health float 1 run scoreboard players get sethp patrol
execute store result entity @e[type=iron_golem,tag=patrol,tag=!set,limit=1] Attributes[{Name:generic.max_health}].Base double 1 run scoreboard players get sethp patrol

tag @e[type=iron_golem,tag=patrol,tag=!set] add set