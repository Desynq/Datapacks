summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:107,Tags:["actionbar","50rnd_mag","mag"],type:p90_magazine,display:{Name:'{"italic":"false","text":"P90 Magazine"}',Lore:['""']}}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.smg
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:core/unloading/50

playsound item.crossbow.loading_end master @a

scoreboard players set @s m.smg 0
scoreboard players set @s a.smg 0