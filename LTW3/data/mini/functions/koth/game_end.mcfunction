# 当前游戏结束时触发
forceload remove 985 8985 1016 9016

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score += @s power_count

# 解除限制免疫击退
execute as @a run attribute @s generic.knockback_resistance modifier remove e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5