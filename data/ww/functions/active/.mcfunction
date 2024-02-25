#reserve
execute if score #reserve_timer temporary matches 1.. run function ww:game/reserve

# in_game
execute if data storage ww: in_game run function ww:game/in_game

# out_game
execute unless data storage ww: in_game run function ww:game/out_game

# spawnpoint
execute as @a at @s if block ~ ~ ~ air if entity @s[y=-60,dy=1000] run spawnpoint @s ~ ~ ~ ~

# sneak
scoreboard players set @a sneak 0

# 常に0加算
scoreboard players add @a ur_cooltime 0
scoreboard players add @a leave 0

# spectator
execute as @a[tag=spectator] run tag @s remove entry

# leave
execute as @a if score @s leave matches 1.. if data storage ww: in_game run scoreboard players set @s leave 0
execute as @a if score @s leave matches 1.. unless data storage ww: in_game run function ww:leave/