execute store result bossbar custom_0 value run scoreboard players add zt.start timer.myst 1

execute if score zt.start timer.myst matches 1 run function prerun:global/events/zephyr_temple/phase_0
execute if score zt.start timer.myst matches 3600 run function prerun:global/events/zephyr_temple/phase_1