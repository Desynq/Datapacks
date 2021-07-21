execute unless entity @s[nbt={Invulnerable:1b}] run data merge entity @s {Invulnerable:1b,PickupDelay:32767s}
kill @e[type=item,nbt={Item:{tag:{type:chlorine_gas_grenade}}},nbt=!{OnGround:1b},distance=0.1..5]


scoreboard players add @s despawn.timer 1
particle dust 1 1 0 10 ~ ~1.5 ~ 3 1 3 0 20 force @a[scores={lowDetailMode=0}]
particle dust 1 1 0 10 ~ ~1.5 ~ 3 1 3 0 2 normal @a[scores={lowDetailMode=1}]


execute as @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0,HurtTime=0},distance=..5] at @s unless entity @s[predicate=race/flora,advancements={races/flora/2=true}] run function entity:item/chlorine_gas/player
effect give @e[type=#mob,type=!player,type=!#undead,tag=!boss,predicate=!entity:equipment/head/gas_mask,distance=..5] instant_damage 1 1 true



execute if entity @s[scores={despawn.timer=1}] run playsound block.iron_door.open master @a[distance=0..] ~ ~ ~ 2 .5
execute if entity @s[scores={despawn.timer=5}] run playsound entity.generic.burn master @a[distance=0..] ~ ~ ~ 2 .5
execute if entity @s[scores={despawn.timer=250}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=260}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=270}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=280}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=290}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2

execute if entity @s[scores={despawn.timer=300}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 .5
kill @s[scores={despawn.timer=300..}]
