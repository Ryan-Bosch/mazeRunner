# Walls

# <
scoreboard players reset mr_wall mr_var
execute if block ~ ~ ~1 black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~1 gray_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 1 at @e[tag=mr_builder, tag=mr_active] run fill ~2 ~ ~10 ~9 ~49 ~10 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 1 at @e[tag=mr_builder, tag=mr_active] run fill ~2 ~ ~11 ~9 ~49 ~11 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 2 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~10 ~7 ~49 ~10 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 2 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~11 ~7 ~49 ~11 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~10 ~9 ~49 ~10 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~11 ~9 ~49 ~11 bedrock
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~10 ~9 ~49 ~10 cracked_deepslate_tiles
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~11 ~9 ~49 ~11 bedrock

# >
scoreboard players reset mr_wall mr_var
execute if block ~ ~ ~-1 black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~-1 gray_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 1 at @e[tag=mr_builder, tag=mr_active] run fill ~2 ~ ~-1 ~9 ~49 ~-1 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 1 at @e[tag=mr_builder, tag=mr_active] run fill ~2 ~ ~-2 ~9 ~49 ~-2 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 2 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-1 ~7 ~49 ~-1 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 2 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-2 ~7 ~49 ~-2 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-1 ~9 ~49 ~-1 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-2 ~9 ~49 ~-2 bedrock
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-1 ~9 ~49 ~-1 cracked_deepslate_tiles
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~ ~ ~-2 ~9 ~49 ~-2 bedrock

# ↓
scoreboard players reset mr_wall mr_var
execute if block ~1 ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~1 ~ ~ gray_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 3 at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~ ~10 ~49 ~7 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 3 at @e[tag=mr_builder, tag=mr_active] run fill ~11 ~ ~ ~11 ~49 ~7 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 4 at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~2 ~10 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 4 at @e[tag=mr_builder, tag=mr_active] run fill ~11 ~ ~2 ~11 ~49 ~9 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~ ~10 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~11 ~ ~ ~11 ~49 ~9 bedrock
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~ ~10 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~11 ~ ~ ~11 ~49 ~9 bedrock

# ^
scoreboard players reset mr_wall mr_var
execute if block ~-1 ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~-1 ~ ~ gray_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 3 at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~ ~1 ~49 ~7 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 3 at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~ ~-2 ~49 ~7 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 4 at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~2 ~-1 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 4 at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~2 ~-2 ~49 ~9 bedrock
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~ ~-1 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ orange_wool if score mr_wall mr_var matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~ ~-2 ~49 ~9 bedrock
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~ ~-1 ~49 ~9 cracked_deepslate_tiles
execute if block ~ ~ ~ blue_wool if score mr_wall mr_var matches ..4 at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~ ~-2 ~49 ~9 bedrock