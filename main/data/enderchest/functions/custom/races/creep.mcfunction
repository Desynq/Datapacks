scoreboard players set @s race 2
function enderchest:stats/reset

gamerule showDeathMessages false
kill @s
tellraw @s [{"color":"dark_red","text":"You feel your body metamorph into a new shape, one reminiscent of a "},{"bold":"true","text":"Creep"}]
gamerule showDeathMessages true

advancement grant @s only races/creep/root

advancement revoke @s from races/human/root
advancement revoke @s from races/sludge/root
advancement revoke @s from races/bloodborne/root
advancement revoke @s from races/parasite/root
advancement revoke @s from races/flora/root
advancement revoke @s from races/arthropod/root