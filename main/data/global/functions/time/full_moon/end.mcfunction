tellraw @a {"color":"dark_purple","italic":"true","text":"The Full Moon has fallen"}
playsound entity.zombie_villager.converted master @a ~ ~ ~ 2147843647 1
execute as @e[type=item,predicate=dimension/overworld,nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0}
