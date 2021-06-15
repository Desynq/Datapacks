playsound block.anvil.use master @a ~ ~ ~ 4 1.5



function coas:core/get_data/offhand
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.durability set value 0
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.Damage set value 0

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{type:broken_railgun}}]}] weapon.offhand carrot_on_a_stick{CustomModelData:3,type:railgun,actionbar:1,display:{Name:'{"italic":"false","text":"Railgun"}',Lore:['{"italic":"false","color":"dark_aqua","text":"Avarice Special Weapon"}','{"italic":"false","color":"gray","text":"Uses electromagnets to fire rails"}','{"italic":"false","color":"red","text":"Highly Susceptible to EMPs"}']},AttributeModifiers:[{AttributeName:generic.movementSpeed,Amount:-.5,Operation:1,Slot:mainhand,UUIDLeast:1289,UUIDMost:27633}]}

replaceitem entity @s weapon.mainhand air
