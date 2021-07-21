particle white_ash ~ ~1 ~ .3 .5 .3 1 100 force @a[scores={lowDetailMode=0}]
particle white_ash ~ ~1 ~ .3 .5 .3 1 10 force @a[scores={lowDetailMode=1}]

effect give @a[distance=..2,tag=!rx19,tag=!rx19_vaccine,predicate=!entity:equipment/head/gas_mask,gamemode=!spectator,gamemode=!creative] nausea 4 0 true
tag @a[distance=..2,tag=!rx19,tag=!rx19_vaccine,predicate=!entity:equipment/head/gas_mask,gamemode=!spectator,gamemode=!creative] add rx19
