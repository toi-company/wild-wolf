#reserve
execute if score #reserve_timer temporary matches 1.. run function ww:game/reserve

# in_game
execute if data storage ww: in_game run function ww:game/in_game

# spawnpoint
execute as @a at @s if block ~ ~ ~ air if entity @s[y=-60,dy=1000] run spawnpoint @s ~ ~ ~ ~

# sneak
scoreboard players set @a sneak 0

# 常に0加算
scoreboard players add @a ur_cooltime 0
scoreboard players add @a leave 0

# role_list
function ww:role_list/

#shop
execute if entity @e[tag=combat_spawn] as @e[tag=combat_spawn] at @s run tp @e[sort=nearest,limit=1,type=villager,tag=combat_spawn] ^ ^ ^ facing entity @a[limit=1,tag=host]
execute if entity @e[tag=combat_spawn] as @e[tag=combat_spawn] at @s run tag @e[tag=combat_spawn] remove combat_spawn

execute if entity @e[tag=support_spawn] as @e[tag=support_spawn] at @s run tp @e[sort=nearest,limit=1,type=villager,tag=support_spawn] ^ ^ ^ facing entity @a[limit=1,tag=host]
execute if entity @e[tag=support_spawn] as @e[tag=support_spawn] at @s run tag @e[tag=support_spawn] remove support_spawn

# leave
execute as @a if score @s leave matches 1.. if data storage ww: in_game run scoreboard players set @s leave 0
execute as @a if score @s leave matches 1.. unless data storage ww: in_game run function ww:leave/