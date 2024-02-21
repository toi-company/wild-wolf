execute as @a[tag=entry] run tag @s add end
function ww:sub/game/end/end/
function ww:game/end
title @a subtitle {"text":"～村人の勝利～","color":"green"}
tellraw @a [{"text":"今回勝利した陣営は、"},{"color":"green","text":"村人陣営"},{"text":"です。"},{"text":"\n今回勝利したプレイヤーは、"},{"color":"green","text":"村人:"},{"selector":"@a[tag=ctz]"},{"text":" "},{"text":"です。"}]
scoreboard players add @a[tag=ctz] win_count 1
execute as @a run tellraw @s [{"color":"yellow","text":"現在の勝利数:"},{"score":{"name":"@s","objective":"win_count"}}]
tag @a remove ctz
tag @a remove wolf
tag @a remove mad