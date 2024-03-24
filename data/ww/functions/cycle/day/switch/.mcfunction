scoreboard players set #day_time_tick temporary 0
scoreboard players set #night_time temporary -1
execute store result score #day_time temporary run scoreboard players get #day_time_set temporary
execute store result bossbar day_time max run scoreboard players get #day_time_set temporary
bossbar set night_time players
bossbar set day_time players @a
time set 6000
scoreboard players add #turn temporary 1
tellraw @a [{"score":{"objective": "temporary","name": "#turn"}},{"text":"日目の朝がやってきました。"}]
title @a title [{"text":"昼になりました","color":"yellow","bold":true,"italic":false}]
title @a subtitle [{"text":"- ","color":"gold"},{"score":{"objective": "temporary","name": "#turn"},"color":"gold"},{"text":"日目 -","color":"gold"}]
tellraw @a[tag=tenkei] {"text":"天啓の呪符の効果が切れた。"}
tag @a remove knight
tag @a remove tenkei
tag @a remove has_tenkei
tag @a remove skip
tag @a[tag=alive] add skip
scoreboard players reset @a skip
scoreboard players enable @a[tag=alive] skip
scoreboard players set #skip temporary 0
execute unless score #turn temporary matches ..1 run tag @a[tag=entry] remove knight
function ww:cycle/day/skeleton_kill/