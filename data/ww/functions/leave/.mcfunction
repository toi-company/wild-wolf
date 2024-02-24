scoreboard players set @s death_count 0
execute if entity @s[tag=entry] run clear @s
scoreboard players set @s role -1
scoreboard players set @s player_id -1
tag @s remove mad_alive
tag @s remove wolf_alive
tag @s remove ctz_alive
tag @s remove vampire_alive
tag @s remove scientist_alive
scoreboard players set @s ur 0
gamemode adventure
scoreboard players set @s leave 0
tag @s remove tenkei
tag @s remove knight
team leave @s