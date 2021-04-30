execute if entity @s[scores={m.ar=1}] run summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:100,Tags:["actionbar","30rnd_mag","mag"],type:30rnd_7.62s_magazine,display:{Name:'{"italic":"false","text":"7.62s Magazine"}',Lore:['""']}}}}
execute if entity @s[scores={m.ar=2}] run summon item ~ ~ ~ {Tags:["unloading"],Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:101,Tags:["actionbar","30rnd_mag","mag"],type:30rnd_7.62s_hv_magazine,display:{Name:'{"italic":"false","text":"7.62s HV Magazine"}',Lore:['""']}}}}

tag @s add unloading
scoreboard players operation @s mag = @s a.ar
execute as @e[type=item,tag=unloading,sort=nearest,limit=1] run function coas:core/unloading/30

function coas:core/occupy

playsound item.crossbow.loading_end master @a

scoreboard players set @s m.ar 0
scoreboard players set @s a.ar 0