summon item ^ ^1.8 ^.5 {PickupDelay:20,Item:{id:stone,Count:1},Tags:["handcuff_item"]}
data modify entity @e[tag=handcuff_item,sort=nearest,limit=1] Item.id set from entity @s SelectedItem.id
data modify entity @e[tag=handcuff_item,sort=nearest,limit=1] Item.Count set from entity @s SelectedItem.Count
data modify entity @e[tag=handcuff_item,sort=nearest,limit=1] Item.tag set from entity @s SelectedItem.tag
tag @e[tag=handcuff_item,sort=nearest,limit=1] remove handcuff_item
replaceitem entity @s weapon.mainhand air