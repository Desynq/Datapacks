tag @s[tag=reloadable] remove reloadable
tag @s[tag=!reloadable,nbt={RootVehicle:{}}] add reloadable
tag @s[tag=!reloadable,scores={sneak=1..}] add reloadable


execute store result score @s ammo.mainhand run data get entity @s SelectedItem.tag.ammo 1
execute store result score @s ammo.offhand run data get entity @s Inventory[{Slot:-106b}].tag.ammo 1

execute store result score @s mag.mainhand run data get entity @s SelectedItem.tag.mag 1
execute store result score @s mag.offhand run data get entity @s Inventory[{Slot:-106b}].tag.mag 1

execute store result score @s durability.mh run data get entity @s SelectedItem.tag.durability 1
execute store result score @s durability.oh run data get entity @s Inventory[{Slot:-106b}].tag.durability 1


execute unless entity @s[scores={reload=0..}] run scoreboard players set @s reload 0
execute if entity @s[scores={reload=1..}] run function coas:core/reload

scoreboard players set @s[scores={spray=201..}] spray 200
scoreboard players remove @s[scores={spray=1..}] spray 1
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

execute if entity @s[scores={u.coas=1}] unless entity @s[scores={sneak=1..,a.lmg=1..},nbt={SelectedItem:{tag:{type:light_machine_gun}}}] unless entity @s[scores={a.smg=1..,f.smg=2},nbt={SelectedItem:{tag:{type:submachine_gun}}}] unless entity @s[scores={sneak=1..,emp=0,7.62=1..},nbt={SelectedItem:{tag:{type:minigun}}}] unless entity @s[scores={emp=0,7.62=1..},nbt={RootVehicle:{},SelectedItem:{tag:{type:minigun}}}] unless entity @s[scores={sneak=1..},nbt={SelectedItem:{tag:{type:railgun.hacked}}}] unless entity @s[scores={a.hk=1..,f.hk=2},nbt={SelectedItem:{tag:{type:hk416}}}] unless entity @s[scores={a.ar=1..,sneak=1},nbt={SelectedItem:{tag:{type:assault_rifle}}}] unless entity @s[scores={a.mp5a3=1..,f.mp5a3=1},nbt={SelectedItem:{tag:{type:mp5a3}}}] unless entity @s[scores={a.mp5sd=1..,f.mp5sd=1},nbt={SelectedItem:{tag:{type:mp5sd}}}] run scoreboard players set @s u.coas 0
scoreboard players set @s[scores={u.coas=2..}] u.coas 0