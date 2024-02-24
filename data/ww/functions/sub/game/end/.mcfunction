scoreboard players set #end_win_ctz temporary 0
scoreboard players set #end_win_wolf temporary 0
scoreboard players set #end_win_mad temporary 0
scoreboard players set #end_win_vampire temporary 0
data remove storage ww:end_win ctz
data remove storage ww:end_win wolf
data remove storage ww:end_win mad
data remove storage ww:end_win vampire
execute store result storage ww:end_win role int 1 run scoreboard players get @s role
tag @s remove end
function ww:sub/game/end/1 with storage ww:end_win