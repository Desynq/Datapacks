execute anchored eyes run summon arrow ^ ^ ^ {Tags:["bullet","remington.bullet"],damage:20,Color:-1}
execute as @e[type=arrow,tag=remington.bullet,sort=nearest,limit=1,tag=!marked] run function coas:core/uuid


execute in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^4 {Tags:["bullet.marker"]}
execute as @e[type=arrow,tag=bullet,tag=!marked] run function coas:core/set_motion
