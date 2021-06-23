#####################
# Scoreboard Logging
#####################


execute store result score @s DeathTime run data get entity @s DeathTime 1
execute store result score @s HurtTime run data get entity @s HurtTime 1

execute store result score @s regen_amp run data get entity @s ActiveEffects[{Id:10b}].Amplifier 1
execute store result score @s hunger_amp run data get entity @s ActiveEffects[{Id:17b}].Amplifier 1




##############
# Gravestones
##############

execute if score gravestones datapack matches 1 as @a[gamemode=adventure,predicate=dimension/overworld,scores={DeathTime=1,x=-128..127,z=-128..127}] at @s unless entity @s[scores={x=-32..31,z=-32..31}] run function player:gravestones/run



###############
# Data Storage
###############

data merge storage inventory {baubles:[{},{}],SelectedItem:{},OffhandItem:{}}



execute in overworld run item replace block 0 0 1 container.0 from entity @s inventory.25
execute in overworld run data modify storage inventory baubles[0] set from block 0 0 1 container.0

execute in overworld run item replace block 0 0 1 container.0 from entity @s inventory.26
execute in overworld run data modify storage inventory baubles[1] set from block 0 0 1 container.0


execute in overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand
execute in overworld run data modify storage inventory SelectedItem set from block 0 0 1 container.0

execute in overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand
execute in overworld run data modify storage inventory OffhandItem set from block 0 0 1 container.0


###########
# Bossbars
###########

bossbar set custom_0 players @a



########
# Teams
########

execute if entity @s[team=] run team join survivor



##############
# Scoreboards
##############

function math:xp/run


execute if entity @s[scores={damage=1..}] run function player:scoreboards/damage

execute if entity @s[scores={damage_taken=1..}] run scoreboard players reset @s timer.undamaged
execute unless entity @s[scores={damage_taken=1..}] run scoreboard players add @s timer.undamaged 1


execute unless score @s ply.uuid matches ..-1 unless score @s ply.uuid matches 0.. store result score @s ply.uuid run data get entity @s UUID[0]
execute unless entity @s[scores={list=1..}] run function player:scoreboards/uuid/list

function player:scoreboards/core/tracking
function player:scoreboards/dummies/keycards



########
# Fixes
########

scoreboard players add @s[scores={fall=1..}] fall 100
execute if entity @s[predicate=effects/absorption,nbt={AbsorptionAmount:0.0f}] run function player:status_effects/clear/absorption


## fixes edibles being consumed after death
execute if entity @s[scores={DeathTime=1..,ateGoldenApple=1..}] run give @s golden_apple
execute if entity @s[scores={DeathTime=1..,ateDiamondApple=1..}] run give @s enchanted_golden_apple



###########
# Triggers
###########

function player:scoreboards/core/enable

function player:pay/run

function player:pln_show/run



scoreboard players enable @s disableUpgrades
scoreboard players enable @s raceUpgrade
	function player:races/upgrading/run


scoreboard players reset @s[predicate=!race/parasite] parasite
scoreboard players enable @s[predicate=race/parasite] parasite


scoreboard players enable @s code


scoreboard players enable @s arbitrary


## KYS
scoreboard players enable @s kys
	execute if entity @s[scores={kys=1..}] run function player:kys


scoreboard players enable @s spawn
	execute if entity @s[predicate=dimension/overworld,gamemode=!adventure] unless score @s spawn matches 0 run tellraw @a [{"selector":"@s"},{"color":"yellow","text":" warped to spawn"}]
	execute if entity @s[predicate=dimension/overworld,gamemode=!adventure] unless score @s spawn matches 0 run tp @s 0 64 0
	execute if entity @s[predicate=dimension/overworld,gamemode=adventure] unless score @s spawn matches 0 run tellraw @s {"color":"red","text":"[!] You cannot warp to spawn in Adventure Mode [!]"}
	execute if entity @s[predicate=!dimension/overworld] unless score @s spawn matches 0 run tellraw @s {"color":"red","text":"[!] You must be in the overworld to warp to spawn [!]"}
	execute unless score @s spawn matches 0 run scoreboard players set @s spawn 0



#######
# Tags
#######

tag @s remove OnGround
tag @s[nbt={OnGround:1b}] add OnGround



