tag @e[type=#mob,tag=bpm] remove bpm
execute as @e[type=#mob,distance=..8,sort=nearest,limit=2] unless score @p list = @s list run function coas:pda/modes/bpm_detector
execute if entity @e[tag=bpm] run scoreboard players add bpm timer 1
execute if score bpm timer matches 100.. run playsound block.note_block.harp master @a ~ ~ ~ 2
execute if score bpm timer matches 100.. run scoreboard players reset bpm timer
execute unless entity @e[type=#mob,tag=bpm,distance=..8] run title @s actionbar [{"color":"dark_red","text":"BPM: "},{"color":"red","text":"None within 8m"}]