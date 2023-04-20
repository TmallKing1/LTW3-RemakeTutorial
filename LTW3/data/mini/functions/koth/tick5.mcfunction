# 给予红区玩家能量值
execute if score $countdown mem matches 61.. as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 1
execute if score $countdown mem matches ..60 as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 2

# 给予进度
advancement grant @a[team=playing,scores={power_count=100..}] only ltw:vs/koth1
advancement grant @a[team=playing,scores={power_count=180..}] only ltw:vs/koth2
advancement grant @a[team=playing,scores={power_count=250..}] only ltw:vs/koth3
advancement grant @a[team=playing,scores={power_count=320..}] only ltw:vs/koth4