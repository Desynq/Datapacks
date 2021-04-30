###############
# High Quality
###############

execute if entity @s[nbt={SelectedItem:{tag:{type:vss}}}] run playsound item.shield.break master @a[distance=0..] ~ ~ ~ 1 .5
execute if entity @s[nbt={SelectedItem:{tag:{type:vss}}}] run scoreboard players reset @s d.vss
execute if entity @s[nbt={SelectedItem:{tag:{type:vss}}}] run replaceitem entity @s weapon.mainhand netherite_scrap 20



#################
# Medium Quality
#################

execute if entity @s[nbt={SelectedItem:{tag:{type:bolt-action_rifle}}}] run playsound item.shield.break master @a[distance=0..] ~ ~ ~ 1 .5
execute if entity @s[nbt={SelectedItem:{tag:{type:bolt-action_rifle}}}] run scoreboard players reset @s d.bar
execute if entity @s[nbt={SelectedItem:{tag:{type:bolt-action_rifle}}}] run replaceitem entity @s weapon.mainhand netherite_scrap 10



##############
# Low Quality
##############

execute if entity @s[nbt={SelectedItem:{tag:{type:glock}}}] run playsound item.shield.break master @a[distance=0..] ~ ~ ~ 1 .5
execute if entity @s[nbt={SelectedItem:{tag:{type:glock}}}] run scoreboard players reset @s d.glock
execute if entity @s[nbt={SelectedItem:{tag:{type:glock}}}] run replaceitem entity @s weapon.mainhand netherite_scrap 5

execute if entity @s[nbt={SelectedItem:{tag:{type:vector}}}] run playsound item.shield.break master @a[distance=0..] ~ ~ ~ 1 .5
execute if entity @s[nbt={SelectedItem:{tag:{type:vector}}}] run scoreboard players reset @s d.vector
execute if entity @s[nbt={SelectedItem:{tag:{type:vector}}}] run replaceitem entity @s weapon.mainhand netherite_scrap 5



##########
# Cleanup
##########

scoreboard players set @s break_item 0