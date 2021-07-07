execute store result score @s ent.hp run data get entity @s Health 10
execute store result entity @s Health float 0.1 run scoreboard players remove @s ent.hp 3000



data merge entity @s {HurtTime:10}
scoreboard players operation @s lastHurtBy = UUID0 temp
