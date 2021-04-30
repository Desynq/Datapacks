scoreboard players add @s ent.timer 1
execute if entity @s[scores={ent.timer=5..}] run function postrun:entity/mob/militia/heavy/core/timer