execute if entity @a if score doDaylightCycle gamerule matches 0 run time add 1
execute unless entity @a run time add 1

tellraw @a {"color":"dark_purple","italic":"true","text":"The Full Moon has risen"}
playsound entity.wither.spawn master @a ~ ~ ~ 2147843647 0.75
