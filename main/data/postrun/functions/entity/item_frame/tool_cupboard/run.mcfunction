execute if entity @s[nbt=!{Item:{tag:{type:tool_cupboard}}}] run function postrun:entity/item_frame/tool_cupboard/kill



execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}},distance=..64] run function postrun:entity/item_frame/tool_cupboard/outline