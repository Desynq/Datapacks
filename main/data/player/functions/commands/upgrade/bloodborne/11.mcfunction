scoreboard players operation @s slime -= %cost temp
advancement grant @s only minecraft:races/bloodborne/1/1

tellraw @s [{"color":"green","text":"Unlocked ["},{"color":"white","translate":"upgrade.race.bloodborne.title.11","hoverEvent":{"action":"show_text","contents":{"color":"gray","translate":"upgrade.race.bloodborne.description.11"}}},"] for $",{"score":{"name":"%cost","objective":"temp"}},"!"]
