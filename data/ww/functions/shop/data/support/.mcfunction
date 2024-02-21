execute store result storage ww:settings shop.speed_potion_price int 1 run scoreboard players get #shop_speed_potion_price temporary
execute store result storage ww:settings shop.invisible_potion_price int 1 run scoreboard players get #shop_invisible_potion_price temporary
execute store result storage ww:settings shop.divination_price int 1 run scoreboard players get #shop_divination_price temporary
execute store result storage ww:settings shop.knight_price int 1 run scoreboard players get #shop_knight_price temporary
execute store result storage ww:settings shop.accomplice_eye_price int 1 run scoreboard players get #shop_accomplice_eye_price temporary
execute store result storage ww:settings shop.holy_cross_price int 1 run scoreboard players get #shop_holy_cross_price temporary
execute store result storage ww:settings shop.eye_of_providence_price int 1 run scoreboard players get #shop_eye_of_providence_price temporary
execute store result storage ww:settings shop.spellbook_tenkei_price int 1 run scoreboard players get #shop_spellbook_tenkei_price temporary

function ww:shop/data/support/append with storage ww:settings shop

#[俊敏ポーション-1個/1～2エメラルド]
#永続的に移動速度上昇レベル1を得る。
#設定で無効化可能。
#[透明化ポーション-1個/2～4エメラルド]
#30秒間透明化する。
#[占い師の心-1個/4～6エメラルド]
#誰か一人を占える。占いは夜の間にしか出来ない。
#[霊媒師の遺灰-1個/4～5エメラルド]
#死亡したプレイヤー全員の名前を知ることができる。
#１個につき１回しか使えない。
#[騎士の祈り-1個/4～5エメラルド]
#使った夜の間、即死ダメージ(弓/斧)を防ぐことができる。
#設定によって防ぐことができる回数や1日の間に使用できる回数が決まっている。
#朝になると効果が消失する。
#村人と共犯者のみ使用可能。
#[騎士の加護-1個/2～3エメラルド]
#使用した相手は、その夜の間だけ即死ダメージ(弓/斧)を防ぐことが出来る。
#効果の発動はその夜に1回だけ。
#村人と共犯者のみ効果が発動する。
#使用相手が人狼か吸血鬼でもアイテムは使用可能。
#[共犯者の目-1個/3～5エメラルド]
#人狼をランダムに一人把握できる。
#複数回使うと重複する可能性がある。
#共犯者のみ購入可能。
#[聖なる十字架-1個/2～3エメラルド]
#吸血鬼を殴ったら、昼夜にかかわらず一撃で倒せる。
#吸血鬼以外の人を殴った場合、何も起こらず壊れる。
#スケルトンを殴っても何も起こらない。壊れすらしない。
#吸血鬼が非出現の場合、出現しません。
#[プロビデンスの眼光-1個/2～3エメラルド]
#自分以外の全員を60秒間発光させる。
#[天啓の呪符-1個/1～3エメラルド]
#使った夜の間、占われると通知が来る。
#朝になると効果が消失する。