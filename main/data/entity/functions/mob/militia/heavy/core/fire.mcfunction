execute positioned ~ ~1.8 ~ run function entity:armor_stand/summon/muzzle_flash
summon area_effect_cloud ^ ^ ^50 {Tags:["bullet.marker"],Radius:0}

summon arrow ~ ~1.75 ~ {Tags:["bullet","ar.bullet"],SoundEvent:block.anvil.break,damage:2,Color:-1,Team:Militia}

data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion



playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 4 2
execute at @s rotated ~ 0 run tp @s ^ ^ ^-0.05
