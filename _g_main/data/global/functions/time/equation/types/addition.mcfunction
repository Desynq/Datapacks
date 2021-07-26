scoreboard players set limit rng 100
function math:rng
scoreboard players operation a daily_equation = output rng

scoreboard players set limit rng 100
function math:rng
scoreboard players operation b daily_equation = output rng

tellraw @a [{"color":"gray","text":"|> "},{"score":{"name":"a","objective":"daily_equation"}}," + ",{"score":{"name":"b","objective":"daily_equation"}}," = ?"]
tellraw @a [{"color":"dark_gray","text":"|>"},{"underlined":"true","text":" Auto-Complete","hoverEvent":{"action":"show_text","contents":{"italic":"true","color":"gray","text":"/trigger answer set <>"}},"clickEvent":{"action":"suggest_command","value":"/trigger answer set "}}]


scoreboard players operation a daily_equation += b daily_equation
