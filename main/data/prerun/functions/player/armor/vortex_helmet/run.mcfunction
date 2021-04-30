execute as @a[nbt={Inventory:[{Slot:103b,tag:{type:vortex_helmet}}]}] at @s run function prerun:player/armor/vortex_helmet/armor

execute as @a[nbt=!{Inventory:[{Slot:103b,tag:{type:vortex_helmet}}]}] at @s run function prerun:player/armor/vortex_helmet/clear