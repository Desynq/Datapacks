execute store result score @s ent.owner run data get entity @s Owner[0]
execute if score @s ent.owner = @p ply.uuid run data merge entity @s {CustomPotionEffects:[{Id:26b,Duration:20b,Amplifier:1b}]}
execute if score @s ent.owner = @p ply.uuid run tag @s add demolitionist_arrow
