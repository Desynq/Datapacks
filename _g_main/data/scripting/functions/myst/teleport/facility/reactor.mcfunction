tp @s -118 52 56 0 ~
effect give @s blindness 3 0 true
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2147843647 .5

title @s reset
title @s times 40 20 40
title @s subtitle [{"color":"dark_gray","text":"Stage 4"}]
title @s title {"color":"gray","text":"Dark Matter Reactor","bold":"true"}