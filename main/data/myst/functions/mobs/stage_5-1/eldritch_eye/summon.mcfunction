playsound entity.wither.spawn master @a[distance=0..] ~ ~ ~ 2147843647 .5


execute in slime:vietnam run summon item -114.0 241.5 76.0 {Tags:["eldritch_eye"],Invulnerable:1,NoGravity:1,PickupDelay:32767,Age:-32768,Item:{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:48}}}

execute in slime:vietnam run summon guardian -114.0 241 76.0 {PersistenceRequired:1,Tags:["eldritch_eye.hitbox","boss"],NoAI:1,Health:5000,Attributes:[{Name:generic.max_health,Base:5000}],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
