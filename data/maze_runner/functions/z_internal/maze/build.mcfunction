# Add initial map
fill ~24 ~51 ~24 ~-25 ~52 ~-25 white_wool
fill ~4 ~52 ~4 ~-5 ~52 ~-5 red_wool replace white_wool

fill ~5 ~52 ~5 ~-6 ~52 ~-6 gray_wool replace white_wool

fill ~5 ~52 ~ ~5 ~52 ~-1 orange_wool replace gray_wool
fill ~ ~52 ~5 ~-1 ~52 ~5 orange_wool replace gray_wool
fill ~ ~52 ~-6 ~-1 ~52 ~-6 orange_wool replace gray_wool
fill ~-6 ~52 ~ ~-6 ~52 ~-1 orange_wool replace gray_wool


# Add random exit
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 run fill ~24 ~52 ~ ~24 ~52 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 1 run fill ~ ~51 ~24 ~-1 ~52 ~24 yellow_wool replace white_wool
execute if score mr_random mr_var matches 2 run fill ~-25 ~52 ~ ~-25 ~52 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 3 run fill ~ ~52 ~-25 ~-1 ~52 ~-25 yellow_wool replace white_wool


# Generate from random start
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 positioned ~-7 ~53 ~ facing ~-1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 1 positioned ~ ~53 ~-7 facing ~ ~ ~-1 run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 2 positioned ~6 ~53 ~ facing ~1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 3 positioned ~ ~53 ~6 facing ~ ~ ~1 run function z_internal_maze_generator:start_from_code_w_direction


# Erase maze around city
fill ~52 ~ ~52 ~-62 ~50 ~59 air
fill ~-53 ~ ~52 ~-62 ~50 ~-62 air
fill ~-53 ~ ~-53 ~59 ~50 ~-62 air
fill ~52 ~ ~-53 ~59 ~50 ~59 air


# Setup markers
summon marker ~ ~ ~ {Tags:["mr_reader", "mr_temp", "mr_new"]}
summon marker ~ ~ ~ {Tags:["mr_builder", "mr_temp", "mr_new"]}
scoreboard players operation @e[tag=mr_new] mr_sync = @s mr_sync

# Ready primary player in case of loading issues
scoreboard players reset mr_success mr_var
execute as @a if score @s mr_sync = @e[tag=mr_new, limit=1] mr_sync store result score mr_success mr_var run tag @s add mr_new
execute unless score mr_success mr_var matches 1.. store result score mr_success mr_var run tag @r[tag=!mr_primary, tag=!mr_active] add mr_new
execute unless score mr_success mr_var matches 1.. run tag @r[tag=!mr_active] add mr_new
tellraw @a[tag=mr_new,tag=!mr_mute] [{"text":"You are running maze "},{"score":{"name":"@s","objective":"mr_sync"}},{"text":". You may be teleported in order to assist execution."}]
tag @a[tag=mr_new] add mr_active

tag @e remove mr_new
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tp ~240.5 ~ ~240.5
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tp ~24.5 ~52 ~24.5


# Build city grid
scoreboard players set @s mr_x 0
scoreboard players set @s mr_y 0
scoreboard players set @s mr_half 0
tellraw @a[tag=!mr_mute] [{"text":"STOP! "},{"score":{"name":"@s","objective":"mr_sync"}},{"text":" is building a maze"}]
return run schedule function maze_runner:z_internal/maze/next_chunk 1t