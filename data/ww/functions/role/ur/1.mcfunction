$execute store result storage ur: role int 1 run scoreboard players get @p[scores={player_id=$(id)}] role
$execute unless score #day_time temporary matches 0.. as @a[distance=0..1] unless score @s kn matches 1.. if score @s ur matches 0 run title @s actionbar [{"selector":"@e[scores={player_id=$(id)}]"}]
execute unless score #day_time temporary matches 0.. as @a[distance=0..1] unless score @s kn matches 1.. if score @s ur matches 1.. run function ww:role/ur/3 with storage ur:
$execute if score #day_time temporary matches 0.. as @a[distance=0..1] unless score @s kn matches 1.. run title @s actionbar [{"selector":"@e[scores={player_id=$(id)}]"}]
$data modify storage wherewolf: roles[$(role)].ur_id set value $(id)
$data modify storage wherewolf: roles[$(role)].ur_role set value $(role)
#$say $(role)
say a1
$execute if score #night_time temporary matches 0.. at @s if entity @a[scores={player_id=$(id)}] as @p if entity @s[scores={ur_cooltime=0}] if entity @s[scores={sneak=1..,ur=1..}] unless entity @s[scores={player_id=$(id)}] run function ww:role/ur/2 with storage wherewolf: roles[$(role)]