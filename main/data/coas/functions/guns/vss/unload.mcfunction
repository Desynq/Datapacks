summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:111,Tags:["20rnd_mag","mag"],type:20rnd_9x39_magazine,display:{Name:'{"italic":"false","text":"9x39 Magazine"}',Lore:['""']}}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.vss
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:core/unloading/20

function coas:core/occupy


playsound item.crossbow.loading_end master @a

scoreboard players set @s m.vss 0
scoreboard players set @s a.vss 0