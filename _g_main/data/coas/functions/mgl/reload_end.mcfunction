clear @s[scores={type.mgl=0}] firework_star{type:chlorine_gas_grenade} 1
clear @s[scores={type.mgl=1}] firework_rocket 1
scoreboard players add @s a.mgl 1

playsound item.armor.equip_iron master @a
scoreboard players set @s reload 0