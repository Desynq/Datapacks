execute if entity @s[nbt=!{Item:{tag:{type:tool_cupboard}}}] run function entity:item_frame/tool_cupboard/kill



execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}},distance=..64] run function entity:item_frame/tool_cupboard/outline