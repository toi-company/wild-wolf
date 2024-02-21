scoreboard players remove #reserve_timer_set temporary 1
execute if score #reserve_timer_set temporary matches ..-1 run function ww:sub/settings/reserve_timer/reserve_timer_add
function ww:settings/game/reserve_timer/