# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=986.0,y=4.0,z=8986.0,dx=30,dy=31,dz=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=986.0,y=4.0,z=8986.0,dx=30,dy=31,dz=30] run tp @s[team=!debugging] 1001.0 14 9001.0 -45 90