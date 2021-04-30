tag @s add bpm
effect give @s glowing 1 2 true
execute store result score @s ent.hp run data get entity @s Health
execute store result score @s ent.maxhp run data get entity @s Attributes[{Name:generic.max_health}].Base

title @p actionbar [{"color":"dark_red","text":"BPM: "},{"color":"red","selector":"@s"}," ",{"color":"red","score":{"objective":"ent.hp","name":"@s"}},{"color":"red","text":"/"},{"color":"red","score":{"objective":"ent.maxhp","name":"@s"}}]