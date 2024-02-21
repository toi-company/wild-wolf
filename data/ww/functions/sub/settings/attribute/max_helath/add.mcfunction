scoreboard players add #max_health_set temporary 1
execute if score #max_health_set temporary matches ..-1 run function ww:sub/settings/attribute/max_helath/add
function ww:settings/attribute/wolf/max_health/