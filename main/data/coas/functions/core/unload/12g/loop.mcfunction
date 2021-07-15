scoreboard players remove @s ammo.offhand 1
give @s white_dye{CustomModelData:100,type:"12gauge",display:{Name:'{"italic":"false","color":"white","text":"12 Gauge"}',Lore:['{"italic":"false","color":"gray","text":"Velocity: 30m/s"}','{"italic":"false","color":"gray","text":"Pellets: 12"}']}} 1

execute if score @s ammo.offhand matches 1.. run function coas:core/unload/12g/loop
