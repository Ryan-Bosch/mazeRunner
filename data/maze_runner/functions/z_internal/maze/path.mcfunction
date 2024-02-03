# Walls
scoreboard players reset mr_wall mr_var
execute if block ~ ~ ~1 black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~2 ~4 ~-5 ~49 ~4 air
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~ ~5 ~-5 ~49 ~5 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~ ~6 ~-5 ~49 ~6 bedrock

scoreboard players reset mr_wall mr_var
execute if block ~ ~ ~-1 black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~2 ~-5 ~-5 ~49 ~-5 air
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~ ~-6 ~-5 ~49 ~-6 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~ ~-7 ~-6 ~49 ~-7 bedrock

scoreboard players reset mr_wall mr_var
execute if block ~1 ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~4 ~2 ~4 ~4 ~49 ~-5 air
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~4 ~5 ~49 ~-5 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~4 ~6 ~49 ~-5 bedrock

scoreboard players reset mr_wall mr_var
execute if block ~-1 ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-5 ~2 ~4 ~-5 ~49 ~-5 air
execute if score mr_wall mr_var matches 1.. at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-6 ~ ~4 ~-6 ~49 ~-5 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-7 ~ ~4 ~-7 ~49 ~-6 bedrock