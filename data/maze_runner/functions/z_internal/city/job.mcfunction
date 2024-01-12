execute store result score mr_random mr_var run random value 0..25

execute if score mr_random mr_var matches 0 run place template minecraft:mr_bamboo_farm
execute if score mr_random mr_var matches 1 run place template minecraft:mr_beetroot_farm
execute if score mr_random mr_var matches 2 run place template minecraft:mr_birch_farm
execute if score mr_random mr_var matches 3 run place template minecraft:mr_carrot_farm
execute if score mr_random mr_var matches 4 run place template minecraft:mr_chest_room
execute if score mr_random mr_var matches 5 run place template minecraft:mr_chicken_farm
execute if score mr_random mr_var matches 6 run place template minecraft:mr_church
execute if score mr_random mr_var matches 7 run place template minecraft:mr_cocoa_bean_farm
execute if score mr_random mr_var matches 8 run place template minecraft:mr_cow_farm
execute if score mr_random mr_var matches 9 run place template minecraft:mr_dining_hall
execute if score mr_random mr_var matches 10 run place template minecraft:mr_empty
execute if score mr_random mr_var matches 11 run place template minecraft:mr_fish_hole ~ ~-4 ~
execute if score mr_random mr_var matches 12 run place template minecraft:mr_furnace_room
execute if score mr_random mr_var matches 13 run place template minecraft:mr_library_room
execute if score mr_random mr_var matches 14 run fill ~ ~1 ~ ~9 -64 ~9 minecraft:bedrock outline
execute if score mr_random mr_var matches 14 run place template minecraft:mr_mason_room ~ ~ ~
execute if score mr_random mr_var matches 15 run place template minecraft:mr_melon_farm
execute if score mr_random mr_var matches 16 run place template minecraft:mr_oak_farm
execute if score mr_random mr_var matches 17 run place template minecraft:mr_potato_farm
execute if score mr_random mr_var matches 18 run place template minecraft:mr_pumpkin_farm
execute if score mr_random mr_var matches 19 run place template minecraft:mr_sheep_farm
execute if score mr_random mr_var matches 20 run place template minecraft:mr_spruce_farm
execute if score mr_random mr_var matches 21 run place template minecraft:mr_sugar_cane_farm
execute if score mr_random mr_var matches 22 run place template minecraft:mr_sweet_berry_farm
execute if score mr_random mr_var matches 23 run place template minecraft:mr_swordsmith_room
execute if score mr_random mr_var matches 24 run place template minecraft:mr_toolsmith_room
execute if score mr_random mr_var matches 25 run place template minecraft:mr_wheat_farm