execute store result score @s soulSword1 run data get entity @s[nbt={SelectedItem:{tag:{type:soul_sword}}}] SelectedItem.tag.AttributeModifiers[0].Amount 1
execute store result score @s soulSword2 run data get entity @s[nbt={SelectedItem:{tag:{type:soul_sword}}}] SelectedItem.tag.AttributeModifiers[1].Amount 1000000
item replace entity @s weapon.mainhand with air
xp add @s -10 points

summon item ~ ~ ~ {Tags:["soul_sword"],Item:{id:stone_sword,Count:1,tag:{type:soul_sword,Unbreakable:0b,RepairCost:40,Enchantments:[{id:unbreaking,lvl:5}],AttributeModifiers:[{AttributeName:generic.attack_damage,Amount:0,Slot:mainhand,UUID:[I;585819,69081,58916,772185]},{AttributeName:generic.attack_speed,Amount:0,Operation:2,Slot:mainhand,UUID:[I;585781,678261,657185,57817]}],display:{Name:'{"italic":"false","color":"dark_purple","text":"Soulbound Sword"}'}}}}
execute store result entity @e[type=item,tag=soul_sword,sort=nearest,limit=1] Item.tag.AttributeModifiers[0].Amount double 1 run scoreboard players add @s soulSword1 1
execute store result entity @e[type=item,tag=soul_sword,sort=nearest,limit=1] Item.tag.AttributeModifiers[1].Amount double .000001 run scoreboard players remove @s soulSword2 25000
tag @e[type=item,tag=soul_sword] remove soul_sword
