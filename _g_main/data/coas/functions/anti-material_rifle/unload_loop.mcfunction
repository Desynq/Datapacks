scoreboard players remove @s ammo.offhand 1
give @s written_book{CustomModelData:1,type:"bmg_ammo",HideFlags:32,generation:3,display:{Name:'{"italic":"false","color":"white","text":".50 BMG Round"}'}} 1

execute if score @s ammo.offhand matches 1.. run function coas:anti-material_rifle/unload_loop
