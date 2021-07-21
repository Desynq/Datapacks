execute if entity @s[predicate=entity:equipment/mainhand/coas/gun/railgun] run function actionbar:coas/gun/railgun/mainhand

execute if entity @s[predicate=entity:equipment/offhand/coas/gun/railgun] run title @s actionbar [{"color":"dark_aqua","text":" Reload: "},{"color":"aqua","score":{"name":"@s","objective":"reload"}},{"color":"aqua","text":"/100"}]
