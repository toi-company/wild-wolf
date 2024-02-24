execute if score #temp_game_time temporary = #game_time_set temporary run function ww:win/draw
execute if score #temp_game_time_tick temporary matches 20.. run scoreboard players add #temp_game_time temporary 1
execute if score #temp_game_time_tick temporary matches 20.. run scoreboard players set #temp_game_time_tick temporary 0
scoreboard players add #temp_game_time_tick temporary 1