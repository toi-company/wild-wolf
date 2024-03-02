execute as @a[tag=entry] run tag @s add end
function ww:sub/game/end/end/
function ww:game/end
title @a subtitle {"text":"～引き分け～","color":"gray"}
tellraw @a [{"text":"今回勝利した陣営は、"},{"color":"gray","text":"ありません"}]
tellraw @a [{"color":"green","text":"村人:"},{"selector":"@a[tag=ctz]"}]
tellraw @a [{"color":"red","text":"人狼:"},{"selector":"@a[tag=wolf]"},{"text":" "},{"color":"red","text":"共犯者:"},{"selector":"@a[tag=mad]"}]
tellraw @a [{"color":"red","text":"吸血鬼:"},{"selector":"@a[tag=vampire]"}]
tellraw @a [{"color":"red","text":"狼憑き:"},{"selector":"@a[scores={role=4}]"}]
tellraw @a [{"color":"dark_green","text":"科学者"},{"selector":"@a[tag=scientist]"}]
execute as @a run tellraw @s [{"color":"yellow","text":"現在の勝利数:"},{"score":{"name":"@s","objective":"win_count"}}]
tag @a remove ctz
tag @a remove wolf
tag @a remove mad
tag @a remove vampire
tag @a remove scientist
playsound ui.toast.challenge_complete player @a