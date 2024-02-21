scoreboard players remove #reserve_timer_tick temporary 1
execute if score #reserve_timer_tick temporary matches 0 run scoreboard players remove #reserve_timer temporary 1
execute if score #reserve_timer_tick temporary matches 0 run scoreboard players set #reserve_timer_tick temporary 20
execute if score #reserve_timer temporary matches 0 run function ww:game/start/
title @a actionbar [{"text":"試合開始まで：","color":"green"},{"score":{"objective": "temporary","name": "#reserve_timer"}}]