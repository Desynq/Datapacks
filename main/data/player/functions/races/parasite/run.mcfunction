execute if entity @s[predicate=!effects/hunger] unless entity @a[gamemode=!creative,gamemode=!spectator,distance=.5..32] run effect give @s hunger 1 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,predicate=!effects/hunger,distance=.5..32] hunger 5 0 true
