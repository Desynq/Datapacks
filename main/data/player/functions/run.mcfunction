function player:init/run



#####################
# Scoreboard Logging
#####################


execute store result score @s DeathTime run data get entity @s DeathTime 1
execute store result score @s HurtTime run data get entity @s HurtTime 1
execute store result score @s Health run data get entity @s Health 1

execute store result score @s regen_amp run data get entity @s ActiveEffects[{Id:10b}].Amplifier 1
execute store result score @s poison_amp run data get entity @s ActiveEffects[{Id:19b}].Amplifier 1



execute unless score @s lowDetailMode matches 0..1 run scoreboard players set @s lowDetailMode 0




##############
# Gravestones
##############

execute if score gravestones datapack matches 1 as @a[gamemode=adventure,predicate=minecraft:dimension/overworld,scores={DeathTime=1,x=-128..127,z=-128..127}] at @s unless entity @s[scores={x=-32..31,z=-32..31}] run function player:gravestones/run



###############
# Data Storage
###############

function player:init/storage



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

function player:scoreboards/core/tracking
function player:scoreboards/dummies/keycards



########
# Fixes
########

scoreboard players add @s[scores={fall=1..}] fall 100
execute if entity @s[predicate=effects/absorption,nbt={AbsorptionAmount:0.0f}] run function player:status_effects/clear/absorption


## fixes edibles being consumed after death
execute if entity @s[scores={DeathTime=1..},advancements={debug:consumed/golden_apple=true}] run give @s golden_apple
execute if entity @s[scores={DeathTime=1..},advancements={debug:consumed/diamond_apple=true}] run give @s enchanted_golden_apple



###########
# Triggers
###########

scoreboard players enable @s disableUpgrades

scoreboard players reset @s[predicate=!race/parasite] parasite
scoreboard players enable @s[predicate=race/parasite] parasite


scoreboard players enable @s code


scoreboard players enable @s arbitrary
scoreboard players enable @s arbitrary2



#######
# Tags
#######

tag @s remove OnGround
tag @s[nbt={OnGround:true}] add OnGround






execute if entity @s[scores={timeSinceDeath=20}] run function debug:stats
effect give @s[scores={timeSinceDeath=20}] resistance 4 4 true
effect give @s[scores={timeSinceDeath=20}] instant_health 40 124 true
effect give @s[scores={timeSinceDeath=20}] hunger 1 199 true



##############
# Accessories
##############

function player:accessories/run



execute store result score @s ply.max_hp run attribute @s minecraft:generic.max_health get 1
execute store result score @s ply.armor run attribute @s minecraft:generic.armor get 1
execute store result score @s ply.luck run attribute @s minecraft:generic.luck get 1



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



##############
# Admin Tools
##############

execute if score @s admin.vanish matches 1 run effect give @s minecraft:invisibility 2048 0 true
execute if score @s admin.vanish matches 1 as @e[type=item,distance=..3] run data merge entity @s {PickupDelay:2}



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



#######################
# Overworld Protection
#######################

execute if entity @s[tag=!adventure,gamemode=adventure] unless entity @s[predicate=!minecraft:dimension/overworld,predicate=!dimension/pocket] run gamemode survival @s
tag @s[tag=adventure] remove adventure

execute if entity @s[predicate=minecraft:dimension/overworld,scores={x=-128..127,z=-128..127}] run tag @s add adventure
execute if entity @s[predicate=equipment/adventure_only] run tag @s add adventure

gamemode adventure @s[tag=adventure,gamemode=survival]



############
# Locations
############

execute if entity @s[predicate=biome/wasteland] run function player:location/wasteland



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

execute if entity @s[predicate=equipment/feet/frostwalker,predicate=!minecraft:dimension/overworld] run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 water replace frosted_ice
execute if entity @s[scores={x=-127..126,z=-127..126},predicate=equipment/feet/frostwalker,predicate=minecraft:dimension/overworld] run fill ~-15 ~-1 ~-15 ~15 ~1 ~15 water replace frosted_ice



effect give @a[predicate=equipment/mainhand/ender_bow] slow_falling 1 0 true



execute if entity @s[predicate=equipment/feet/soulwalker_boots] if block ~ ~ ~ water run effect give @s instant_damage 1 1 true



effect give @s[predicate=equipment/chest/absorbing_chainmail] absorption 1 0 true
effect give @s[predicate=race/sludge,predicate=equipment/chest/sticky_chestplate] absorption 1 1 true
effect give @s[predicate=race/creep,predicate=equipment/chest/creeping_chestplate] absorption 1 0 true



item replace entity @s[scores={u.totem=1..},predicate=equipment/offhand/supercharged_totem] weapon.mainhand with totem_of_undying



execute if entity @s[predicate=minecraft:dimension/overworld,scores={x=-128..127,z=-128..127},predicate=equipment/mainhand/wilderness_only] run item replace entity @s weapon.mainhand with air
execute if entity @s[predicate=!minecraft:dimension/overworld,predicate=equipment/mainhand/wilderness_only] run item replace entity @s weapon.mainhand with air



####################
# Playable Entities
####################

	execute if entity @s[tag=173] at @s run function myst:scp/173
	execute if entity @s[tag=zephyr] at @s run function myst:scp/zephyr/run



########
# Foods
########

	execute if entity @s[advancements={debug:consumed/honey_bottle=true}] run effect give @s minecraft:hero_of_the_village 15 0 false

	execute if entity @s[advancements={debug:consumed/poisonous_potato=true}] run function player:status_effects/poisonous_potato/blow_up

	execute if entity @s[advancements={debug:consumed/diamond_apple=true}] run effect give @s minecraft:resistance 1000000 1 true



###########
# Diseases
###########

function player:status_effects/run
