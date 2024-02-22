scoreboard objectives setdisplay sidebar
title @a title "試合開始"
scoreboard players set @a death_count 0
function ww:sub/game/start/regeneration with storage ww:settings
scoreboard players set #day_time temporary -1
scoreboard players set #night_time temporary -1
function ww:cycle/night/switch/
give @a[tag=entry] stick{display:{Name:'{"text":"鈍器"}',Lore:['{"text":"世界最強の鈍器","color":"gray"}']}}
give @a[tag=entry] cooked_beef 3
function ww:shop/data/combat/
function ww:shop/data/support/

data modify storage ww: in_game set value true