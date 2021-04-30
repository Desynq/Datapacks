playsound block.anvil.use master @a ~ ~ ~ 4 1.5

scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:assault_rifle}}]}] d.ar 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:bolt_action_rifle}}]}] d.bar 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:deagle}}]}] d.deagle 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:glock}}]}] d.glock 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] d.hk 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:light_machine_gun}}]}] d.lmg 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:m14}}]}] d.m14 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:minigun}}]}] d.minigun 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:remington}}]}] d.rem 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:vector}}]}] d.vector 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:vss}}]}] d.vss 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]}] d.smg 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:rpg}}]}] d.rpg 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]}] d.br 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5a3}}]}] d.mp5a3 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]}] d.mp5sd 0

replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{type:broken_railgun}}]}] weapon.offhand carrot_on_a_stick{CustomModelData:3,type:railgun,actionbar:1,display:{Name:'{"italic":"false","text":"Railgun"}',Lore:['{"italic":"false","color":"dark_aqua","text":"Avarice Special Weapon"}','{"italic":"false","color":"gray","text":"Uses electromagnets to fire rails"}','{"italic":"false","color":"red","text":"Highly Susceptible to EMPs"}']},AttributeModifiers:[{AttributeName:generic.movementSpeed,Amount:-.5,Operation:1,Slot:mainhand,UUIDLeast:1289,UUIDMost:27633}]}

replaceitem entity @s weapon.mainhand air