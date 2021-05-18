function math:in_radius/tool_cupboard
execute if score @s tc.check matches 3 unless score @s code = @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1] tc.code run tag @s add adventure