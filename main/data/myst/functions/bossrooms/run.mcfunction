execute as @a[predicate=dimension/the_myst,scores={killSoul=1..}] at @s run function myst:bossrooms/soul_cauldron/collect
execute as @a[predicate=dimension/the_myst,scores={killSoul=1..}] at @s run function myst:bossrooms/soul_reactor/collect

execute in slime:themyst positioned -126 54 69 if score 1 reactor matches 50.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -110 54 69 if score 2 reactor matches 50.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -110 54 85 if score 3 reactor matches 50.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -126 54 85 if score 4 reactor matches 50.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a


execute in slime:themyst positioned -136 68 -53 if score northwest soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -126 68 -53 if score north soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -116 68 -53 if score northeast soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a

execute in slime:themyst positioned -136 68 -43 if score west soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -116 68 -43 if score east soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a

execute in slime:themyst positioned -136 68 -33 if score southwest soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -126 68 -33 if score south soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a
execute in slime:themyst positioned -116 68 -33 if score southeast soul_cauldron matches 25.. run particle soul_fire_flame ~ ~.5 ~ .50 .50 .50 .05 10 normal @a