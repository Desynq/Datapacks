tellraw @s {"color":"yellow","text":"-----"}
##


tellraw @s [{"color":"gray","text":"Health = "},{"color":"gold","score":{"name":"@s","objective":"player.hp"}},{"color":"gold","text":" / "},{"color":"gold","score":{"name":"@s","objective":"ply.max_hp"}}]

tellraw @s [{"color":"gray","text":"Armor = "},{"color":"gold","score":{"name":"@s","objective":"armor"}}]

tellraw @s [{"color":"gray","text":"Luck = "},{"color":"gold","score":{"name":"@s","objective":"ply.luck"}}]


##
tellraw @s {"color":"yellow","text":"-----"}



scoreboard players set @s showStats 0
