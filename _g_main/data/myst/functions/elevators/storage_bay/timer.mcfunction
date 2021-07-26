scoreboard players add @s elevator.timer 1

execute if entity @s[scores={elevator.timer=101}] run stopsound @s master
execute if entity @s[scores={elevator.timer=151}] run playsound block.chain.break master @s ~ ~ ~ 2147483647 .5

execute if entity @s[scores={elevator.timer=161}] run playsound entity.minecart.riding master @s ~ ~ ~ 2147843647
execute if entity @s[scores={elevator.timer=171}] run playsound entity.minecart.riding master @s ~ ~ ~ 2147843647
execute if entity @s[scores={elevator.timer=181}] run playsound entity.minecart.riding master @s ~ ~ ~ 2147843647

execute if entity @s[scores={elevator.timer=201..}] run function myst:elevators/storage_bay/tp