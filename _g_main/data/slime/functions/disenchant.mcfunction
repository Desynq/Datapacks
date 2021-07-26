summon item ~ ~ ~ {Tags:["disenchant"],PickupDelay:100s,Invulnerable:1b,Item:{id:enchanted_book,Count:1,tag:{StoredEnchantments:[{}]}},NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}

execute as @e[type=item,nbt={Item:{tag:{Enchantments:[{}]}},OnGround:1b},sort=nearest,limit=1,distance=..1] run function slime:disenchant2

tag @e[type=item,tag=disenchant] remove disenchant



summon lightning_bolt
setblock ~ ~-1 ~ obsidian
kill @s
