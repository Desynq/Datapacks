execute as @e[type=hopper_minecart,tag=!data,nbt={CustomName:'{"italic":false,"text":"Refinery"}'}] run data merge entity @s {Tags:["data","refinery"],CustomDisplayTile:1,DisplayState:{Name:blast_furnace}}
execute as @e[type=hopper_minecart,tag=refinery] run function syntech:refinery/core/visuals
function syntech:refinery/core/destroyed

execute as @e[type=hopper_minecart,tag=refinery,nbt={Items:[{Slot:3b,tag:{type:primary_output_slot}},{Slot:4b,tag:{type:secondary_output_slot}}]}] at @s run function syntech:refinery/recipes/run
execute as @e[type=hopper_minecart,tag=refinery,nbt={Items:[{Slot:3b,tag:{type:primary_output_slot}}]}] at @s run function syntech:refinery/recipes/run_and

execute at @e[tag=refinery,scores={entTimer=1..}] run particle flame ~ ~1 ~ .05 .2 .05 .05 1 force @a[distance=..32]

execute as @e[type=hopper_minecart,tag=refinery] if score @s entTimer_check = @s entTimer run scoreboard players reset @s entTimer
execute as @e[type=hopper_minecart,tag=refinery] run scoreboard players operation @s entTimer_check = @s entTimer
