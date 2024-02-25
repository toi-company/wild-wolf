# role_list
execute if score #role_list_time temporary matches 10.. run function ww:role_list/
execute if score #role_list_time temporary matches 10.. run scoreboard players set #role_list_time temporary 0
scoreboard players add #role_list_time temporary 1

# action_bar
title @a[tag=entry] actionbar [{"text":"エントリー中","color":"green"},{"text":" | ","color":"white"},{"text":"未観戦エントリー","color":"gray"}]
title @a[tag=spectator] actionbar [{"text":"未エントリー","color":"gray"},{"text":" | ","color":"white"},{"text":"観戦エントリー中","color":"green"}]
title @a[tag=!entry,tag=!spectator] actionbar [{"text":"未エントリー","color":"gray"},{"text":" | ","color":"white"},{"text":"未観戦エントリー","color":"gray"}]