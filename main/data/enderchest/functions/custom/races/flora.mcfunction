scoreboard players set @s race 6


advancement revoke @s from races/human/root
advancement revoke @s from races/creep/root
advancement revoke @s from races/sludge/root
advancement revoke @s from races/bloodborne/root
advancement revoke @s from races/parasite/root
advancement revoke @s from races/flora/root
advancement revoke @s from races/arthropod/root

advancement grant @s only races/flora/root



function enderchest:stats/reset

function debug:stats





effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:blindness 2 0 true



playsound minecraft:block.grass_block.break master @s ~ ~ ~ 2147483647 0.5


tellraw @s [{"color":"gray","text":"You quickly morph into a "},{"bold":"true","text":"Flora"}]
