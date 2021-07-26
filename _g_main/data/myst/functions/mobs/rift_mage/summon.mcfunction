kill @s[type=armor_stand]

summon wither_skeleton ~ ~ ~ {DeathLootTable:"custom:mob/rift_mage",PersistenceRequired:1b,Tags:["rift_mage","boss"],Team:mob,CustomName:'{"color":"dark_purple","text":"Rift Mage"}',HandDropChances:[0.0f,0.0f],HandItems:[{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:43}},{id:totem_of_undying,Count:1}],ArmorItems:[{},{},{},{id:crying_obsidian,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:10},{id:projectile_protection,lvl:10}]}}],Health:250,Attributes:[{Name:generic.max_health,Base:250},{Name:generic.movement_speed,Base:.3},{Name:generic.follow_range,Base:128}]}
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon
function myst:mobs/rift_scavenger/summon

particle reverse_portal ~ ~1 ~ .5 .5 .5 5 1000 force @a
playsound block.portal.travel voice @a ~ ~ ~ .2
