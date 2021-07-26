playsound entity.experience_orb.pickup master @a ~ ~ ~ 2147483647 2

tellraw @s ["",{"color":"gold","text":"Welcome Back, "},{"selector":"@s"},{"color":"gold","text":"."}]
function player:server/join_message


scoreboard players set @s join 0
