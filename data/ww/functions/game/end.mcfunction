## ww:game/end
scoreboard objectives setdisplay sidebar role_list
scoreboard objectives setdisplay list win_count
scoreboard players set @a death_count 0
data remove storage ww: in_game
bossbar set day_time players
bossbar set night_time players
function ww:game/end/tp with storage ww:settings
tag @a remove wolf_alive
tag @a remove ctz_alive
tag @a remove mad_alive
scoreboard players set @a role -1
scoreboard players set @a ur 0
scoreboard players set @a kn 0
#kill @a[tag=entry]
effect clear @a
gamemode adventure @a
function ww:cycle/day/skeleton_kill/
time set 6000
clear @a[tag=entry]
scoreboard players set #turn temporary -1
scoreboard players set #reserve_timer temporary -1
tag @a remove tenkei
tag @a remove knight

title @a title "試合終了"