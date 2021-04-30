playsound entity.firework_rocket.launch master @a ~ ~ ~ 2147483647 1
playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 2147483647 .5
playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 2147483647 .5

execute align xyz run summon area_effect_cloud ~.5 ~.5 ~.5 {Tags:["flare"],Radius:0,Duration:2147483647}