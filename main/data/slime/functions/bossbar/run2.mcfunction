execute unless score 20 tick matches 10.. run function slime:bossbar/colors





execute store result bossbar bosshp value store result score current_hp bossbar_values run data get entity @s Health 1

execute store result bossbar bosshp max store result score max_hp bossbar_values run attribute @s generic.max_health get

execute if entity @s[type=!player] run bossbar set bosshp name [{"color":"white","selector":"@s"},{"color":"red","text":" ["},{"color":"red","score":{"objective":"bossbar_values","name":"current_hp"}},{"color":"red","text":"/"},{"color":"red","score":{"objective":"bossbar_values","name":"max_hp"}},{"color":"red","text":"]"},{"color":"yellow","text":" ["},{"color":"yellow","score":{"objective":"bossbar_values","name":"absorption"}},{"color":"yellow","text":"]"}]

execute as @a[tag=boss,tag=bossbar,limit=1] run bossbar set bosshp name [{"color":"gray","text":"???"},{"color":"red","text":" ["},{"color":"red","score":{"objective":"bossbar_values","name":"current_hp"}},{"color":"red","text":"/"},{"color":"red","score":{"objective":"bossbar_values","name":"max_hp"}},{"color":"red","text":"]"}]


execute store result score absorption bossbar_values run data get entity @s AbsorptionAmount
