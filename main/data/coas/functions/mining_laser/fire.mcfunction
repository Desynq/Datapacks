execute unless score @s ray.timer matches 1.. run playsound entity.arrow.shoot block @a ^ ^ ^ 1 2
execute unless score @s ray.timer matches 1.. run xp add @s -3 points
function math:xp/run

function coas:mining_laser/raycast
