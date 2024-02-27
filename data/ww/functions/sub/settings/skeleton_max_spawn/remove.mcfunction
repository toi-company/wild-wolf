scoreboard players remove #skeleton_max_set temporary 5
execute if score #skeleton_max_set temporary matches ..-1 run function ww:sub/settings/skeleton_max_spawn/add
function ww:settings/game/skeleton_max_spawn/