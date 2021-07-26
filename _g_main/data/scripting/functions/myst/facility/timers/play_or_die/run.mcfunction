bossbar set pigstep players @a

execute store result bossbar pigstep value run scoreboard players add s1.pigstep myst 1



execute if score s1.pigstep myst matches 2500.. in slime:themyst positioned -116 19 31 run function scripting:myst/facility/timers/play_or_die/end
