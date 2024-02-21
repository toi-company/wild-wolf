scoreboard players add #night_time_tick temporary 1
execute if score #night_time_tick temporary matches 20.. run scoreboard players remove #night_time temporary 1
execute if score #night_time_tick temporary matches 20.. run scoreboard players set #night_time_tick temporary 0
execute store result bossbar night_time value run scoreboard players get #night_time temporary