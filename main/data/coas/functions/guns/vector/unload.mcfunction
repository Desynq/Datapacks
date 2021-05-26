tag @s add unloading



execute in overworld if score @s mag.offhand matches 1 run replaceitem block 0 0 1 container.0 carrot_on_a_stick{CustomModelData:103,Tags:["30rnd_mag","mag"],type:"30rnd_9mm_magazine",display:{Name:'{"italic":"false","text":"9mm Magazine"}',Lore:['""']}}

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 store result score @s mag run scoreboard players get @s ammo.offhand

execute if score @s mag.offhand matches 1 run function coas:core/unloading/30

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



function coas:core/get_data/offhand

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.ammo set value 0
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.mag set value 0

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.crossbow.loading_end master @a
