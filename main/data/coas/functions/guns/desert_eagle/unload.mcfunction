summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:104,Tags:["actionbar","7rnd_mag","mag"],type:7rnd_.50ae_magazine,display:{Name:'{"italic":"false","text":".50 Action Express Magazine"}',Lore:['{"italic":"false","color":"gray","text":"7rnd Max"}']}}}}
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:guns/desert_eagle/unload2

playsound item.crossbow.loading_end master @a
scoreboard players set @s m.deagle 0
scoreboard players set @s a.deagle 0