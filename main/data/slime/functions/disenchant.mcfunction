summon item ~ ~ ~ {Tags:["disenchant"],PickupDelay:100,Invulnerable:1,Item:{id:enchanted_book,Count:1},NoGravity:1,Motion:[0.0d,0.0d,0.0d]}

data modify entity @e[type=item,tag=disenchant,limit=1] Item.tag.StoredEnchantments set from entity @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=..1] Item.tag.Enchantments
tag @e[type=item,tag=disenchant] remove disenchant

summon lightning_bolt
setblock ~ ~-1 ~ obsidian
kill @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=..1]
kill @s