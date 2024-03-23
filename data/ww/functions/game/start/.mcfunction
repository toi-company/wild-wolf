#ww:game/start→ww:game/start/reserve→ww:game/reserve(常時実行)→ww:game/start/
#ww:game/start→ww:game/start/reserve→ww:game/spectator
scoreboard objectives setdisplay sidebar
scoreboard players set @a death_count 0
function ww:sub/game/start/regeneration with storage ww:settings
scoreboard players set #day_time temporary -1
scoreboard players set #night_time temporary -1
give @a[tag=entry] stick{display:{Name:'{"text":"鈍器"}',Lore:['{"text":"世界最強の鈍器","color":"gray"}']}}
give @a[tag=entry] cooked_beef 3
tag @a[tag=entry] add alive
function ww:cycle/night/switch/
function ww:shop/data/combat/
function ww:shop/data/support/

execute as @a at @s run playsound entity.player.levelup player @s
title @a title "試合開始"
data remove storage ww: start
data modify storage ww: in_game set value true
execute as @a[tag=entry] run function ww:item/barrier/