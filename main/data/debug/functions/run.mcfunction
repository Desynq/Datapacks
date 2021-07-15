#######
# Init
#######

#execute as @a at @s unless score @s cmp matches ..-1 unless score @s cmp matches 1.. if entity @s[tag=cmp] run function debug:cmp/re-enter
#scoreboard players enable @a cmp
#execute as @a at @s unless score @s cmp matches 0 run function debug:cmp/run
#execute as @a at @s if score @s cmp matches 0 if entity @s[tag=cmp] run function debug:cmp/exit
#gamemode adventure @a[predicate=dimension/cmp,tag=!cmp,name=!Desynq,name=!sooupe,name=!Starging]
#execute as @a[predicate=dimension/cmp,tag=!cmp,name=!Desynq,name=!sooupe,name=!Starging] in minecraft:overworld run tp 0 64 0

execute in minecraft:overworld run summon marker 0 0 0 {Tags:["rng"]}
execute store result score x rng run data get entity @e[type=marker,tag=rng,limit=1] UUID[0] 1
kill @e[type=marker,tag=rng]



##########
# Ticking
##########

scoreboard players add 3 tick 1
scoreboard players add 4 tick 1
scoreboard players add 5 tick 1
scoreboard players add 10 tick 1
scoreboard players add 20 tick 1
scoreboard players add 40 tick 1
scoreboard players add 50 tick 1
scoreboard players add 100 tick 1
scoreboard players add 300 tick 1
scoreboard players add 600 tick 1



##############
# Pre-Runtime
##############

function global:run
execute as @e[type=!player] at @s run function entity:prerun
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

execute as @e[type=!player] at @s run function entity:run

execute as @a[predicate=effects/luck_1] at @s run function entity:custom/died_from_he_arrow
execute as @a[predicate=effects/luck_2] at @s run function entity:custom/died_from_he_charged_arrow
execute as @a[predicate=effects/luck_3] at @s run function entity:custom/died_from_he_supercharged_arrow



##########
# Cleanup
##########

execute as @a[advancements={debug:inventory_changed=true}] run function debug:player/clear


kill @e[type=#arrows,tag=bullet,nbt={inGround:true}]
kill @e[type=area_effect_cloud,tag=RootVehicle,predicate=entity/ridden_by/anything]

kill @e[type=item,nbt={Item:{tag:{Tags:["clear"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["buyable"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["craftable"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["custom"]}}}]
kill @e[type=item,nbt={Item:{tag:{Tags:["eod_armour"]}}}]


execute as @a run function player:reset



################
# Ticking Reset
################

execute if score 3 tick matches 3.. run scoreboard players set 3 tick 0
execute if score 4 tick matches 4.. run scoreboard players set 4 tick 0
execute if score 5 tick matches 5.. run scoreboard players set 5 tick 0
execute if score 10 tick matches 10.. run scoreboard players set 10 tick 0
execute if score 20 tick matches 20.. run scoreboard players set 20 tick 0
execute if score 40 tick matches 40.. run scoreboard players set 40 tick 0
execute if score 50 tick matches 50.. run scoreboard players set 50 tick 0
execute if score 100 tick matches 100.. run scoreboard players set 100 tick 0
execute if score 300 tick matches 300.. run scoreboard players set 300 tick 0
execute if score 600 tick matches 600.. run scoreboard players set 600 tick 0
