local a, b = 0, 1
for i = 1, 101 do
	io.write("execute if score @s stat.damage matches ",a," run attribute @s generic.attack_damage base set ",b,"\n")
	a = a + 1
	b = b + 1
end