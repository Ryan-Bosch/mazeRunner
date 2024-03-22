# Add initial map
fill ~24 ~51 ~24 ~-25 ~51 ~-25 white_wool
fill ~4 ~51 ~4 ~-5 ~51 ~-5 red_wool replace white_wool
fill ~4 ~51 ~ ~4 ~51 ~-1 orange_wool replace red_wool
fill ~ ~51 ~4 ~-1 ~51 ~4 orange_wool replace red_wool
fill ~ ~51 ~-5 ~-1 ~51 ~-5 orange_wool replace red_wool
fill ~-5 ~51 ~ ~-5 ~51 ~-1 orange_wool replace red_wool


# Add random exit
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 run fill ~24 ~51 ~ ~24 ~51 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 1 run fill ~ ~51 ~24 ~-1 ~51 ~24 yellow_wool replace white_wool
execute if score mr_random mr_var matches 2 run fill ~-25 ~51 ~ ~-25 ~51 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 3 run fill ~ ~51 ~-25 ~-1 ~51 ~-25 yellow_wool replace white_wool


# Generate from random start
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 positioned ~-6 ~52 ~ facing ~-1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 1 positioned ~ ~52 ~-6 facing ~ ~ ~-1 run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 2 positioned ~5 ~52 ~ facing ~1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 3 positioned ~ ~52 ~5 facing ~ ~ ~1 run function z_internal_maze_generator:start_from_code_w_direction


summon marker ~ ~ ~ {Tags:["mr_reader", "mr_temp", "mr_new"]}
summon marker ~ ~ ~ {Tags:["mr_builder", "mr_temp", "mr_new"]}
scoreboard players operation @e[tag=mr_new] mr_sync = @s mr_sync
tag @e remove mr_new
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tp ~240.5 ~ ~240.5
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tp ~24.5 ~51 ~24.5


# Build city grid
scoreboard players set @s mr_x 0
scoreboard players set @s mr_y 0
tellraw @a[tag=!mr_mute] [{"text":"STOP! "},{"score":{"name":"@s","objective":"mr_sync"}},{"text":" is building a maze"}]
return run schedule function maze_runner:z_internal/maze/next_chunk 1t