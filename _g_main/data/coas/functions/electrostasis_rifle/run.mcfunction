execute if entity @s[predicate=entity:equipment/mainhand/coas/electrostasis_rifle,scores={u.coas=1..,emp=0,a.esr=1..}] at @s run function coas:electrostasis_rifle/firing

execute if entity @s[predicate=entity:equipment/offhand/coas/electrostasis_rifle,scores={u.coas=1..,emp=0,sneak=0,a.esr=1..}] at @s run function coas:electrostasis_rifle/firing



#execute unless score 20 tick matches ..9 unless score 20 tick matches 11..19 if entity @s[scores={emp=0,sneak=1,a.esr=2..},nbt={Inventory:[{Slot:-106b,tag:{type:electrostasis_rifle}}]}] at @s facing entity @e[type=#mob,distance=.5..64] feet run function coas:electrostasis_rifle/firing
execute unless score 10 tick matches ..9 if entity @s[scores={emp=0,sneak=1,a.esr=2..},predicate=entity:equipment/offhand/coas/electrostasis_rifle] at @s facing entity @a[nbt={FallFlying:1b},distance=.5..64] feet run function coas:electrostasis_rifle/firing
