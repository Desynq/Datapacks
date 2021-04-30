kill @s[type=tnt_minecart]
kill @s[type=end_crystal]

execute if entity @s[type=tnt,nbt={Fuse:1s}] run function math:in_radius/tool_cupboard
execute if entity @s[type=tnt,nbt={Fuse:1s}] unless score @s tc.check matches 3 run function antigrief:nullify_tnt
execute if entity @s[type=tnt,nbt={Fuse:1s},predicate=biome/mushroom_fields] if score @s tc.check matches 3 run function antigrief:nullify_tnt