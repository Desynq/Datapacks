summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^100 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.75 ~ {Tags:["bullet","bar.bullet"],SoundEvent:block.anvil.break,damage:5,Color:-1,NoGravity:1,PierceLevel:4,UUID:[]}
data modify entity @e[type=arrow,tag=bar.bullet,tag=!marked,limit=1] Owner set from entity @p UUID
function coas:core/set_motion





playsound entity.firework_rocket.large_blast master @a[distance=0..] ~ ~ ~ 4

function coas:guns/bolt_action_rifle/cooldown

execute at @s run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={sneak=0}] ~ ~ ~ ~ ~-30
execute at @s run tp @s[tag=!proning,nbt=!{RootVehicle:{}},scores={sneak=1}] ~ ~ ~ ~ ~-15





function coas:core/get_data/mainhand

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add @s durability.mh 1

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}
