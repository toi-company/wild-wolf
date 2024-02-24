scoreboard players set #night_time_tick temporary 0
scoreboard players set #day_time temporary -1
execute store result score #night_time temporary run scoreboard players get #night_time_set temporary
execute store result bossbar night_time max run scoreboard players get #night_time_set temporary
bossbar set day_time players
bossbar set night_time players @a
time set 18000
scoreboard players add #turn temporary 1
tellraw @a [{"score":{"objective": "temporary","name": "#turn"}},{"text":"日目の夜がやってきました。"}]
title @a title [{"text":"夜","color":"dark_blue","bold":true,"italic":false}]
title @a subtitle [{"text":"Night Time","color":"yellow","bold":true,"italic":false}]
tag @a[tag=vampire_alive] add knight
function ww:cycle/night/skeleton_spawn/