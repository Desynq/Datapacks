execute if entity @a[distance=..1,sort=nearest,limit=1,tag=!handcuffed,nbt=!{SelectedItem:{}}] run playsound item.armor.equip_iron master @a
execute if entity @a[distance=..1,sort=nearest,limit=1,tag=!handcuffed,nbt=!{SelectedItem:{}}] run clear @s carrot_on_a_stick{type:handcuffs} 1
tag @a[distance=..1,sort=nearest,limit=1,tag=!handcuffed,nbt=!{SelectedItem:{}}] add handcuffed