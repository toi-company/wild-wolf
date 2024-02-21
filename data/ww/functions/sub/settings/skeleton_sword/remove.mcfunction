scoreboard players remove #shop_skeleton_sword_price temporary 1
execute if score #shop_skeleton_sword_price temporary matches ..-1 run function ww:sub/settings/skeleton_sword/add
function ww:settings/shop/combat/skeleton_sword/