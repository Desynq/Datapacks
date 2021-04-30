execute if entity @s[scores={m.hk=1}] run summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:106,Tags:["actionbar","30rnd_mag","mag"],type:30rnd_5.56_magazine,display:{Name:'{"italic":"false","text":"5.56 Magazine"}',Lore:['{"italic":"false","color":"gray","text":"30rnd Max"}']},maxammo:30}}}
execute if entity @s[scores={m.hk=2}] run summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:109,Tags:["actionbar","100rnd_mag","mag"],type:100rnd_5.56tracer_magazine,display:{Name:'{"italic":"false","text":"5.56 Tracer C-Mag"}',Lore:['{"italic":"false","color":"gray","text":"100rnd Max"}']},maxammo:100}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.hk
execute as @e[type=item,tag=unloading,sort=nearest,limit=1,nbt={Item:{tag:{maxammo:30}}}] run function coas:core/unloading/30
execute as @e[type=item,tag=unloading,sort=nearest,limit=1,nbt={Item:{tag:{maxammo:100}}}] run function coas:core/unloading/100

playsound item.crossbow.loading_end master @a
scoreboard players set @s a.hk 0
scoreboard players set @s m.hk 0