execute store result score #role_list temporary if data storage wherewolf: roles[]
scoreboard players remove #role_list temporary 1
scoreboard players reset * role_list
function ww:role_list/1