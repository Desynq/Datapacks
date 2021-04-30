kill @s[type=armor_stand]

summon wither_skeleton ~ ~ ~ {PersistenceRequired:1,Tags:["rift_mage","boss","remaster"],Team:mob,CustomName:'{"color":"dark_purple","text":"Rift Mage"}',HandDropChances:[1f],HandItems:[{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:57,type:supercharged_soul_staff,Unbreakable:1,HideFlags:4,display:{Name:'{"italic":"false","color":"dark_aqua","text":"Supercharged Soul Staff"}',Lore:['{"text":"It seems to be able to summon myst creatures..."}','{"text":"perhaps I can use it as a boss summoning catalyst?"}']},Enchantments:[{id:knockback,lvl:2}]}},{id:totem_of_undying,Count:1}],ArmorItems:[{},{},{},{id:crying_obsidian,Count:1,tag:{Enchantments:[{id:blast_protection,lvl:10},{id:projectile_protection,lvl:10}]}}],Health:2500,Attributes:[{Name:generic.max_health,Base:2500},{Name:generic.movement_speed,Base:.3},{Name:generic.follow_range,Base:128}]}
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