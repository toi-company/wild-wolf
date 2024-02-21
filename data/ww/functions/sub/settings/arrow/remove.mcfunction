scoreboard players remove #shop_arrow_price temporary 1
execute if score #shop_arrow_price temporary matches ..-1 run function ww:sub/settings/arrow/add
function ww:settings/shop/combat/arrow/