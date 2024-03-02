scoreboard objectives setdisplay sidebar
scoreboard players set @a death_count 0
function ww:sub/game/start/regeneration with storage ww:settings
scoreboard players set #day_time temporary -1
scoreboard players set #night_time temporary -1
give @a[tag=entry] stick{display:{Name:'{"text":"鈍器"}',Lore:['{"text":"世界最強の鈍器","color":"gray"}']}}
give @a[tag=entry] cooked_beef 3
function ww:cycle/night/switch/
function ww:shop/data/combat/
function ww:shop/data/support/

title @a title "試合開始"
data modify storage ww: in_game set value true