execute if entity @s[tag=elevating] run effect clear @s levitation
execute if entity @s[tag=elevating] run tag @s remove elevating

execute if entity @s[tag=de-elevating] run effect clear @s slow_falling
execute if entity @s[tag=de-elevating] run tag @s remove de-elevating






execute if entity @s[scores={timeSinceDeath=20}] run function debug:stats
effect give @s[scores={timeSinceDeath=20}] resistance 4 4 true
effect give @s[scores={timeSinceDeath=20}] instant_health 40 124 true
effect give @s[scores={timeSinceDeath=20}] hunger 1 199 true



##############
# Accessories
##############

execute if data storage inventory baubles[0].tag{type:"fire_resistance_ring"} run function player:baubles/fire_resistance_ring
execute unless data storage inventory baubles[0].tag{type:"fire_resistance_ring"} if data storage inventory baubles[1].tag{type:"fire_resistance_ring"} run function player:baubles/fire_resistance_ring

execute if data storage inventory baubles[0].tag{type:"wither_resistance_ring"} run function player:baubles/wither_resistance_ring
execute unless data storage inventory baubles[0].tag{type:"wither_resistance_ring"} if data storage inventory baubles[1].tag{type:"wither_resistance_ring"} run function player:baubles/wither_resistance_ring

execute if data storage inventory baubles[0].tag{type:"firespark_ring"} if entity @s[scores={HurtTime=1..}] run function player:baubles/firespark_ring
execute unless data storage inventory baubles[0].tag{type:"firespark_ring"} if data storage inventory baubles[1].tag{type:"firespark_ring"} if entity @s[scores={HurtTime=1..}] run function player:baubles/firespark_ring

execute if data storage inventory baubles[0].tag{type:"baskalisk_heart"} if entity @s[tag=!rifting] run function player:baubles/baskalisk_heart
execute unless data storage inventory baubles[0].tag{type:"baskalisk_heart"} if data storage inventory baubles[1].tag{type:"baskalisk_heart"} if entity @s[tag=!rifting] run function player:baubles/baskalisk_heart

execute if data storage inventory baubles[0].tag{type:"slimy_eye"} run function player:baubles/slimy_eye
execute unless data storage inventory baubles[0].tag{type:"slimy_eye"} if data storage inventory baubles[1].tag{type:"slimy_eye"} run function player:baubles/slimy_eye

execute if data storage inventory baubles[0].tag{type:"ghastly_amulet"} run function player:baubles/ghastly_amulet
execute unless data storage inventory baubles[0].tag{type:"ghastly_amulet"} if data storage inventory baubles[1].tag{type:"ghastly_amulet"} run function player:baubles/ghastly_amulet

execute if data storage inventory baubles[0].tag{type:"clownfish_necklace"} run function player:baubles/clownfish_necklace/run_a
execute unless data storage inventory baubles[0].tag{type:"clownfish_necklace"} if data storage inventory baubles[1].tag{type:"clownfish_necklace"} run function player:baubles/clownfish_necklace/run_b

execute if data storage inventory baubles[0].tag{type:"ice_cube_hat"} run function player:baubles/ice_cube/run_a
execute unless data storage inventory baubles[0].tag{type:"ice_cube_hat"} if data storage inventory baubles[1].tag{type:"ice_cube_hat"} run function player:baubles/ice_cube/run_b

execute if data storage inventory baubles[0].tag{type:"winter_coat"} run scoreboard players add @s insulation 2
execute if data storage inventory baubles[1].tag{type:"winter_coat"} run scoreboard players add @s insulation 2

execute if data storage inventory baubles[0].tag{type:"mana_cloak"} run function player:accessories/mana_cloak/run
execute if data storage inventory baubles[1].tag{type:"mana_cloak"} run function player:accessories/mana_cloak/run



execute store result score @s ply.max_hp run attribute @s generic.max_health get
execute store result score @s ply.armor run attribute @s generic.armor get
execute store result score @s ply.luck run attribute @s generic.luck get



#################
# Disambiguation
#################

### Races ###
	function player:races/run

### Armor ###
	function player:armor/run

### Random Crits ###
	function player:random_crits

### Temperature ###
	function player:temperature/run



