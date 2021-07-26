data modify entity @s Item.tag.Enchantments append value {id:"minecraft:blast_protection",lvl:10}
data modify entity @s Item.tag.display.Lore append value '{"italic":"false","color":"dark_red","text":"○ Creep Only"}'
data merge entity @s {Invulnerable:1b,PickupDelay:100s,Item:{tag:{raceLocked:1b,Races:["creep"]}}}
