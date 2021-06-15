function coas:core/get_data/offhand
function coas:guns/glock/reload/loop
playsound item.armor.equip_iron master @a

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}
scoreboard players set @s reload 0
