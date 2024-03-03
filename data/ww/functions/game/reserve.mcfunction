#ww:game/start→ww:game/start/reserve→ww:game/reserve(常時実行)→ww:game/start/
#ww:game/start→ww:game/start/reserve→ww:game/spectator
scoreboard players remove #reserve_timer_tick temporary 1
execute if score #reserve_timer_tick temporary matches 0 run scoreboard players remove #reserve_timer temporary 1
execute if score #reserve_timer_tick temporary matches 0 unless score #reserve_timer temporary matches ..3 as @a at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.7
execute if score #reserve_timer_tick temporary matches 0 if score #reserve_timer temporary matches 1..3 as @a at @s run playsound minecraft:entity.experience_orb.pickup player @s
execute if score #reserve_timer_tick temporary matches 0 run scoreboard players set #reserve_timer_tick temporary 20
execute if score #reserve_timer temporary matches 0 run function ww:game/start/

title @a actionbar [{"text":"試合開始まで：","color":"green"},{"score":{"objective": "temporary","name": "#reserve_timer"}}]