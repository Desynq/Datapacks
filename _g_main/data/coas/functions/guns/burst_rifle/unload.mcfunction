summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:106,Tags:["30rnd_mag","mag"],type:30rnd_5.56_magazine,display:{Name:'{"italic":"false","text":"5.56 Magazine"}',Lore:['""']}}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.br
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:core/unloading/30

function coas:core/occupy


playsound item.crossbow.loading_end master @a

scoreboard players set @s m.br 0
scoreboard players set @s a.br 0