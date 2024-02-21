scoreboard players add #day_time_set temporary 30
execute if score #day_time_set temporary matches ..-1 run function ww:sub/settings/day_time/add
function ww:settings/game/day_time/