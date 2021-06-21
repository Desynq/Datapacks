effect give @s speed 90 1 true
effect give @s haste 90 1 true
playsound entity.arrow.hit master @a ~ ~ ~ 1 .5
playsound block.conduit.ambient master @a ~ ~ ~ 1 1.5

scoreboard players add @s overdose 600

item replace entity @s weapon.mainhand with air
