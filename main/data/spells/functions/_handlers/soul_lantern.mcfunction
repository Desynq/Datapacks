execute if entity @s[scores={u.coas=1..,sneak=1,xp=10..},predicate=entity:equipment/mainhand/vanilla/stone_sword,predicate=!entity:equipment/mainhand/maxed_soul_sword] run function spells:conjure_sword/handler





execute if entity @s[scores={u.coas=1..,sneak=1,c.spell=0,xp=10..},predicate=entity:equipment/mainhand/vanilla/fire_charge] unless entity @e[type=ghast,tag=eldritch_overseer] run function spells:fireball/ghast_fireball

execute if entity @s[scores={u.coas=1..,sneak=0,c.spell=0,xp=1..},predicate=entity:equipment/mainhand/vanilla/fire_charge] run function spells:fireball/blaze_fireball





execute if entity @s[scores={u.coas=1..,c.spell=0,xp=20..},predicate=entity:equipment/mainhand/vanilla/bone] run function spells:soulhound/summon


execute if entity @s[tag=rifting,scores={u.coas=1..,c.spell=0,xp=20..},predicate=entity:equipment/mainhand/vanilla/shulker_shell] run function spells:soul_cleanse/run


execute if entity @s[scores={u.coas=1..,c.spell=0,xp=250..},predicate=entity:equipment/mainhand/vanilla/arrow] run function spells:arrow_storm/run


execute if entity @s[scores={u.coas=1..,c.spell=0,xp=10..},predicate=entity:equipment/mainhand/vanilla/fermented_spider_eye] run function spells:aoe_invis/run
