execute as @a[tag=entry] run tag @s add end
function ww:sub/game/end/end/
function ww:game/end
title @a subtitle {"text":"～人狼の勝利～","color":"red"}
tellraw @a [{"text":"今回勝利した陣営は、"},{"color":"red","text":"人狼陣営"},{"text":"です。"},{"text":"\n今回勝利したプレイヤーは、"},{"color":"red","text":"人狼:"},{"selector":"@a[tag=wolf]"},{"text":" "},{"color":"red","text":"狂人:"},{"selector":"@a[tag=mad]"},{"text":" "},{"text":"です。"}]
scoreboard players add @a[tag=wolf] win_count 1
scoreboard players add @a[tag=mad] win_count 1
execute as @a run tellraw @s [{"color":"yellow","text":"現在の勝利数:"},{"text":""},{"score":{"name":"@s","objective":"win_count"}}]
tag @a remove ctz
tag @a remove wolf
tag @a remove mad