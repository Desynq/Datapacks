scoreboard players add @s[nbt={Inventory:[{tag:{type:7.62x51mm}}]}] reload 1

execute if entity @s[scores={reload=20..}] run function coas:guns/bolt_action_rifle/reload_end