scoreboard players add #night_time_tick temporary 1
execute if score #night_time_tick temporary matches 20.. run scoreboard players remove #night_time temporary 1
execute if score #night_time_tick temporary matches 20.. run scoreboard players set #night_time_tick temporary 0
execute store result bossbar night_time value run scoreboard players get #night_time temporary

scoreboard players remove @a[scores={wolf_axe_cooltime=0..}] wolf_axe_cooltime 1
execute as @a[scores={wolf_axe_cooltime=0}] run function ww:item/wolf_axe/use_enabled