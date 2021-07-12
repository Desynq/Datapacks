execute positioned ~ ~1.8 ~ run function entity:armor_stand/summon/muzzle_flash

summon arrow ~ ~1.8 ~ {Tags:["bullet","ar.bullet"],CustomName:'"[λ] Heavy Infantry"',SoundEvent:block.anvil.break,damage:10,PierceLevel:10,Color:-1,Team:Militia}

execute in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^5 {Tags:["bullet.marker"]}
execute as @e[type=arrow,tag=bullet,tag=!marked] run function coas:core/set_motion



playsound gun.ak47.fire ambient @a[distance=0..] ~ ~ ~ 16 2
