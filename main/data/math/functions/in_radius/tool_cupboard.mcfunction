execute store result score @s ent.x run data get entity @s Pos[0] 1
execute store result score @s ent.y run data get entity @s Pos[1] 1
execute store result score @s ent.z run data get entity @s Pos[2] 1

scoreboard players reset @s tc.check
execute unless score @s ent.x < @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.x1 unless score @s ent.x > @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.x2 run scoreboard players add @s tc.check 1
execute unless score @s ent.y < @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.y1 unless score @s ent.y > @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.y2 run scoreboard players add @s tc.check 1
execute unless score @s ent.z < @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.z1 unless score @s ent.z > @e[type=item_frame,tag=tool_cupboard,sort=nearest,limit=1,distance=0.5..] tc.z2 run scoreboard players add @s tc.check 1