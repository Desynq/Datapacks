summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:103,Tags:["30rnd_mag","mag"],type:30rnd_9mm_magazine,display:{Name:'{"italic":"false","text":"9mm Magazine"}',Lore:['""']}}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.mp5sd
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:core/unloading/30

function coas:core/occupy


playsound item.crossbow.loading_end master @a

scoreboard players set @s m.mp5sd 0
scoreboard players set @s a.mp5sd 0