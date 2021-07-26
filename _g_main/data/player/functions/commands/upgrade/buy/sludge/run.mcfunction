






execute if entity @s[scores={raceUpgrade=1,slime=5000..},advancements={races/sludge/1=false}] run function player:commands/upgrade/buy/sludge/1



execute if entity @s[scores={raceUpgrade=2,slime=2500..},advancements={races/sludge/2=false}] run function player:commands/upgrade/buy/sludge/2

    execute if entity @s[scores={raceUpgrade=21,slime=5000..},advancements={races/sludge/2=true,races/sludge/2/1=false}] run function player:commands/upgrade/buy/sludge/2/1

        execute if entity @s[scores={raceUpgrade=211,slime=25000..},advancements={races/sludge/2=true,races/sludge/2/1=false}] run function player:commands/upgrade/buy/sludge/2/1/1



execute if entity @s[scores={raceUpgrade=3,slime=2500..},advancements={races/sludge/3=false}] run function player:commands/upgrade/buy/sludge/3

    execute if entity @s[scores={raceUpgrade=31,slime=5000..},advancements={races/sludge/3=true,races/sludge/3/1=false}] run function player:commands/upgrade/buy/sludge/3/1
    
    execute if entity @s[scores={raceUpgrade=32,slime=15000..},advancements={races/sludge/3=true,races/sludge/3/2=false}] run function player:commands/upgrade/buy/sludge/3/2

        execute if entity @s[scores={raceUpgrade=321,slime=20000..},advancements={races/sludge/3/2=true,races/sludge/3/2/1=false}] run function player:commands/upgrade/buy/sludge/3/2/1



execute if entity @s[scores={raceUpgrade=4,slime=7500..},advancements={races/sludge/4=false}] run function player:commands/upgrade/buy/sludge/4

    execute if entity @s[scores={raceUpgrade=41,slime=12500..},advancements={races/sludge/4=true,races/sludge/4/1=false}] run function player:commands/upgrade/buy/sludge/4/1

    execute if entity @s[scores={raceUpgrade=42,slime=15000..},advancements={races/sludge/4=true,races/sludge/4/2=false}] run function player:commands/upgrade/buy/sludge/4/2
