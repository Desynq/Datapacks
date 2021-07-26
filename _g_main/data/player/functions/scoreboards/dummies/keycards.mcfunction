scoreboard players reset @s[scores={kc=0..}] kc
execute if entity @s[predicate=entity:equipment/mainhand/keycard] store result score @s kc run data get entity @s SelectedItem.tag.kc
