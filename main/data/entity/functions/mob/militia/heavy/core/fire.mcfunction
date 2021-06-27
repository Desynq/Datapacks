execute positioned ~ ~1.8 ~ run function entity:armor_stand/summon/muzzle_flash
summon area_effect_cloud ^ ^ ^50 {Tags:["bullet.marker"],Radius:0}

summon arrow ~ ~1.8 ~ {Tags:["bullet","ar.bullet"],CustomName:'"[λ] Heavy Infantry"',SoundEvent:block.anvil.break,damage:3,Color:-1,Team:Militia}

function coas:core/set_motion



playsound gun.ak47.fire ambient @a[distance=0..] ~ ~ ~ 16 2
