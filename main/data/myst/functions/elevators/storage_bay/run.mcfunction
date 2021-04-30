effect give @s blindness 15 0 true
effect give @s slowness 10 9 true
effect give @s jump_boost 5 250 true
playsound music_disc.wait master @s ~ ~ ~ 2147483647
tag @s add elevator.storage_bay
function myst:elevators/storage_bay/timer