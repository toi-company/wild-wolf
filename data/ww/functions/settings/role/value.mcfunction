$data modify storage temp: id set value $(id)
execute store result score #id_temp temporary run data get storage temp: id
execute if score #id_temp temporary matches 0 run tellraw @a {"text":"市民のvalueを変更することはできません。","color":"red"}
$execute unless score #id_temp temporary matches 0 run data modify storage wherewolf: roles[$(id)].value set value $(value)