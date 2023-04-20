# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:koth/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
effect give @s[team=playing] slow_falling 3
tp @s[team=playing] 1001.0 30.0 9001.0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 解除免疫击退效果
attribute @s[team=playing,tag=!rejoining] generic.knockback_resistance modifier add e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5 "" -1.0 multiply