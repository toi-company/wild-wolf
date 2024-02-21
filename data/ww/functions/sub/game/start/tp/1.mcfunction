execute store result storage temp: start.id int 1 run scoreboard players get @s player_id
execute store result storage temp: start.map int 1 run data get storage ww:settings map
function ww:sub/game/start/tp/2 with storage temp: start