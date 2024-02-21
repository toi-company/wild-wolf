#同期
execute store result storage temp: role.count int 1 run scoreboard players get #role_count temporary
function ww:sub/role/data/1 with storage temp: role