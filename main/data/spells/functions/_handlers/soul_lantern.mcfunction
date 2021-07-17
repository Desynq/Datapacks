execute if entity @s[scores={u.coas=1..,sneak=1,xp=10..},nbt={SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{tag:{type:soul_sword,AttributeModifiers:[{AttributeName:generic.attack_damage,Amount:36.0d}]}}}] run function spells:conjure_sword/handler





execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}},scores={u.coas=1..,sneak=1,c.spell=0,xp=10..}] unless entity @e[type=ghast,tag=eldritch_overseer] run function spells:fireball/ghast_fireball

execute if entity @s[nbt={SelectedItem:{id:"minecraft:fire_charge"}},scores={u.coas=1..,sneak=0,c.spell=0,xp=1..}] run function spells:fireball/blaze_fireball





execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone"}},scores={u.coas=1..,c.spell=0,xp=20..}] run function spells:soulhound/summon


execute if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_shell"}},scores={u.coas=1..,c.spell=0,xp=20..},tag=rifting] run function spells:soul_cleanse/run


execute if entity @s[nbt={SelectedItem:{id:"minecraft:arrow"}},scores={u.coas=1..,c.spell=0,xp=250..}] run function spells:arrow_storm/run


execute if entity @s[nbt={SelectedItem:{id:"minecraft:fermented_spider_eye"}},scores={u.coas=1..,c.spell=0,xp=10..}] run function spells:aoe_invis/run
