execute at @a[distance=0.5..3,gamemode=!spectator,tag=!handcuffed,predicate=entity:equipment/mainhand/air] run function coas:handcuff/looking_at/tag
execute at @a[tag=targeted] run function coas:handcuff/looking_at/handcuff

tag @a remove targeted
