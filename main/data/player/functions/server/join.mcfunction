playsound entity.experience_orb.pickup master @a ~ ~ ~ 2147483647 2

tellraw @s ["",{"color":"gold","text":"Welcome Back, "},{"selector":"@s"},{"color":"gold","text":"."}]
tellraw @s ["",{"color":"gray","text":"Check out the "},{"color":"blue","text":"[Wiki]","clickEvent":{"action":"open_url","value":"https://trello.com/b/RFNjBKmq"}}]


scoreboard players set @s join 0
