### Auto-Despawn ###
	execute if entity @s[type=#nospawn,tag=] run function entity:mob/auto_despawn
	execute if entity @s[type=bat,tag=,predicate=!dimension/overworld] run function entity:mob/auto_despawn

### Teams ###
execute if entity @s[team=] run function entity:mob/join_team


execute if entity @s[scores={t.airblast=1..}] run function entity:mob/airblast




execute if entity @s[predicate=effects/luck_1] run function entity:custom/died_from_he_arrow
execute if entity @s[predicate=effects/luck_2] run function entity:custom/died_from_he_charged_arrow
execute if entity @s[predicate=effects/luck_3] run function entity:custom/died_from_he_supercharged_arrow

effect clear @s[team=mob,predicate=effects/levitation_0] levitation


#########
# Blocks
#########

execute if entity @s[predicate=dimension/translocatable] if block ~ ~ ~ structure_void run kill @s


execute if entity @s[type=cave_spider,predicate=dimension/overworld,nbt={HurtTime:10s}] align xyz if block ~ ~ ~ #air run function entity:mob/spiderweb



##############
# Categorised
##############

execute if entity @s[tag=custom] run function entity:mob/custom/run

execute if entity @s[type=pillager] run function entity:mob/illager

execute if entity @s[type=#zombies,predicate=entity/is/baby] run data merge entity @s {Health:0}



##############
# Custom Mobs
##############


### Militia ###
	execute if entity @s[type=husk,tag=militia.heavy,predicate=entity/targeting/anything] run function entity:mob/militia/heavy/run

### SCP ###
	execute if entity @s[tag=457] run function myst:scp/457/run

### Myst ###
	execute if entity @s[type=shulker,tag=mystacle.base] run function myst:mobs/mystacle/run
	execute if entity @s[type=shulker,tag=mystacle.stem] unless entity @e[type=shulker,tag=mystacle.base] run kill @s

	execute if entity @s[type=bat,tag=soulfly] run function myst:mobs/soulfly/run

	execute if entity @s[type=guardian,tag=rark] run function myst:mobs/rark/run

	execute if entity @s[type=squid,tag=ralamari] run function myst:mobs/ralamari/run

	execute if entity @s[type=wither_skeleton,tag=rift_scavenger] run function myst:mobs/rift_scavenger/run

	execute if entity @s[type=wither_skeleton,tag=rift_mage] run function myst:mobs/rift_mage/run

	execute if entity @s[type=guardian,tag=avogadro] run function myst:mobs/avogadro/run

	execute if entity @s[type=wither_skeleton,tag=baskalisk] run function myst:mobs/baskalisk/run

	execute if entity @s[type=elder_guardian,tag=raken] run function myst:mobs/raken/run

	execute if entity @s[type=wither_skeleton,tag=myster] at @s run function myst:mobs/myster/run



	execute if entity @s[type=wither,tag=,predicate=dimension/overworld] run data merge entity @s {Health:1000,Attributes:[{Name:generic.max_health,Base:1000}],Tags:["boss","charged"]}
	execute if score 100 tick matches 100 if entity @s[type=wither,tag=charged] run function myst:mobs/rift_scavenger/summon_decayed
	execute if score 100 tick matches 100 if entity @s[type=wither,tag=charged] run function myst:mobs/rift_scavenger/summon_decayed



execute if score stopwatch timer matches 1.. if entity @s[tag=!boss,tag=!frozen,nbt=!{NoAI:1b}] run function entity:mob/stopwatch/freeze
execute unless score stopwatch timer matches 1.. if entity @s[tag=!boss,tag=frozen] run function entity:mob/stopwatch/unfreeze
