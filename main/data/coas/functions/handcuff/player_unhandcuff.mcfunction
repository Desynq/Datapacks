execute at @a[distance=0.5..3,gamemode=!spectator,tag=handcuffed] run function coas:handcuff/looking_at/tag
execute at @a[tag=targeted] run function coas:handcuff/looking_at/unhandcuff

tag @a remove targeted
