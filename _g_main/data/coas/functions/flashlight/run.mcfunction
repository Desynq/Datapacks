execute unless entity @s[scores={t.flashlight=0..}] run scoreboard players set @s t.flashlight 0


execute if entity @s[scores={emp=0,u.coas=1..},nbt={SelectedItem:{tag:{type:flashlight}}}] run playsound item.flintandsteel.use master @a[distance=0..] ~ ~ ~ 1 .75
scoreboard players add @s[scores={emp=0,u.coas=1..},nbt={SelectedItem:{tag:{type:flashlight}}}] t.flashlight 1

execute if entity @s[scores={t.flashlight=1..}] run function coas:flashlight/toggle