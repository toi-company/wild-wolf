$scoreboard players set $(name) role_list $(value)
scoreboard players remove #role_list temporary 1
execute if score #role_list temporary matches 1.. run function ww:role_list/1