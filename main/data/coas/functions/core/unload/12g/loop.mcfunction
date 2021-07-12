scoreboard players remove @s ammo.offhand 1
give @s white_dye{CustomModelData:4,type:"5.56x45mm",display:{Name:'{"italic":"false","color":"white","text":"5.56mm NATO"}',Lore:['{"italic":"false","color":"gray","text":"Intermediate Ammunition"}']}} 1

execute if score @s ammo.offhand matches 1.. run function coas:core/unload/5.56mm/loop
