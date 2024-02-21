scoreboard players add #day_time_tick temporary 1
execute if score #day_time_tick temporary matches 20.. run scoreboard players remove #day_time temporary 1
execute if score #day_time_tick temporary matches 20.. run scoreboard players set #day_time_tick temporary 0
execute store result bossbar day_time value run scoreboard players get #day_time temporary