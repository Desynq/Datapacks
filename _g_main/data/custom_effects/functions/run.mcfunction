execute if entity @s[scores={overdose=1..}] run function custom_effects:overdose/run

#execute as @a[tag=RX-12] at @s run function custom_effects:diseases/rx-12/run

execute as @a[tag=slimified] at @s run function custom_effects:diseases/slimopathy/run

execute as @a[scores={emp=1..}] run function custom_effects:emp/run


execute as @a unless entity @s[scores={off.nvg=0,emp=0,off.flashlight=0}] run function custom_effects:tick