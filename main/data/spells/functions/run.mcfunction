execute unless entity @s[scores={c.spell=0..}] run scoreboard players set @s c.spell 0
scoreboard players remove @s[scores={c.spell=1..}] c.spell 1

execute if entity @s[predicate=equipment/offhand/soul_lantern] run function spells:_handlers/soul_lantern


execute if entity @s[predicate=equipment/mainhand/soul_lantern,scores={u.coas=1..,sneak=0,c.spell=0,xp=50..}] run function spells:sate/run
execute if entity @s[predicate=equipment/mainhand/soul_lantern,scores={u.coas=1..,sneak=1,c.spell=0,xp=5..}] run function spells:heal_beam/run

execute if entity @s[predicate=equipment/mainhand/soul_staff,scores={u.coas=1..,sneak=0,c.spell=0,xp=1..}] run function spells:soul_staff/run
execute if entity @s[predicate=equipment/mainhand/soul_staff,scores={u.coas=1..,sneak=1,c.spell=0,xp=500..}] run function spells:soul_staff/soul_flare