data modify entity @e[type=item,tag=disenchant,limit=1] Item.tag.StoredEnchantments[0] set from entity @s Item.tag.Enchantments[0]
data remove entity @s Item.tag.Enchantments[0]

data merge entity @s {Invulnerable:1b}
