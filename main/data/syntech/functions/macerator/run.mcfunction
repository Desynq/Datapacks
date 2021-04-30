execute as @e[type=hopper_minecart,nbt={CustomName:'{"italic":false,"text":"Macerator"}'},tag=!data] run data merge entity @s {Tags:["data","macerator"],CustomDisplayTile:1,DisplayState:{Name:dispenser,Properties:{facing:up}}}
execute as @e[type=hopper_minecart,tag=macerator] run function syntech:macerator/core/visuals
function syntech:macerator/core/destroyed

execute as @e[type=hopper_minecart,tag=macerator,nbt={Items:[{Slot:4b,tag:{type:output_slot}}]}] at @s run function syntech:macerator/recipes/run

execute at @e[type=hopper_minecart,tag=macerator,scores={temp.timer=1..}] run particle block cobblestone ~ ~.9 ~ 0 0 0 .5 1 force @a[distance=..32]

execute as @e[type=hopper_minecart,tag=macerator] if score @s temp.timer_check = @s temp.timer run scoreboard players reset @s temp.timer
execute as @e[type=hopper_minecart,tag=macerator] run scoreboard players operation @s temp.timer_check = @s temp.timer