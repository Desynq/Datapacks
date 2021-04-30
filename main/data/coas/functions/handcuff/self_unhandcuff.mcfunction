playsound entity.sheep.shear master @a ~ ~ ~ 1 1.5
give @s carrot_on_a_stick{CustomModelData:10,type:handcuffs,display:{Name:'{"italic":"false","text":"Handcuffs"}',Lore:['{"italic":"false","color":"gray","text":"Steel locking hand restraints"}','{"italic":"false","color":"dark_aqua","text":"Handcuffed players can\'t hold items"}','{"italic":"false","color":"green","text":"Offhand: Self-handcuff"}','{"italic":"false","color":"green","text":"Use: Handcuff unarmed player (<=2m) in front of you"}']}}
tag @s remove handcuffed

replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:11,type:handcuff_key,display:{Name:'{"italic":"false","text":"Handcuff Key"}',Lore:['{"italic":"false","color":"gray","text":"Can unlock handcuffs"}','{"italic":"false","color":"green","text":"Offhand: Un-handcuff yourself"}','{"italic":"false","color":"green","text":"Use: Un-handcuff player (<=2m) in front of you"}']}}
replaceitem entity @s weapon.offhand air