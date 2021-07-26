for i = 0, 100 do
	local a = 20 + i * 2
	print("execute if score @s stat.health matches "..i.." run attribute @s generic.health base set "..a)
end
