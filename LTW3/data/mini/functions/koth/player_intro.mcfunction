# 向单个玩家展示小游戏介绍
effect give @s night_vision 1000000 0 true
tp @s[team=!debugging] 1001.0 14 9001.0 -45 90
tellraw @s ["",{"text":"\n >> 山丘之王 >>\n\n","color":"gold","bold":true}," 保持在红色区域即可 ",{"text":"获得能量值","color":"gold"},"。\n 能量值最多的玩家即可获胜！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},{"text": " <免疫击退效果在本轮无效>","color":"light_purple"},"\n"]