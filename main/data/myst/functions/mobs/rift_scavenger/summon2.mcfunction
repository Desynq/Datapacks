kill @s[type=armor_stand]
summon wither_skeleton ~ ~ ~ {Passengers:[{id:squid,Invulnerable:1,Tags:["ralamari"],Team:mob}],Tags:["rift_kamikazee"],Team:mob,CustomName:'{"color":"dark_purple","text":"Rift Kamikazee"}',ArmorItems:[{},{},{},{id:crying_obsidian,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:10}]}}],HandItems:[{id:netherite_sword,Count:1}],Health:50,Attributes:[{Name:generic.max_health,Base:50},{Name:generic.movement_speed,Base:.35},{Name:generic.follow_range,Base:128}]}
particle reverse_portal ~ ~1 ~ .5 .5 .5 5 1000 force @a
playsound block.portal.travel voice @a ~ ~ ~ .2
