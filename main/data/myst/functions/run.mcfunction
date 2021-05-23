execute in overworld positioned -72 23.5 -1 if entity @a[distance=..32] if score portal temp matches 1 run particle white_ash ~ ~ ~ 0.5 2 1 .05 100 force @a[distance=..32]

execute if score portal temp matches 1 as @a[gamemode=!spectator,predicate=dimension/overworld,scores={x=-72,y=21..25,z=-1}] at @s run function myst:portal/enter

execute as @e[type=armor_stand,tag=scp106] at @s run function myst:scp/106/run

function myst:mobs/run
function myst:tesla_gates/run
function myst:elevators/run
function myst:bossrooms/run


execute unless entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"},Invulnerable:1b}] run bossbar set ritual visible false

function myst:scp/173/run
