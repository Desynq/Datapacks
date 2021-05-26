execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from storage inventory OffhandItem.id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from storage inventory OffhandItem.Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from storage inventory OffhandItem.tag
