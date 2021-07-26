tellraw @s {"color":"yellow","text":"════════════════"}





tellraw @s [{"color":"gray","text":"Health = "},{"color":"gold","score":{"name":"@s","objective":"player.hp"}},{"color":"gold","text":" / "},{"color":"gold","score":{"name":"@s","objective":"attr.maxHealth"}}]



function player:commands/show/stats/math/percent_health



tellraw @s [{"color":"gray","text":"Armor = "},{"color":"gold","score":{"name":"@s","objective":"armor"}}]

tellraw @s [{"color":"gray","text":"Luck = "},{"color":"gold","score":{"name":"@s","objective":"attr.luck"}}]





tellraw @s {"color":"yellow","text":"════════════════"}
