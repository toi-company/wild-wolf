scoreboard players remove #shop_bow_price temporary 1
execute if score #shop_bow_price temporary matches ..-1 run function ww:sub/settings/bow/add
function ww:settings/shop/combat/bow/