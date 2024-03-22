scoreboard objectives add mr_var dummy
scoreboard objectives add mr_sync dummy
scoreboard objectives add mr_x dummy
scoreboard objectives add mr_y dummy

scoreboard players add mr_num_mazes mr_var 1

summon marker ~ ~ ~ {Tags:["mr_center"]}
execute as @e[tag=mr_center] unless score @s mr_sync matches 1.. run scoreboard players operation @s mr_sync = mr_num_mazes mr_var

# Empty Area
fill ~51 ~ ~51 ~-52 ~50 ~-52 air

# Build walls
fill ~51 ~ ~51 ~51 ~50 ~-52 bedrock
fill ~51 ~ ~51 ~-52 ~50 ~51 bedrock
fill ~-52 ~ ~-52 ~51 ~50 ~-52 bedrock
fill ~-52 ~ ~-52 ~-52 ~50 ~51 bedrock

fill ~50 ~ ~50 ~50 ~49 ~-51 cracked_deepslate_tiles
fill ~50 ~ ~50 ~-51 ~49 ~50 cracked_deepslate_tiles
fill ~-51 ~ ~-51 ~50 ~49 ~-51 cracked_deepslate_tiles
fill ~-51 ~ ~-51 ~-51 ~49 ~50 cracked_deepslate_tiles

fill ~51 ~50 ~51 ~-52 ~50 ~-52 minecraft:barrier
fill ~51 ~ ~51 ~-52 ~ ~-52 minecraft:bedrock

# Build center
place template minecraft:mr_city_town_hall ~ ~ ~
place template minecraft:mr_city_fountain ~ ~-1 ~-10
place template minecraft:mr_city_empty ~-10 ~ ~-10
place template minecraft:mr_city_map_room ~-10 ~ ~

# Build city grid
scoreboard players reset mr_grid_x mr_var
scoreboard players reset mr_grid_y mr_var
execute positioned ~40 ~ ~40 run function maze_runner:z_internal/city/grid

# Doors
place template mr_door_ns_bottom ~-7 ~2 ~50
place template mr_door_ns_bottom ~-7 ~2 ~-51
place template mr_door_we_bottom ~50 ~2 ~-7
place template mr_door_we_bottom ~-51 ~2 ~-7

scoreboard players set mr_var mr_var 23
execute positioned ~ ~4 ~ run function maze_runner:z_internal/city/gate

# Maze
scoreboard players set mr_day mr_var 1
time set 14000
function maze_runner:z_internal/repeat