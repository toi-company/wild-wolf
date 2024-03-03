$execute unless entity @s[tag=mad_alive] run give @s emerald $(accomplice_eye_price)
execute unless entity @s[tag=mad_alive] run clear @s end_crystal 1
execute if entity @s[tag=mad_alive] run function ww:role/eye/ with storage eye:
execute if entity @s[tag=mad_alive] run clear @s end_crystal 1