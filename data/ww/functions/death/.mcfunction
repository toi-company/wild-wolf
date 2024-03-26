gamemode spectator @s[tag=entry]
tag @s remove wolf_alive
tag @s remove ctz_alive
tag @s remove mad_alive
tag @s remove vampire_alive
tag @s remove scientist_alive
clear @s[tag=entry]
tag @s remove tenkei
tag @s remove knight
tag @s remove allergy
tag @s remove skip
tag @s remove alive
tag @s remove wolf_axe_cooltime
scoreboard players set @s arsenic_timer_tick 0
scoreboard players reset @s backpack
tag @s remove death
execute store result storage temp: rotation float 1 run data get entity @s Rotation[0]
execute at @s run function ww:death/skull with storage temp:
scoreboard players set @s death_count 0