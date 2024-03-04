scoreboard players add #skip temporary 1
scoreboard players reset @s skip
tag @s remove skip

execute unless score #skip temporary > #skip_alive temporary run tellraw @a [{"text":"時飛ばし投票が行われました！ | "},{"text":"現在の投票数:"},{"score":{"objective": "temporary","name": "#skip"}}]

execute if score #skip temporary > #skip_alive temporary if score #day_time temporary matches 1.. run function ww:skip_day

execute if score #skip temporary > #skip_alive temporary if score #night_time temporary matches 1.. run function ww:skip_night