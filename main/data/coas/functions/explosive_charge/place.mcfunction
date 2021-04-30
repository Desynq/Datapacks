summon armor_stand ~ ~-2 ~ {NoGravity:1,Invisible:1,Tags:["placed_c4"],ArmorItems:[{},{},{},{id:carrot_on_a_stick,Count:1,tag:{CustomModelData:53,type:explosive_charge,Tags:["banned"],display:{Name:'{"italic":"false","color":"dark_green","text":"Explosive Charge"}',Lore:['{"italic":"false","color":"gray","text":"Sticks to surfaces!"}']}}}]}
scoreboard players operation @e[type=armor_stand,tag=placed_c4,sort=nearest,limit=1] ent.roty = @s ent.roty

kill @s