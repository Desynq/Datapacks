execute anchored eyes run summon armor_stand ^ ^ ^ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}



execute anchored eyes run summon arrow ^ ^ ^ {Tags:["bullet","bar.bullet"],SoundEvent:block.anvil.break,damage:5,Color:-1,NoGravity:1,PierceLevel:4}
data modify entity @e[type=arrow,tag=bar.bullet,tag=!marked,limit=1] Owner set from entity @p UUID

execute in minecraft:overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^10 {Tags:["bullet.marker"]}
execute as @e[type=arrow,tag=bullet,tag=!marked] run function coas:core/set_motion





playsound entity.firework_rocket.large_blast master @a[distance=0..] ~ ~ ~ 4

function coas:guns/bolt_action_rifle/cooldown



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand

execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1
execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add @s durability.mh 1

execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 0 1 container.0
