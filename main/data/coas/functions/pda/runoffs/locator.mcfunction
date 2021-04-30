execute store result score @s located at @a if score @s pln_forward = @p list run title @s actionbar {"selector":"@p"}
execute store result score @s located as @a if score @p pln_forward = @s list facing entity @s feet rotated ~ 0 run particle dust 1 0 0 1 ^ ^1.8 ^2 0 0 0 0 1 force @p
execute unless entity @s[scores={located=1..}] run title @s actionbar [{"color":"red","text":"Locator: "},{"color":"gray","text":"Invalid PLN"}]

execute if score 50 tick matches 50 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 2 .5