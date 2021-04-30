scoreboard players add @s[scores={u.coas=1..,sneak=1..}] pda 1

execute if entity @s[scores={pda=1}] run function coas:pda/runoffs/pln_forwarder
execute if entity @s[scores={pda=2}] run function coas:pda/runoffs/locator
execute if entity @s[scores={pda=3}] run function coas:pda/runoffs/bpm_detector
#execute if entity @s[scores={pda=4}] run function coas:pda/runoffs/vpn_forwarder
#execute if entity @s[scores={pda=5}] run function coas:pda/runoffs/emp_toggler