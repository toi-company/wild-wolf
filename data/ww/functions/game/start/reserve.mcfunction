#ww:game/start→ww:game/start/reserve→ww:game/reserve(常時実行)→ww:game/start/
#ww:game/start→ww:game/start/reserve→ww:game/spectator
title @a title ""
scoreboard players set #player_id temporary 1
scoreboard players set @a player_id 0
function ww:sub/role/
execute as @a[tag=spectator] run function ww:game/start/spectator with storage ww:settings
tellraw @a[tag=wolf_alive] [{"text":"今回の人狼は、"},{"color":"red","selector":"@a[tag=wolf_alive]"},{"text":"です。"}]
scoreboard objectives setdisplay list player_id
#tellraw @a[scores={role=0}] [{"text":"あなたの役職は、"},{"text":"市民","color":"green"},{"text":"です。"}]
#tag @a[scores={role=0}] add ctz_alive
$effect give @a instant_health $(reserve_timer) $(reserve_timer) true
$effect give @a saturation $(reserve_timer) 255 true
$effect give @a regeneration $(reserve_timer) 255 true
$scoreboard players set #reserve_timer temporary $(reserve_timer)
scoreboard players set #reserve_timer_tick temporary 20