$data modify storage wherewolf: roles[$(count)].count set value $(count)
$function ww:role_list/3 with storage wherewolf: roles[$(count)]