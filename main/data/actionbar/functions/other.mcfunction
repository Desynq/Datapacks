#assault_rifle.mainhand
title @s[nbt={SelectedItem:{tag:{type:assault_rifle}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.ar"}},{"color":"dark_red","text":"/720"}]


#bolt_action_rifle.mainhand
title @s[predicate=equipment/mainhand/coas/bolt-action_rifle] actionbar [{"entity":"@s","nbt":"SelectedItem.tag.durability"},"/64"]
#bolt_action_rifle.offhand
title @s[predicate=equipment/offhand/coas/bolt-action_rifle] actionbar [{"entity":"@s","nbt":"Inventory[{Slot:-106b}].tag.ammo"},"/4 ",{"score":{"name":"@s","objective":"reload"}},"/20"]


#light_machine_gun.mainhand
title @s[nbt={SelectedItem:{tag:{type:light_machine_gun}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.lmg"}},{"color":"dark_red","text":"/400"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:light_machine_gun}}]}] actionbar [{"color":"black","text":"Ammo:"},{"color":"dark_red","score":{"name":"@s","objective":"a.lmg"}},{"color":"dark_red","text":"/100"},{"color":"black","text":" Reload:"},{"color":"dark_red","score":{"objective":"reload","name":"@s"}},{"color":"dark_red","text":"/100"}]


#burst_rifle.mainhand
title @s[nbt={SelectedItem:{tag:{type:burst_rifle}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.br"}},{"color":"dark_red","text":"/540"}]
#burst_rifle.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:burst_rifle}}]}] actionbar [{"color":"black","text":" Firemode:"},{"color":"dark_red","score":{"objective":"f.br","name":"@s"}}]


#railgun.mainhand
execute if entity @s[nbt={SelectedItem:{tag:{type:railgun}}}] run function actionbar:railgun
#railgun.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:railgun}}]}] actionbar [{"color":"dark_aqua","text":" Reload: "},{"color":"aqua","score":{"name":"@s","objective":"reload"}},{"color":"aqua","text":"/100"}]


#amr.mainhand
title @s[nbt={SelectedItem:{tag:{type:anti-material_rifle}}}] actionbar ["[",{"score":{"name":"@s","objective":"spray"}},"]"]
#amr.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:anti-material_rifle}}]}] actionbar ""

#submachine_gun.mainhand
title @s[nbt={SelectedItem:{tag:{type:submachine_gun}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"white","score":{"name":"@s","objective":"d.smg"}},{"color":"white","text":"/500"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:submachine_gun}}]}] actionbar [{"color":"black","text":"Firemode:"},{"color":"white","score":{"name":"@s","objective":"f.smg"}}]


#desert_eagle.mainhand
title @s[nbt={SelectedItem:{tag:{type:desert_eagle}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.deagle"}},{"color":"dark_red","text":"/140"}]


#minigun.mainhand
title @s[nbt={SelectedItem:{tag:{type:minigun}}}] actionbar [{"color":"black","text":"Ammo:"},{"color":"dark_red","score":{"name":"@s","objective":"7.62"}},{"color":"black","text":" Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.minigun"}},{"color":"dark_red","text":"/1000"}]


#vector.mainhand
title @s[nbt={SelectedItem:{tag:{type:vector}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.vector"}},{"color":"dark_red","text":"/360"}]


#m14.mainhand
title @s[nbt={SelectedItem:{tag:{type:m14}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.m14"}},{"color":"dark_red","text":"/240"}]


#rpg.mainhand
title @s[nbt={SelectedItem:{tag:{type:rpg}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"name":"@s","objective":"d.rpg"}},{"color":"dark_red","text":"/50"}]
#rpg.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:rpg}}]}] actionbar [{"color":"black","text":"A:"},{"color":"dark_red","score":{"name":"@s","objective":"a.rpg"}},{"color":"dark_red","text":"/1"},{"color":"black","text":" R:"},{"color":"dark_red","score":{"name":"@s","objective":"reload"}},{"color":"dark_red","text":"/30"}]

#hk416.mainhand
title @s[nbt={SelectedItem:{tag:{type:hk416}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","score":{"objective":"d.hk","name":"@s"}},{"color":"dark_red","text":"/900"}]
#hk416.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:hk416}}]}] actionbar [{"color":"black","text":" Firemode:"},{"color":"dark_red","score":{"objective":"f.hk","name":"@s"}}]


#remington.mainhand
title @s[nbt={SelectedItem:{tag:{type:remington}}}] actionbar [{"color":"black","text":"Durability:"},{"color":"dark_red","nbt":"SelectedItem.tag.durability","entity":"@s"},{"color":"dark_red","text":"/80"}]
#remington.offhand
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:remington}}]}] actionbar [{"color":"black","text":"A:"},{"color":"dark_red","nbt":"Inventory[{Slot:-106b}].tag.ammo","entity":"@s"},{"color":"dark_red","text":"/8"},{"color":"black","text":" R:"},{"color":"dark_red","score":{"name":"@s","objective":"reload"}},{"color":"dark_red","text":"/20"}]


#mgl.mainhand/offhand
execute unless entity @s[nbt=!{SelectedItem:{tag:{type:mgl}}},nbt=!{Inventory:[{Slot:-106b,tag:{type:mgl}}]}] run function actionbar:mgl

#glock
title @s[nbt={SelectedItem:{tag:{type:glock}}}] actionbar [{"color":"black","text":"D:"},{"color":"dark_red","score":{"objective":"d.glock","name":"@s"}},{"color":"dark_red","text":"/510"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:glock}}]}] actionbar [{"color":"black","text":"D:"},{"color":"dark_red","score":{"objective":"d.glock","name":"@s"}},{"color":"dark_red","text":"/510"}]

#vss
title @s[nbt={SelectedItem:{tag:{type:vss}}}] actionbar [{"color":"black","text":"D:"},{"color":"dark_red","score":{"objective":"d.vss","name":"@s"}},{"color":"dark_red","text":"/200"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:vss}}]}] actionbar [{"color":"black","text":"D:"},{"color":"dark_red","score":{"objective":"d.vss","name":"@s"}},{"color":"dark_red","text":"/200"}]

#esr
title @s[nbt={SelectedItem:{tag:{type:electrostasis_rifle}}}] actionbar [{"color":"dark_aqua","score":{"objective":"a.esr","name":"@s"}}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:electrostasis_rifle}}]}] actionbar [{"color":"dark_aqua","score":{"objective":"a.esr","name":"@s"}}]

#mp5a3
title @s[nbt={SelectedItem:{tag:{type:mp5a3}}}] actionbar [{"color":"dark_red","score":{"objective":"d.mp5a3","name":"@s"}},{"color":"dark_red","text":"/900"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5a3}}]}] actionbar [{"color":"dark_red","score":{"objective":"f.mp5a3","name":"@s"}}]

#mp5sd
title @s[nbt={SelectedItem:{tag:{type:mp5sd}}}] actionbar [{"color":"dark_red","score":{"objective":"d.mp5sd","name":"@s"}},{"color":"dark_red","text":"/450"}]
title @s[nbt={Inventory:[{Slot:-106b,tag:{type:mp5sd}}]}] actionbar [{"color":"dark_red","score":{"objective":"f.mp5sd","name":"@s"}}]