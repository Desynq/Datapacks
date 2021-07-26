execute if entity @s[scores={xp=10..}] unless entity @s[advancements={advancements:challenges/myst/challenges/airblast_chlorine_gas_grenade=true}] as @e[type=item,tag=airblast.item,sort=nearest,limit=1] if entity @s[nbt={Item:{tag:{type:chlorine_gas_grenade}}}] as @p run advancement grant @s only challenges/myst/challenges/airblast_chlorine_gas_grenade
execute if entity @s[scores={xp=10..}] at @e[type=item,tag=airblast.item,distance=..10] facing entity @s feet as @e[type=item,tag=airblast.item,sort=nearest,limit=1] run function coas:zephyr/airblast

xp add @s[scores={xp=10..}] -10 points
tag @e[type=item,tag=airblast.item] remove airblast.item