$tp @e[limit=1,type=marker,nbt={data:{id:$(id),map:$(map)}}]
$execute at @s run tp @s ~ ~ ~ facing entity @e[tag=center,tag=$(map),limit=1]
tag @s remove start_tp
execute as @r[tag=start_tp] run function ww:sub/game/start/tp/1