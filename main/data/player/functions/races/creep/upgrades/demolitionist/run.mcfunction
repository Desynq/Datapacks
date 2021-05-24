execute if entity @s[advancements={races/creep/3/1=false}] as @e[type=arrow,distance=..16,tag=!demolitionist_arrow] if data entity @s Owner unless data entity @s CustomPotionEffects run function player:races/creep/upgrades/demolitionist/uncharged

execute if entity @s[advancements={races/creep/3/1=true}] as @e[type=arrow,distance=..16,tag=!demolitionist_arrow] if data entity @s Owner unless data entity @s CustomPotionEffects run function player:races/creep/upgrades/demolitionist/charged
