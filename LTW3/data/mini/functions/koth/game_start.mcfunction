# 游戏结束倒计时
scoreboard players set $countdown mem 120

# HUD
scoreboard objectives setdisplay list power_count
scoreboard objectives setdisplay belowName power_count
scoreboard objectives setdisplay sidebar power_count
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 120
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:red name "剩余时间"
bossbar set mini:yellow name "剩余时间"
bossbar set mini:blue name "剩余时间"