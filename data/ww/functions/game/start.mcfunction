tag @a remove ctz_alive
tag @a remove wolf_alive
tag @a remove mad_alive
function ww:game/end
tag @a[tag=entry] add player
tag @a[tag=entry] add role_player_id
scoreboard players set #turn temporary 0
scoreboard players add @a ur_cooltime 0
scoreboard players add @a kn_cooltime 0
execute as @e[tag=combat] run data remove entity @s Offers.Recipes[]
execute as @e[tag=support] run data remove entity @s Offers.Recipes[]
function ww:game/start/reserve with storage ww:settings
function ww:sub/game/start/
function ww:sub/game/start/tp/