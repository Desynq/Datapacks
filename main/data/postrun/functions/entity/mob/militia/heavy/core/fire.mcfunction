summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}
summon area_effect_cloud ^ ^ ^50 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","ar.bullet"],CustomName:'"a bullet"',SoundEvent:block.anvil.break,damage:2,Color:-1,Team:Militia}

function coas:core/set_motion



playsound entity.firework_rocket.blast master @a ~ ~ ~ 4 .75