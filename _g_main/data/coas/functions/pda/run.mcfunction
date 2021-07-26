execute if entity @s[predicate=entity:equipment/mainhand/coas/pda] run function coas:pda/selected
scoreboard players reset @s[scores={pda=4..}] pda
scoreboard players reset @s[scores={located=1..}] located
