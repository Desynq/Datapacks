execute as @e[type=item,sort=nearest,limit=1] run function slime:rituals/blast_protection/modify


execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon lightning_bolt
kill @s
