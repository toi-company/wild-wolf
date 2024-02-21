scoreboard players set #eye_wolf temporary 0
data remove storage eye: eye.ctz
data remove storage eye: eye.wolf
data remove storage eye: eye.mad
$data modify storage eye: eye.$(vcondition) set value true
execute store success score #eye_wolf temporary if data storage eye: eye.wolf
$execute if score #eye_wolf temporary matches 1 run tellraw @s [{"selector":"@a[scores={player_id=$(eye_id)}]","color":"red"},{"text":"は、あなたの仲間です。","color":"red"}]
execute if score #eye_wolf temporary matches 1 run playsound entity.ender_dragon.shoot player @s
tag @a remove eye
execute unless score #eye_wolf temporary matches 1 run function ww:role/eye/