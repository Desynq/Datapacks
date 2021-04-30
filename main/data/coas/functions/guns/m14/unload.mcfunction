summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:105,Tags:["actionbar","20rnd_mag","mag"],type:20rnd_5.56_magazine,display:{Name:'{"italic":"false","text":"5.56x45mm Magazine"}',Lore:['""']}}}}
tag @s add unloading
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:guns/m14/unload2
tag @s remove unloading

playsound item.crossbow.loading_end master @a
scoreboard players set @s m.m14 0
scoreboard players set @s a.m14 0