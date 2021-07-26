execute if entity @s[nbt={OnGround:1b}] run function entity:item/chlorine_gas/deployed

execute if entity @s[nbt=!{Glowing:1b}] run data merge entity @s {Glowing:1}

execute if block ~ ~ ~ water run playsound block.fire.extinguish master @a[distance=0..] ~ ~ ~ 2 2
execute if block ~ ~ ~ water run kill @s
