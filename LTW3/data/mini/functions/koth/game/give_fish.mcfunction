# 清除玩家已有的击退鱼
clear @s cod{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

# 依据玩家位置给予击退鱼
execute if block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 0b, display: {Name: '{"text":"击退鱼","color":"aqua","italic":false}'}, Enchantments: [{id: "knockback", lvl: 2}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}
execute unless block ~ 9 ~ red_mushroom_block run item replace entity @s hotbar.8 with cod{game_item: 1b, powerful: 1b, display: {Name: '{"text":"强力击退鱼","color":"light_purple","italic":false}'}, Enchantments: [{id: "knockback", lvl: 4}], AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 15, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}], HideFlags: 63}