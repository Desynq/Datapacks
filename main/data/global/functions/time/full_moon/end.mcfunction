tellraw @a {"color":"dark_purple","italic":"true","text":"The Full Moon has fallen"}
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2147843647 1



execute as @e[type=item,predicate=minecraft:dimension/overworld,nbt={NoGravity:true}] run data merge entity @s {NoGravity:false}
execute as @e[type=boat,predicate=minecraft:dimension/overworld,nbt={NoGravity:true}] run data merge entity @s {NoGravity:false}
