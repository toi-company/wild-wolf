scoreboard players set @s death_count 0
execute if entity @s[tag=entry] run clear @s
scoreboard players reset @s role
scoreboard players reset @s player_id
tag @s remove mad_alive
tag @s remove wolf_alive
tag @s remove ctz_alive
tag @s remove vampire_alive
tag @s remove scientist_alive
scoreboard players set @s ur 0
gamemode adventure
execute if data storage ww: in_game run gamemode spectator @s
scoreboard players set @s leave 0
tag @s remove tenkei
tag @s remove knight
tag @s remove allergy
tag @s remove skip
tag @s remove alive
team leave @s
scoreboard players operation @s game_count = #count game_count