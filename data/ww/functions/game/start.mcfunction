#ww:game/start→ww:game/start/reserve→ww:game/reserve(常時実行)→ww:game/start/
#ww:game/start→ww:game/start/reserve→ww:game/spectator
scoreboard players add #count game_count 1
scoreboard players operation @a[tag=entry] game_count = #count game_count
tag @a remove ctz_alive
tag @a remove wolf_alive
tag @a remove mad_alive
tag @a remove vampire_alive
tag @a remove scientist_alive
data modify storage ww: start set value true
function ww:game/end
tag @a[tag=entry] add player
tag @a[tag=entry] add role_player_id
scoreboard players set #turn temporary 0
scoreboard players add @a ur_cooltime 0
scoreboard players add @a kn_cooltime 0
team join game @a[tag=entry]
execute as @e[tag=combat] run data remove entity @s Offers.Recipes[]
execute as @e[tag=support] run data remove entity @s Offers.Recipes[]
function ww:game/start/reserve with storage ww:settings
function ww:sub/game/start/
function ww:sub/game/start/tp/