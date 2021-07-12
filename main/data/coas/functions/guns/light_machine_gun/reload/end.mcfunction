execute in overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand

function coas:guns/light_machine_gun/reload/loop
execute in overworld run item replace entity @s weapon.offhand from block 0 0 1 container.0

playsound item.armor.equip_iron master @a
scoreboard players set @s reload 0
