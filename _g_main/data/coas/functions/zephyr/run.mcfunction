execute unless entity @s[scores={c.zephyr=0..}] run scoreboard players set @s c.zephyr 0
scoreboard players remove @s[scores={c.zephyr=1..}] c.zephyr 1
execute if entity @s[scores={c.zephyr=0}] run tag @e[type=#mob,type=!player,tag=airblasted] remove airblasted

execute if entity @s[scores={sneak=0,u.coas=1..,xp=5..,c.zephyr=0}] run function coas:zephyr/pre_dash


execute if entity @s[scores={sneak=1,u.coas=1..,xp=3..}] as @e[type=#mob,type=!player,tag=!boss,distance=..10] unless score @s t.airblast matches 1.. as @p run function coas:zephyr/pre_airblast

execute if entity @s[scores={sneak=1,u.coas=1..,xp=10..}] as @e[type=item,distance=..10] unless entity @s[tag=!he.mgl,tag=!he.grenade,nbt=!{Item:{tag:{type:chlorine_gas_grenade}}}] unless score @s t.airblast matches 1.. run tag @s add airblast.item
execute if entity @s[scores={sneak=1,u.coas=1..,xp=10..}] as @e[type=item,distance=..10,tag=airblast.item] as @p run function coas:zephyr/pre_airblast_item

execute if entity @s[scores={sneak=1}] at @e[type=#projectile,nbt={inGround:0b},distance=..5] facing entity @s feet as @e[type=#projectile,nbt={inGround:0b},sort=nearest,limit=1] unless score @s t.airblast matches 1.. run function coas:zephyr/airblast