# Check if area is loaded
execute unless entity @e[tag=mr_builder, distance=..1000] run return run schedule function maze_runner:z_internal/maze/loop 1t

# Remove existing walls
execute unless score mr_grid_x mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~3 ~ ~-6 ~-6 ~50 ~-6 air replace minecraft:cracked_deepslate_tiles
execute unless score mr_grid_x mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~2 ~ ~-7 ~-7 ~50 ~-7 air replace minecraft:bedrock
execute unless score mr_grid_x mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~-6 ~ ~3 ~-6 ~50 ~-6 air replace minecraft:cracked_deepslate_tiles
execute unless score mr_grid_x mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~-7 ~ ~3 ~-7 ~50 ~-7 air replace minecraft:bedrock
execute unless score mr_grid_y mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~3 ~ ~-6 ~-6 ~50 ~-6 air replace minecraft:cracked_deepslate_tiles
execute unless score mr_grid_y mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~2 ~ ~-7 ~-7 ~50 ~-7 air replace minecraft:bedrock
execute unless score mr_grid_y mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~-6 ~ ~3 ~-6 ~50 ~-6 air replace minecraft:cracked_deepslate_tiles
execute unless score mr_grid_y mr_var matches 44..54 at @e[tag=mr_builder, limit=1] run fill ~-7 ~ ~3 ~-7 ~50 ~-7 air replace minecraft:bedrock

# Add (TEMP) ground and Ceiling
execute at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~1 ~6 ~-7 ~2 ~-7 dirt_path
execute at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~0 ~6 ~-7 ~1 ~-7 bedrock
execute at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~50 ~6 ~-7 ~50 ~-7 barrier


# Add outer border wall
execute if score mr_grid_x mr_var matches 0 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~5 ~-6 ~50 ~5 cracked_deepslate_tiles
execute if score mr_grid_x mr_var matches 0 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~6 ~-7 ~50 ~6 bedrock
execute if score mr_grid_y mr_var matches 0 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~5 ~ ~5 ~5 ~50 ~-6 cracked_deepslate_tiles
execute if score mr_grid_y mr_var matches 0 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~6 ~ ~6 ~6 ~50 ~-7 bedrock
execute if score mr_grid_x mr_var matches 99 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-6 ~ ~-6 ~5 ~50 ~-6 cracked_deepslate_tiles
execute if score mr_grid_x mr_var matches 99 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-7 ~ ~-7 ~6 ~50 ~-7 bedrock
execute if score mr_grid_y mr_var matches 99 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-6 ~ ~-6 ~-6 ~50 ~5 cracked_deepslate_tiles
execute if score mr_grid_y mr_var matches 99 unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, limit=1, sort=nearest] run fill ~-7 ~ ~-7 ~-7 ~50 ~6 bedrock

# Fill in the maze walls and rooms
execute if block ~ ~ ~ blue_wool run function maze_runner:z_internal/maze/path
execute if block ~ ~ ~ white_wool run function maze_runner:z_internal/maze/hole