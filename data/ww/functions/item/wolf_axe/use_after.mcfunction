advancement revoke @s only ww:wolf_axe
tag @s add wolf_axe_cooltime
execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1 0.1
execute if score #night_time temporary matches 1.. run scoreboard players set @s wolf_axe_cooltime 600