execute in minecraft:overworld positioned -92 30 -75 if entity @a[distance=..32] unless score portal temp matches 1 run particle falling_dust warped_nylium ~ ~ ~ 0.25 0 0.25 0 10 force @a[distance=..32]
execute in minecraft:overworld positioned -92 30 -75 if entity @a[distance=..32] if score portal temp matches 1 run particle falling_dust crimson_nylium ~ ~ ~ 0.25 0 0.25 0 10 force @a[distance=..32]

execute if score portal temp matches 1 as @a[gamemode=!spectator,predicate=minecraft:dimension/overworld,scores={x=-92,y=25..29,z=-75}] at @s run function myst:portal/enter

execute as @e[type=armor_stand,tag=scp106] at @s run function myst:scp/106/run

function myst:mobs/run
function myst:tesla_gates/run
function myst:elevators/run
function myst:bossrooms/run


execute unless entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"},Invulnerable:1b}] run bossbar set ritual visible false

function myst:scp/173/run
