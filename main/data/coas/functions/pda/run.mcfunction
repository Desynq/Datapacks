execute if entity @s[predicate=equipment/mainhand/pda] run function coas:pda/selected
scoreboard players reset @s[scores={pda=3..}] pda
scoreboard players reset @s[scores={located=1..}] located

execute if entity @s[scores={pln_forward=1..},predicate=equipment/mainhand/anonymysg_written_book] run function coas:pda/anonymsg