kill @s[type=!player]
summon squid ~ ~ ~ {Tags:["ralamari"],Team:mob,CustomName:'{"color":"dark_purple","text":"Ralamari"}',Invulnerable:1,Team:mob}
particle reverse_portal ~ ~1 ~ .5 .5 .5 5 1000 force @a
playsound block.portal.travel master @a ~ ~ ~ .2