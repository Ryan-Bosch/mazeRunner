execute store result score mr_random mr_var run random value 0..7

execute if score mr_random mr_var matches 0 run place template minecraft:mr_city_bamboo_house
execute if score mr_random mr_var matches 1 run place template minecraft:mr_city_birch_house
execute if score mr_random mr_var matches 2 run place template minecraft:mr_city_brick_house
execute if score mr_random mr_var matches 3 run place template minecraft:mr_city_dark_house
execute if score mr_random mr_var matches 4 run place template minecraft:mr_city_mangrove_house
execute if score mr_random mr_var matches 5 run place template minecraft:mr_city_sand_house
execute if score mr_random mr_var matches 6 run place template minecraft:mr_city_snow_house
execute if score mr_random mr_var matches 7 run place template minecraft:mr_city_wood_house

summon minecraft:villager ~4 ~2 ~4