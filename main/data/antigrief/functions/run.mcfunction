kill @s[type=tnt_minecart]
kill @s[type=end_crystal]

execute if entity @s[type=tnt,nbt={Fuse:1s}] run function antigrief:check_tnt
