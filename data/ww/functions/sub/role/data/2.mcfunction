$data modify storage temp: roles.id set value $(id)
$data modify storage temp: roles.name set value "$(name)"
$data modify storage temp: roles.color set value "$(color)"
$data modify storage temp: roles.vcondition set value "$(vcondition)"
$data modify storage temp: roles.view_name set value "$(view_name)"
$data modify storage temp: roles.lore set value "$(lore)"
$scoreboard players set #role_value temporary $(value)
function ww:sub/role/role/ with storage temp: roles