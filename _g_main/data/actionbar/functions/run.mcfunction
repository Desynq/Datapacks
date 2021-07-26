##########
# Autorun
##########

tag @s[tag=actionbar] remove actionbar
function actionbar:tag

execute if entity @s[tag=!actionbar] run function actionbar:main
#other
execute if entity @s[tag=!parkour_enabled,predicate=entity:equipment/actionbar] run function actionbar:other
