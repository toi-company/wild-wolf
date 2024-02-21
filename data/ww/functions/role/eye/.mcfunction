tag @r[tag=entry] add eye
execute if entity @s[tag=eye] run tag @s remove eye
execute if entity @a[tag=eye] store result storage eye: role int 1 run scoreboard players get @r[tag=eye] role
execute unless entity @a[tag=eye] run function ww:role/eye/
execute if entity @a[tag=eye] run function ww:role/eye/1 with storage eye: