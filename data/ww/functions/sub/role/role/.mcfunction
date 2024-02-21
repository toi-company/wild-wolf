#3_1_1.valueが0ではない場合振り分け待ちのランダムなプレイヤーはその役職に就く
#3_1_2.valueが1以上の場合1減らす
#3_2_1.valueが0の場合id(スコアボード)を１減算
#3_2_2.id(スコアボード)をストレージと同期
execute unless score #role_value temporary matches 0 run tag @r[tag=player] add role
execute unless score #role_value temporary matches 0 run tag @r[tag=role_player_id] add player_id
$execute if entity @a[tag=role] as @a[tag=role] run scoreboard players set @r[tag=role] role $(id)
$execute if entity @a[tag=role] as @a[tag=role] run tag @s add $(vcondition)_alive
execute if entity @a[tag=player_id] as @a[tag=player_id] run scoreboard players operation @s player_id = #player_id temporary
execute if entity @a[tag=player_id] as @a[tag=player_id] run scoreboard players add #player_id temporary 1
$execute if entity @a[tag=role] as @a[tag=role] run tellraw @s [{"text":"あなたの役職は、"},{"text":"$(view_name)","color":"$(color)"},{"text":"です。"}]
execute if entity @a[tag=role] as @a[tag=role] run tag @s remove player
execute if entity @a[tag=role] as @a[tag=role] run tag @s remove role
execute if entity @a[tag=player_id] as @a[tag=player_id] run tag @s remove role_player_id
execute if entity @a[tag=player_id] as @a[tag=player_id] run tag @s remove player_id
execute if score #role_value temporary matches 1.. run scoreboard players remove #role_value temporary 1
execute if score #role_value temporary matches 1.. run function ww:sub/role/role/ with storage temp: roles
execute if score #role_value temporary matches 0 if score #role_count temporary matches 1.. run scoreboard players remove #role_count temporary 1
execute if entity @a[tag=player] if score #role_value temporary matches 0 run function ww:sub/role/data/