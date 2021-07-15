execute if entity @s[predicate=equipment/mainhand/coas/gun/railgun] run function actionbar:coas/gun/railgun/mainhand

execute if entity @s[predicate=equipment/offhand/coas/gun/railgun] run title @s actionbar [{"color":"dark_aqua","text":" Reload: "},{"color":"aqua","score":{"name":"@s","objective":"reload"}},{"color":"aqua","text":"/100"}]
