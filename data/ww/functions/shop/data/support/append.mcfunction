$execute if score #shop_speed_potion_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(speed_potion_price)b},sell:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:58879,display:{Name:'{"text":"俊敏のポーション","color":"aqua","bold":true,"italic":false}'},CustomModelData:2,custom_potion_effects:[{id:"minecraft:speed",amplifier:0b,duration:3600,show_icon:0b}]}}}
$execute if score #shop_invisible_potion_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(invisible_potion_price)b},sell:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:14803939,display:{Name:'{"text":"透明化のポーション","color":"aqua","bold":true,"italic":false}'},CustomModelData:2,custom_potion_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:600,show_particles:0b,show_icon:0b}]}}}
$execute if score #shop_divination_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(divination_price)b},sell:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"占い師の心","color":"blue","bold":true,"italic":false}',Lore:['{"text":"自分以外のプレイヤーを占うことができる。","color":"gray","italic":false}','{"text":"購入した後に、占い可能な回数が１回増える。","color":"gray","italic":false}','{"text":"指定場所でしゃがむことで占うことができる。","color":"gray","italic":false}','{"text":"夜のみ使用することができる。","color":"red","italic":false}','{"text":"購入後自動で使用される。","color":"red","italic":false}']},CustomModelData:2}}}
$execute if score #shop_medium_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(medium_price)b},sell:{id:"minecraft:gunpowder",Count:1b,tag:{display:{Name:'{"text":"霊媒師の遺灰","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"死んだプレイヤー全員の名前が分かる。","color":"gray","italic":false}','{"text":"購入後自動で使用される。","color":"red","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}
$execute if score #shop_knight_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(knight_price)b},sell:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"騎士の祈り","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"自分以外のプレイヤーをその夜の間守ることができる。","color":"gray","italic":false}','{"text":"購入した後に、祈願可能な回数が１回増える。","color":"gray","italic":false}','{"text":"指定場所でしゃがむことで祈ることができる。","color":"gray","italic":false}','{"text":"夜のみ使用することができる。","color":"red","italic":false}','{"text":"購入した後自動で消費される。","color":"red","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}
$execute if score #shop_accomplice_eye_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(accomplice_eye_price)b},sell:{id:"minecraft:end_crystal",Count:1b,tag:{display:{Name:'{"text":"共犯者の目","color":"red","bold":true,"italic":false}',Lore:['{"text":"ランダムな人狼を知ることができる。","color":"gray","italic":false}','{"text":"複数回使用すると結果が重複することがある。","color":"gray","italic":false}','{"text":"購入後自動で使用される。","color":"red","italic":false}','{"text":"共犯者のみ購入可能","color":"red","italic":false}']},CustomModelData:2}}}
$execute if score #shop_holy_cross_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(holy_cross_price)b},sell:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'{"text":"聖なる十字架","color":"gold","bold":true,"italic":false}',Lore:['{"text":"吸血鬼を殴ったら、昼夜にかかわらず一撃で倒せる。","color":"gray","italic":false}','{"text":"吸血鬼以外の人を殴った場合、何も起こらず壊れる。","color":"gray","italic":false}','{"text":"プレイヤーを殴って使用する。","color":"red","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}
$execute if score #shop_eye_of_providence_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(eye_of_providence_price)b},sell:{id:"minecraft:sunflower",Count:1b,tag:{display:{Name:'{"text":"プロビデンスの眼光","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"自分以外の全員を60秒間発光させる。","color":"gray","italic":false}','{"text":"しゃがんで使用。","color":"red","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}
$execute if score #shop_spellbook_tenkei_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:emerald",Count:$(spellbook_tenkei_price)b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"天啓の呪符","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"使った夜の間、占われると通知が来る。","color":"gray","italic":false}','{"text":"朝になると効果が消失する。","color":"gray","italic":false}','{"text":"夜のみ使用することができる。","color":"red","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}
$execute if score #shop_glass_bottle_damage_potion_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:glass_bottle",Count:$(glass_bottle_damage_potion_price)b},sell:{id:"minecraft:splash_potion",Count:2b,tag:{CustomPotionColor:746248,display:{Name:'[{"text":"[発明品] ","color":"yellow","bold":true,"italic":false},{"text":"アレルギー誘発剤","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"プレイヤーに２回当てるとアナフィラキシーショックを起こし即死する。","color":"gray","italic":false}','{"text":"右クリックで使用","color":"red","italic":false}','{"text":" 5 攻撃力","color":"dark_green","italic":false}']},HideFlags:255,custom_potion_effects:[{id:"minecraft:unluck",amplifier:20b,duration:50}],ww:throw_potion}}}
$execute if score #shop_glass_bottle_invisible_potion_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:glass_bottle",Count:$(glass_bottle_invisible_potion_price)b},sell:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:14931850,display:{Name:'[{"text":"[発明品] ","color":"yellow","bold":true,"italic":false},{"text":"光学迷彩瓶","color":"dark_red","bold":true,"italic":false}]'},custom_potion_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:600,show_particles:0b,show_icon:0b}]}}}
$execute if score #shop_glass_bottle_slowness_potion_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:glass_bottle",Count:$(glass_bottle_slowness_potion_price)b},sell:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:12704483,display:{Name:'[{"text":"[発明品] ","color":"yellow","bold":true,"italic":false},{"text":"麻酔瓶","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"即効性のある麻酔を含んでいる瓶","color":"gray","italic":false}','{"text":"一時的に相手の動きをかなり遅くする。","color":"gray","italic":false}','{"text":"右クリックで使用","color":"red","italic":false}','{"text":"鈍足 (0:03)","color":"blue","italic":false}']},HideFlags:255,custom_potion_effects:[{id:"minecraft:slowness",amplifier:5b,duration:160}],ww:throw_potion}}}
$execute if score #shop_glass_bottle_arsemic_price temporary matches 1.. as @e[tag=support] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:glass_bottle",Count:$(glass_bottle_arsemic_price)b},sell:{id:"minecraft:experience_bottle",Count:1b,tag:{display:{Name:'[{"text":"[発明品] ","color":"yellow","bold":true,"italic":false},{"text":"ヒ素化合物","color":"dark_red","bold":true,"italic":false}]',Lore:['{"text":"超至近距離で相手に使用することにより","color":"gray","italic":false}','{"text":"50%の確立で30~45秒後に使用した相手は蒸発する。","color":"gray","italic":false}','{"text":"右クリックで使用","color":"red","italic":false}']},CustomModelData:2}}}