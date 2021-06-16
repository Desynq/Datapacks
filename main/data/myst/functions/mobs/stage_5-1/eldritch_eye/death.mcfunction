particle block soul_sand ~ ~0.5 ~ 0 0 0 0 5 force @a

scoreboard players add @s despawn2.timer 1

execute if score @s despawn2.timer matches 1 run playsound entity.wither.death master @a[distance=0..] ~ ~ ~ 2147483647 .5



execute if score @s despawn2.timer matches 100 run playsound entity.wither.break_block master @a[distance=0..] ~ ~ ~ 2147843647 .5
execute if score @s despawn2.timer matches 100 run summon item ~ ~ ~ {Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:48,type:fake_watch,display:{Name:'{"italic":"false","color":"aqua","text":"Stopwatch"}'}}},PickupDelay:100}
execute if score @s despawn2.timer matches 100 run kill @s
