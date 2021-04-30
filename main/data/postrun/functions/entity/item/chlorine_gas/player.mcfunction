effect give @s blindness 2 0 true
effect give @s[nbt=!{Inventory:[{Slot:103b,tag:{type:hazmat_mask}}]},nbt=!{Inventory:[{Slot:103b,tag:{Tags:["gas_mask"]}}]}] slowness 2 3 true

execute if entity @s[nbt={HurtTime:1s},nbt=!{Inventory:[{Slot:103b,tag:{type:hazmat_mask}}]},nbt=!{Inventory:[{Slot:103b,tag:{Tags:["gas_mask"]}}]}] run playsound entity.blaze.ambient master @a[distance=0..] ~ ~ ~ 2 1.75