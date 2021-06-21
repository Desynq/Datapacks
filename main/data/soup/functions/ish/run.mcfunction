execute unless entity @e[type=area_effect_cloud,tag=flare,distance=..128] if entity @s[scores={sneak=1..}] run function soup:ish/stealth


effect clear @s glowing
effect give @s invisibility 2 0 true
effect give @s jump_boost 1 2 true
effect give @s resistance 1 0 true

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"italic":"false","color":"blue","text":"Stealth Vest"}',color:4868682},Enchantments:[{id:vanishing_curse,lvl:1},{id:projectile_protection,lvl:3},{id:protection,lvl:2},{id:binding_curse,lvl:1}],type:ish_armour,AttributeModifiers:[{AttributeName:generic.armor,Amount:7,Operation:0,Slot:chest,UUID:[I;19031,13019,5819081,59101]}]}
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"italic":"false","color":"blue","text":"Stealth Pants"}',color:3225650},Enchantments:[{id:vanishing_curse,lvl:1},{id:projectile_protection,lvl:3},{id:protection,lvl:2},{id:binding_curse,lvl:1}],type:ish_armour,AttributeModifiers:[{AttributeName:generic.armor,Amount:6,Operation:0,Slot:chest,UUID:[I;54819,518941,6891,69811]}]}

execute if entity @s[scores={emp=1..},predicate=!dimension/the_myst] run function soup:ish/emp
