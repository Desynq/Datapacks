execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:1b}]}] run function entity:arrow/explosive/normal
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:2b}]}] run function entity:arrow/explosive/charged
execute if entity @s[nbt={CustomPotionEffects:[{Id:26b,Amplifier:3b}]}] run function entity:arrow/explosive/supercharged



execute if entity @s[type=spectral_arrow] at @a[predicate=equipment/mainhand/ender_bow] if score @s entOwner = @p plyUUID run function entity:arrow/in_ground/ender_bow





execute if entity @s[nbt=!{pickup:true},nbt=!{inBlockState:{Name:"minecraft:target"}}] run kill @s
execute if entity @s[type=spectral_arrow] run kill @s
