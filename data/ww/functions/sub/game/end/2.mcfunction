$data modify storage ww:end_win $(vcondition) set value true
execute store success score #end_win_ctz temporary if data storage ww:end_win ctz
execute store success score #end_win_wolf temporary if data storage ww:end_win wolf
execute store success score #end_win_mad temporary if data storage ww:end_win mad
execute if score #end_win_ctz temporary matches 1 run tag @s add ctz
execute if score #end_win_wolf temporary matches 1 run tag @s add wolf
execute if score #end_win_mad temporary matches 1 run tag @s add mad
execute if entity @a[tag=end] as @r[tag=end] run function ww:sub/game/end/