scoreboard players remove #night_time_set temporary 30
execute if score #night_time_set temporary matches ..-1 run function ww:sub/settings/night_time/add
function ww:settings/game/night_time/