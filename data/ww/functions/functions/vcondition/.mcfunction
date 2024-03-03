# 人狼
execute if entity @a[tag=wolf_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf
# 市民
execute if entity @a[tag=ctz_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=wolf_alive] run function ww:win/ctz
# 狂人
execute if entity @a[tag=mad_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/wolf
# 吸血鬼
execute if entity @a[tag=vampire_alive] if entity @a[tag=ctz_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] if entity @a[tag=wolf_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=ctz_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] if entity @a[tag=mad_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/vampire
execute if entity @a[tag=vampire_alive] unless entity @a[tag=scientist_alive] unless entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/vampire
# 科学者
#execute if entity @a[tag=scientist_alive] unless entity @a[tag=vampire_alive] if entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] run function ww:win/scientist
#execute if entity @a[tag=scientist_alive] unless entity @a[tag=vampire_alive] if entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/scientist
#execute if entity @a[tag=scientist_alive] unless entity @a[tag=vampire_alive] if entity @a[tag=mad_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/scientist
execute if entity @a[tag=scientist_alive] unless entity @a[tag=vampire_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=ctz_alive] run function ww:win/scientist
# 引き分け
execute if data storage ww: in_game unless entity @a[tag=vampire] unless entity @a[tag=scientist_alive] unless entity @a[tag=ctz_alive] unless entity @a[tag=wolf_alive] unless entity @a[tag=mad_alive] run function ww:win/draw