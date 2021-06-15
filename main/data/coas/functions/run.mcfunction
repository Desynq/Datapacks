tag @s[tag=reloadable] remove reloadable
tag @s[tag=!reloadable,scores={sneak=1..}] add reloadable
tag @s[tag=!reloadable,nbt={RootVehicle:{}}] add reloadable


execute unless score @s spray matches 0.. run scoreboard players set @s spray 0
execute unless score @s spray_delay matches 0.. run scoreboard players set @s spray_delay 0

execute store result score @s ammo.mainhand run data get storage inventory SelectedItem.tag.ammo 1
execute store result score @s ammo.offhand run data get storage inventory OffhandItem.tag.ammo 1

execute store result score @s mag.mainhand run data get storage inventory SelectedItem.tag.mag 1
execute store result score @s mag.offhand run data get storage inventory OffhandItem.tag.mag 1

execute store result score @s durability.mh run data get storage inventory SelectedItem.tag.durability 1
execute store result score @s durability.oh run data get storage inventory OffhandItem.tag.durability 1


execute unless entity @s[scores={reload=0..}] run scoreboard players set @s reload 0
execute if entity @s[scores={reload=1..}] run function coas:core/reload

scoreboard players set @s[scores={spray=180..}] spray 179
execute if entity @s[scores={spray_delay=0,spray=1}] run playsound block.fire.extinguish master @a ~ ~ ~ 0.5 1
scoreboard players remove @s[scores={spray_delay=0,spray=1..}] spray 1
scoreboard players remove @s[scores={spray_delay=1..}] spray_delay 1
###


###########
# Handlers
###########

function coas:explosive_charge/run
function coas:player



##################
# Mags + Grenades
##################

function coas:guns/_grenades/run



##############
# Custom COAS
##############

function coas:handcuff/run
function coas:pda/run
function coas:flashlight/run

#execute if entity @s[nbt={SelectedItem:{tag:{type:keycard}}}] as @e[type=armor_stand,tag=kcd] at @s run function redstone:keycard/run

execute if score @s u.coas matches 1.. run function coas:ceasefire
