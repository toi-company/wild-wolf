$execute if data storage wherewolf: roles[$(id)] run tellraw @a {"text":"idが重複しています。","color":"red"}
$execute unless data storage wherewolf: roles[$(id)] run scoreboard players set #role_create_toggle temporary 1
$execute if score #role_create_toggle temporary matches 1 run data modify storage wherewolf: roles append value {id:$(id),name:"$(name)",ur_name:"$(ur_name)",view_name:"$(view_name)"",color:"$(color)",ur_color:"$(ur_color)",vcondition:$(vcondition),value:$(value)}
scoreboard players set #role_create_toggle temporary 0