#######
# Init
#######

execute as @a at @s unless score @s cmp matches ..-1 unless score @s cmp matches 1.. if entity @s[tag=cmp] run function debug:cmp/re-enter
scoreboard players enable @a cmp
execute as @a at @s unless score @s cmp matches 0 run function debug:cmp/run
execute as @a at @s if score @s cmp matches 0 if entity @s[tag=cmp] run function debug:cmp/exit
gamemode adventure @a[predicate=dimension/cmp,tag=!cmp,name=!Desynq,name=!sooupe,name=!Starging]
execute as @a[predicate=dimension/cmp,tag=!cmp,name=!Desynq,name=!sooupe,name=!Starging] in overworld run tp 0 64 0



execute as @a[scores={damage=1..},nbt={Attributes:[{Modifiers:[{Name:"random_crit"}]}]}] at @s run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 2147483647 2
execute as @a run attribute @s generic.attack_damage modifier remove 0-0-0-0-0
execute as @a run attribute @s generic.luck modifier remove 0-0-0-0-1
execute as @a run attribute @s generic.luck modifier remove 0-0-0-0-2

tag @a[tag=zapped] remove zapped
tag @a[tag=dead] remove dead
scoreboard players reset @a[scores={diedFrom=1..}] diedFrom
scoreboard players set @a insulation 0



##########
# Ticking
##########

scoreboard players add 3 tick 1
scoreboard players add 5 tick 1
scoreboard players add 10 tick 1
scoreboard players add 20 tick 1
scoreboard players add 50 tick 1
scoreboard players add 100 tick 1



#########
# Timers
#########

execute if score 50 tick matches ..24 run scoreboard objectives setdisplay belowName player.hp
execute if score 50 tick matches 25.. run scoreboard objectives setdisplay belowName deathCount



##############
# Pre-Runtime
##############

function global:run
execute as @e[type=armor_stand] at @s run function entity:prerun
execute as @a at @s run function player:run



##########
# Runtime
##########

function syntech:run
function custom_effects:run

function slime:run
function myst:run

function soup:run

execute if score 20 tick matches 20 as @a at @s run function debug:stats



###############
# Post-Runtime
###############

execute as @a[predicate=effects/luck_1] at @s run function entity:custom/died_from_he_arrow
execute as @e[type=!player] at @s run function entity:run

function gravestones:run



##########
# Cleanup
##########

execute as @a[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{Tags:["clear"]}}]}] run clear @s #all{Tags:["clear"]}
execute as @a[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{raceLocked:1b}}]}] run function debug:player/clear


kill @e[type=#arrows,tag=bullet,nbt={inGround:1b}]
kill @e[type=area_effect_cloud,tag=RootVehicle,nbt=!{Passengers:[{}]}]

kill @e[type=item,nbt={Item:{tag:{Tags:["clear"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["buyable"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["craftable"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["custom"]}}}]


execute as @a run function player:reset



################
# Ticking Reset
################

execute if score 3 tick matches 3.. run scoreboard players set 3 tick 0
execute if score 5 tick matches 5.. run scoreboard players set 5 tick 0
execute if score 10 tick matches 10.. run scoreboard players set 10 tick 0
execute if score 20 tick matches 20.. run scoreboard players set 20 tick 0
execute if score 50 tick matches 50.. run scoreboard players set 50 tick 0
execute if score 100 tick matches 100.. run scoreboard players set 100 tick 0
