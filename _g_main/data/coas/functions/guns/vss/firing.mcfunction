execute anchored eyes run summon armor_stand ^ ^ ^ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}



execute anchored eyes run summon arrow ^ ^ ^ {Tags:["bullet","vss.bullet"],damage:15,Color:-1,PierceLevel:10}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID

execute in minecraft:overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^5 {Tags:["bullet.marker"]}
execute as @e[type=arrow,tag=bullet,tag=!marked] run function coas:core/set_motion



function coas:core/set_motion



playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ .5 1.5
playsound entity.firework_rocket.blast_far master @a[distance=0..] ~ ~ ~ 4



function coas:guns/vss/cooldown



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand

execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1

execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 0 1 container.0



effect give @s slowness 1 3 true
