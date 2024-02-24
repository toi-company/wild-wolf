scoreboard players set #kr_wolf temporary 0
data remove storage kr: decision.ctz
data remove storage kr: decision.wolf
data remove storage kr: decision.mad
data remove storage kr: decision.vampire
$data modify storage kr: decision.$(vcondition) set value true
execute store success score #kr_wolf temporary if data storage ur: decision.wolf
#$execute if score #ur_ctz temporary matches 1 run tellraw @s [{"selector":"@a[scores={player_id=$(ur_id)}]"},{"text":"は、"},{"color":"green","text":"人間です。"}]
#$execute if score #ur_wolf temporary matches 1 run tellraw @s [{"selector":"@a[scores={player_id=$(ur_id)}]"},{"text":"は、"},{"color":"red","text":"人間ではありません。"}]
$tellraw @s [{"selector":"@a[scores={player_id=$(kr_id)}]"},{"text":"の安全を祈った。"}]
playsound entity.player.levelup player @s
execute unless score #kr_wolf temporary matches 1 run tag @s add knight
scoreboard players set @s kn_cooltime 20
scoreboard players remove @s kn 1