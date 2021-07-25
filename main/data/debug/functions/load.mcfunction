########################
# Scoreboard Objectives
########################




################
# Compatability
################

execute store success score %bool global run datapack disable vanilla
execute if score %bool global matches 1 run function debug:load/reorder

commandaliases reload



##############
# Other Stuff
##############

execute in minecraft:overworld run summon marker 0 0 0 {Tags:["onLoad"]}



function debug:load/bossbars
function debug:load/upgrades/run





execute in minecraft:overworld positioned 0 0 0 unless block ~ ~ ~ oak_sign run setblock ~ ~ ~ oak_sign
execute in minecraft:overworld positioned 0 0 1 unless block ~ ~ ~ shulker_box run setblock ~ ~ ~ shulker_box





gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doInsomnia false
gamerule forgiveDeadPlayers false
gamerule keepInventory true
gamerule maxCommandChainLength 1048576
gamerule maxEntityCramming 16
gamerule playersSleepingPercentage 50
gamerule showDeathMessages true
gamerule spawnRadius 1
gamerule spectatorsGenerateChunks true
gamerule universalAnger true

# mob griefing
gamerule mobGriefing false
gamerule dragonGriefing false
gamerule lenientGriefing true
gamerule witherGriefing false





function math:math_table




##########
# Cleanup
##########

kill @e[type=marker,tag=onLoad]

#tellraw @a {"color":"dark_purple","text":"Reloaded All Datapacks!"}
#tellraw @a {"color":"dark_purple","text":"Reloaded All Custom Commands!"}
