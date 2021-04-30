tp ^ ^ ^1
particle end_rod ^ ^1 ^-2 .1 .1 .1 0 10 force @a[distance=..128]
playsound entity.horse.breathe ambient @a ~ ~ ~ 4

execute positioned ~ ~.8 ~ if entity @e[distance=..1,type=#mob,type=!player] run summon creeper ~ ~ ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"a rail"',Tags:["explosive"]}
execute positioned ~ ~-.8 ~ if entity @e[distance=..1,type=#mob,type=!player] run summon creeper ~ ~.8 ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"a rail"',Tags:["explosive"]}
execute positioned ~ ~.8 ~ if entity @e[distance=..1,type=#mob,type=!player] run kill @s
execute positioned ~ ~-.8 ~ if entity @e[distance=..1,type=#mob,type=!player] run kill @s

execute if entity @s[scores={despawn.timer=5..}] positioned ~ ~.8 ~ if entity @a[distance=..1,gamemode=!spectator] run summon creeper ~ ~ ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"a rail"',Tags:["explosive"]}
execute if entity @s[scores={despawn.timer=5..}] positioned ~ ~-.8 ~ if entity @a[distance=..1,gamemode=!spectator] run summon creeper ~ ~.8 ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"a rail"',Tags:["explosive"]}
execute if entity @s[scores={despawn.timer=5..}] positioned ~ ~.8 ~ if entity @a[distance=..1,gamemode=!spectator] run kill @s
execute if entity @s[scores={despawn.timer=5..}] positioned ~ ~-.8 ~ if entity @a[distance=..1,gamemode=!spectator] run kill @s

execute positioned ~ ~.8 ~ unless block ~ ~ ~ #air unless block ~ ~.8 ~ #transparent run summon creeper ~ ~.8 ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"rail"',Tags:["explosive"]}
execute positioned ~ ~.8 ~ unless block ~ ~ ~ #air unless block ~ ~.8 ~ #transparent run kill @s

scoreboard players add @s despawn.timer 1
execute if entity @s[scores={despawn.timer=100..}] run summon creeper ~ ~.8 ~ {powered:1,Fuse:2,ignited:1,Invulnerable:1,Silent:1,DeathLootTable:"",CustomName:'"rail"',Tags:["explosive"]}
kill @s[scores={despawn.timer=100..}]