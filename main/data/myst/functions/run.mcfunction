execute in overworld positioned -72 23.5 -1 if entity @a[distance=..32] unless score portal temp matches 1 run particle reverse_portal ~ ~ ~ .5 2 .5 .1 50 force @a[distance=..32]
execute in overworld positioned -72 23.5 -1 if entity @a[distance=..32] if score portal temp matches 1 run particle portal ~ ~ ~ .5 2 .5 .1 50 force @a[distance=..32]

execute if score portal temp matches 1 as @a[gamemode=!spectator,predicate=dimension/overworld,x=-72,y=23.5,z=-1,distance=..1] at @s run function myst:portal/enter

execute as @e[type=armor_stand,tag=scp106] at @s run function myst:scp/106/run

function myst:mobs/run
function myst:tesla_gates/run
function myst:elevators/run
function myst:bossrooms/run


execute unless entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"},Invulnerable:1b}] run bossbar set ritual visible false

function myst:scp/173/run