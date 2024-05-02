# Do not allow this to run if no generated maze is present
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ air at @s run return run function function maze_runner:z_internal/maze/end_build
execute if score @s mr_x matches ..1 if score @s mr_y matches ..1 if score mr_half matches 0 at @e[tag=mr_reader, tag=mr_active] if blocks ~-1 ~ ~-1 ~1 ~ ~1 ~-1 ~-1 ~-1 at @s run return run function maze_runner:z_internal/maze/end_build


# Remove existing walls
execute at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ orange_wool unless block ~ ~ ~ red_wool unless block ~ ~ ~ gray_wool at @e[tag=mr_builder, tag=mr_active] run fill ~7 ~ ~-2 ~-2 ~50 ~7 air


# Clear border wall
execute if score @s mr_x matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~9 ~10 ~50 ~10 air
execute if score @s mr_y matches 0 at @e[tag=mr_builder, tag=mr_active] run fill ~9 ~ ~-2 ~10 ~50 ~10 air
execute if score @s mr_x matches 98.. at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~10 ~50 ~-1 air
execute if score @s mr_y matches 98.. at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~-1 ~50 ~10 air


# Add outer border wall
execute if score @s mr_x matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~9 ~10 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_x matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~10 ~10 ~50 ~10 bedrock

execute if score @s mr_y matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~9 ~ ~-1 ~9 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_y matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~-2 ~10 ~50 ~10 bedrock

execute if score @s mr_x matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~-1 ~9 ~50 ~-1 cracked_deepslate_tiles replace air
execute if score @s mr_x matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~10 ~50 ~-2 bedrock

execute if score @s mr_y matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~-1 ~-1 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_y matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~-2 ~50 ~10 bedrock


# Add Ceiling
execute at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~50 ~-2 ~10 ~50 ~10 barrier


# Add Floor
execute at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ orange_wool unless block ~ ~ ~ red_wool unless block ~ ~ ~ gray_wool at @e[tag=mr_builder, tag=mr_active] run place template minecraft:mr_maze_floor ~-1 ~-1 ~-1
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ orange_wool at @e[tag=mr_builder, tag=mr_active] run place template minecraft:mr_maze_floor_small ~ ~-1 ~
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ gray_wool at @e[tag=mr_builder, tag=mr_active] run place template minecraft:mr_maze_floor_small ~ ~-1 ~


# Fill in the maze walls and rooms
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ blue_wool run function maze_runner:z_internal/maze/path
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ orange_wool run function maze_runner:z_internal/maze/path
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ white_wool run function maze_runner:z_internal/maze/hole

# Add blue traps
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ blue_wool at @e[tag=mr_builder, tag=mr_active] run function maze_runner:z_internal/maze/traps/blue_traps


tag @e[type=!player] remove mr_active
tellraw @a[tag=mr_debug] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" built a new room"}]


#Remove forceloads
execute unless score @s mr_y matches 42..58 at @e[tag=mr_builder, tag=mr_active] run forceload remove ~-2 ~17 ~12 ~32
execute if score @s mr_y matches 42..58 unless score @s mr_x matches 44..60 at @e[tag=mr_builder, tag=mr_active] run forceload remove ~-2 ~17 ~12 ~32


# Setup for next chunk
scoreboard players add @s mr_x 2
execute if score @s mr_x matches 50.. run return run function maze_runner:z_internal/maze/hundredth_row
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~ ~ ~-1
#execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run forceload add ~12 ~2 ~-2 ~-12
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~ ~ ~-10
execute if score mr_fast_mode mr_var matches 1 run return run function maze_runner:z_internal/maze/next_chunk
return run schedule function maze_runner:z_internal/maze/next_chunk 1t