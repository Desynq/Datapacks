scoreboard players set limit rng 1000
function math:rng
execute if score output rng matches 0 run playsound item.flintandsteel.use master @a ~ ~ ~ 2 .75
execute if score output rng matches 0 run scoreboard players set @s off.flashlight 100

scoreboard players set @s[scores={t.flashlight=1},nbt=!{SelectedItem:{tag:{type:flashlight}}}] t.flashlight 0
scoreboard players set @s[scores={t.flashlight=2..}] t.flashlight 0
execute if entity @s[scores={t.flashlight=1}] unless entity @s[scores={emp=0,off.flashlight=0}] run scoreboard players set @s t.flashlight 0

execute if entity @s[scores={t.flashlight=1},nbt={SelectedItem:{tag:{type:flashlight}}}] positioned ~ ~1.8 ~ run function coas:flashlight/raycast
