scoreboard players remove #skeleton_health_set temporary 1
execute if score #skeleton_health_set temporary matches ..-1 run function ww:sub/settings/skeleton_health/add
function ww:settings/game/skeleton_health/