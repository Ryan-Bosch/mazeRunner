# Walls
execute positioned ~ ~ ~1 if block ~ ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~5 ~-6 ~50 ~5 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~6 ~-7 ~50 ~6 bedrock

execute positioned ~ ~ ~-1 if block ~ ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~-6 ~-6 ~50 ~-6 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~-7 ~-7 ~50 -7 bedrock

execute positioned ~1 ~ ~ if block ~ ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~5 ~5 ~50 ~-6 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~6 ~6 ~50 ~-7 bedrock

execute positioned ~-1 ~ ~ if block ~ ~ ~ black_wool store result score mr_wall mr_var run function maze_runner:z_internal/maze/wall
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-6 ~ ~5 ~-6 ~50 ~-6 cracked_deepslate_tiles
execute if score mr_wall mr_var matches 1 at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-7 ~ ~6 ~-7 ~50 ~-7 bedrock