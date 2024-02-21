#ロール振り分け
scoreboard players set @a role 0
execute store result score #role_count temporary run data get storage wherewolf: roles
scoreboard players remove #role_count temporary 1
execute store result storage wherewolf: roles[0].value int 1 if entity @a[tag=entry]
function ww:sub/role/data/