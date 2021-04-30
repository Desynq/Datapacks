execute as @a store result score @s ply.uuid run data get entity @s UUID[0]
execute store result score @s ent.thrower run data get entity @s Thrower[0]

execute at @a if score @p ply.uuid = @s ent.thrower as @p run function math:in_radius/tool_cupboard

execute at @a if score @p ply.uuid = @s ent.thrower unless score @p tc.check matches 3 at @s run function postrun:entity/item/spawners/place
execute at @a if score @p ply.uuid = @s ent.thrower if score @p tc.check matches 3 if score @p code = @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1] tc.code at @s run function postrun:entity/item/spawners/place