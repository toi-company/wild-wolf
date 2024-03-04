scoreboard players set #night_time_tick temporary 0
scoreboard players set #day_time temporary -1
execute store result score #night_time temporary run scoreboard players get #night_time_set temporary
execute store result bossbar night_time max run scoreboard players get #night_time_set temporary
bossbar set day_time players
bossbar set night_time players @a
time set 18000
scoreboard players add #turn temporary 1
tellraw @a [{"score":{"objective": "temporary","name": "#turn"}},{"text":"日目の夜がやってきました。"}]
title @a title [{"text":"夜になりました","color":"dark_blue","bold":true,"italic":false}]
title @a subtitle [{"text":"- ","color":"gold"},{"score":{"objective": "temporary","name": "#turn"},"color":"gold"},{"text":"日目 -","color":"gold"}]
tag @a[tag=vampire_alive] add knight
execute if score #turn temporary matches ..3 run give @a[tag=scientist_alive] glass_bottle 1
tag @a remove skip
tag @a[tag=alive] add skip
scoreboard players reset @a skip
scoreboard players enable @a[tag=alive] skip
tag @a remove skip
tag @a[tag=alive] add skip
scoreboard players reset @a skip
scoreboard players enable @a[tag=alive] skip
scoreboard players set #skip temporary 0
function ww:cycle/night/skeleton_spawn/