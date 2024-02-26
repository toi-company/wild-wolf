scoreboard players set #ur_ctz temporary 0
scoreboard players set #ur_wolf temporary 0
scoreboard players set #ur_vampire temporary 0
scoreboard players set #ur_scientist temporary 0
data remove storage ur: decision.ctz
data remove storage ur: decision.wolf
data remove storage ur: decision.mad
data remove storage ur: decision.vampire
data remove storage ur: decision.scientist
$data modify storage ur: decision.$(vcondition) set value true
execute store success score #ur_ctz temporary if data storage ur: decision.ctz
execute store success score #ur_wolf temporary if data storage ur: decision.wolf
execute store success score #ur_vampire temporary if data storage ur: decision.vampire
execute store success score #ur_scientist temporary if data storage ur: decision.scientist
execute unless score #ur_ctz temporary matches 1 store success score #ur_ctz temporary if data storage ur: decision.mad
$tellraw @s [{"selector":"@a[scores={player_id=$(ur_id)}]"},{"text":"は、"},{"color":"$(ur_color)","text":"$(ur_name)"},{"text":"です。"}]
$execute as @a[scores={player_id=$(ur_id)}] if entity @s[tag=tenkei] run tellraw @s {"color":"red","text":"あなたは誰かに占われました。"}
$execute as @a[scores={player_id=$(ur_id)}] if entity @s[tag=tenkei] run playsound entity.ender_dragon.shoot player @s
execute if score #ur_ctz temporary matches 1 run playsound entity.experience_orb.pickup player @s
execute if score #ur_wolf temporary matches 1 run playsound entity.ender_dragon.shoot player @s
execute if score #ur_vampire temporary matches 1 run playsound entity.ender_dragon.shoot player @s
execute if score #ur_scientist temporary matches 1 run playsound entity.ender_dragon.shoot player @s
scoreboard players set @s ur_cooltime 20
scoreboard players remove @s ur 1