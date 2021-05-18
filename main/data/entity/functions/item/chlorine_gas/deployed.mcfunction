execute unless entity @s[nbt={Invulnerable:1b}] run data merge entity @s {Invulnerable:1,PickupDelay:32767}
kill @e[type=item,nbt={Item:{tag:{type:chlorine_gas_grenade}}},nbt=!{OnGround:1b},distance=.5..5]


scoreboard players add @s despawn.timer 1
particle dust 1 1 0 10 ~ ~1.5 ~ 3 1 3 0 20 normal @a


execute as @a[distance=..5] at @s run function entity:item/chlorine_gas/player
effect give @e[type=#mob,type=!#undead,tag=!boss,distance=..5,nbt=!{Inventory:[{Slot:103b,tag:{type:hazmat_mask}}]},nbt=!{Inventory:[{Slot:103b,tag:{Tags:["gas_mask"]}}]}] instant_damage 1 0 true


execute if entity @s[scores={despawn.timer=1}] run playsound block.iron_door.open master @a[distance=0..] ~ ~ ~ 2 .5
execute if entity @s[scores={despawn.timer=5}] run playsound entity.generic.burn master @a[distance=0..] ~ ~ ~ 2 .5
execute if entity @s[scores={despawn.timer=250}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=260}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=270}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=280}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if entity @s[scores={despawn.timer=290}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2

execute if entity @s[scores={despawn.timer=300}] run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 .5
kill @s[scores={despawn.timer=300..}]