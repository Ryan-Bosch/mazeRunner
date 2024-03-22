# Remove existing walls
execute unless score @s mr_x matches 38..60 at @e[tag=mr_builder, tag=mr_active] run fill ~7 ~ ~-2 ~-2 ~50 ~7 air
execute unless score @s mr_y matches 38..60 at @e[tag=mr_builder, tag=mr_active] run fill ~7 ~ ~-2 ~-2 ~50 ~7 air


# Add Ceiling
execute at @e[tag=mr_builder, tag=mr_active] run fill ~0 ~50 ~0 ~9 ~50 ~9 barrier


# Add outer border wall
execute if score @s mr_x matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~9 ~10 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_x matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~10 ~10 ~50 ~10 bedrock

execute if score @s mr_y matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~9 ~ ~-1 ~9 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_y matches 0 at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~10 ~ ~-2 ~10 ~50 ~10 bedrock

execute if score @s mr_x matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~-1 ~9 ~50 ~-1 cracked_deepslate_tiles replace air
execute if score @s mr_x matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~10 ~50 ~-2 bedrock

execute if score @s mr_y matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-1 ~ ~-1 ~-1 ~50 ~9 cracked_deepslate_tiles replace air
execute if score @s mr_y matches 98.. at @e[tag=mr_reader, tag=mr_active] unless block ~ ~ ~ yellow_wool at @e[tag=mr_builder, tag=mr_active] run fill ~-2 ~ ~-2 ~-2 ~50 ~10 bedrock


# Fill in the maze walls and rooms
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ blue_wool run function maze_runner:z_internal/maze/path
execute at @e[tag=mr_reader, tag=mr_active] if block ~ ~ ~ white_wool run function maze_runner:z_internal/maze/hole


tag @e remove mr_active
tellraw @a[tag=mr_debug] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" built a new room"}]


#Remove forceloads
execute unless score @s mr_y matches 42..58 at @e[tag=mr_builder, tag=mr_active] run forceload remove ~-2 ~17 ~12 ~32
execute if score @s mr_y matches 42..58 unless score @s mr_x matches 44..60 at @e[tag=mr_builder, tag=mr_active] run forceload remove ~-2 ~17 ~12 ~32


# Setup for next chunk
scoreboard players add @s mr_x 2
execute if score @s mr_x matches 100.. run return run function maze_runner:z_internal/maze/hundredth_row
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~ ~ ~-1
#execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run forceload add ~12 ~2 ~-2 ~-12
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~ ~ ~-10
return run schedule function maze_runner:z_internal/maze/next_chunk 1t