#######
# COAS
#######

function spells:run
function coas:run



#########
# E-Shop
#########

function enderchest:run



### Join Script ###

	execute unless score @s join matches 0 run function player:server/join



###################
# Salvaging Script
###################

	scoreboard players enable @s break_item
	execute if entity @s[scores={break_item=1..}] run function player:break_item



#######
# Soup
#######

function soup:player_handler



############
# Actionbar
############

function actionbar:run



# Overworld Protection
	execute if entity @s[tag=!adventure,gamemode=adventure] unless entity @s[predicate=!dimension/overworld,predicate=!dimension/pocket] run gamemode survival @s
	tag @s[tag=adventure] remove adventure
		tag @s[predicate=dimension/overworld,scores={x=-128..127,z=-128..127}] add adventure
		tag @s[predicate=equipment/holding/shulker_box] add adventure
	gamemode adventure @s[tag=adventure,gamemode=survival]



####################
# Pocket Dimensions
####################

#



#######
# Myst
#######

function player:portals/run
kill @s[scores={breath=0},predicate=in_myst]

gamemode adventure @s[gamemode=survival,predicate=in_adventure_dim]

execute if entity @s[gamemode=adventure,tag=!scp,predicate=!equipment/feet/soulwalker_boots,predicate=dimension/translocatable] if block ~ ~-.01 ~ crying_obsidian run function myst:portal/exit
execute if score portal temp matches 1 if entity @s[gamemode=!spectator,scores={x=-183,y=2,z=-16}] run function myst:portal/enter

effect clear @s[tag=myst_mining] mining_fatigue
tag @s remove myst_mining
tag @s[predicate=dimension/trainyard,predicate=equipment/mainhand/mystite_pickaxe] add myst_mining
effect give @s[tag=myst_mining] mining_fatigue 2048 1 true


execute if entity @s[gamemode=adventure,predicate=in_adventure_dim] if block ~ ~ ~ structure_void run kill @s

execute if entity @s[name=!Desynq,predicate=!equipment/head/air] if entity @e[type=bat,tag=soulfly,distance=..5] run effect give @s nausea 4 0 true



############
# Equipment
############

execute if entity @s[predicate=equipment/feet/frostwalker,predicate=!dimension/overworld] run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 water replace frosted_ice
execute if entity @s[scores={x=-127..126,z=-127..126},predicate=equipment/feet/frostwalker,predicate=dimension/overworld] run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 water replace frosted_ice

execute if entity @s[predicate=equipment/feet/soulwalker_boots] if block ~ ~ ~ water run effect give @s instant_damage 1 1 true

execute if entity @s[predicate=equipment/mainhand/mystite_bow] run function player:weapons/mystite_bow/run

effect give @s[predicate=equipment/chest/absorbing_chainmail] absorption 1 0 true
effect give @s[predicate=race/sludge,predicate=equipment/chest/sticky_chestplate] absorption 1 1 true
effect give @s[predicate=race/creep,predicate=equipment/chest/creeping_chestplate] absorption 1 0 true

item replace entity @s[scores={u.totem=1..},predicate=equipment/offhand/supercharged_totem] weapon.mainhand with totem_of_undying



####################
# Playable Entities
####################

	execute if entity @s[tag=173] at @s run function myst:scp/173
	execute if entity @s[tag=zephyr] at @s run function myst:scp/zephyr/run



#################
# Nuclear Winter
#################

#execute unless predicate clear_weather in overworld if blocks ~ ~1 ~ ~ 255 ~ ~ ~3 ~ masked run effect give @s[predicate=effects/hunger,distance=0..] hunger 5 1 true



########
# Foods
########

	execute if entity @s[scores={u.honey_bottle=1..}] run effect give @s hero_of_the_village 15 0 false

	execute if entity @s[scores={u.poison_potato=1..}] run function player:status_effects/poisonous_potato/blow_up

	execute if entity @s[scores={ateDiamondApple=1..}] run effect give @s resistance 1000000 1 true



###########
# Diseases
###########

execute if entity @s[tag=!necronoma,scores={kb.zombie_v=1..}] run tag @s add necronoma
execute if entity @s[tag=necronoma] run function player:status_effects/run
