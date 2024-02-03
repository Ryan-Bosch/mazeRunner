# Add initial map
fill ~49 ~51 ~49 ~-50 ~51 ~-50 white_wool
fill ~4 ~51 ~4 ~-5 ~51 ~-5 red_wool replace white_wool
fill ~4 ~51 ~ ~4 ~51 ~-1 orange_wool replace red_wool
fill ~ ~51 ~4 ~-1 ~51 ~4 orange_wool replace red_wool
fill ~ ~51 ~-5 ~-1 ~51 ~-5 orange_wool replace red_wool
fill ~-5 ~51 ~ ~-5 ~51 ~-1 orange_wool replace red_wool


# Add random exit
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 run fill ~49 ~51 ~ ~49 ~51 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 1 run fill ~ ~51 ~49 ~-1 ~51 ~49 yellow_wool replace white_wool
execute if score mr_random mr_var matches 2 run fill ~-50 ~51 ~ ~-50 ~51 ~-1 yellow_wool replace white_wool
execute if score mr_random mr_var matches 3 run fill ~ ~51 ~-50 ~-1 ~51 ~-50 yellow_wool replace white_wool


# Generate from random start
execute store result score mr_random mr_var run random value 0..3
execute if score mr_random mr_var matches 0 positioned ~-6 ~52 ~ facing ~-1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 1 positioned ~ ~52 ~-6 facing ~ ~ ~-1 run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 2 positioned ~5 ~52 ~ facing ~1 ~ ~ run function z_internal_maze_generator:start_from_code_w_direction
execute if score mr_random mr_var matches 3 positioned ~ ~52 ~5 facing ~ ~ ~1 run function z_internal_maze_generator:start_from_code_w_direction


# Setup building stage
forceload add ~505 ~505 ~485 ~485
forceload add ~49 ~49 ~-50 ~-50
summon marker ~49.5 ~51 ~49.5 {Tags:["mr_reader", "mr_temp"]}
summon marker ~495.5 ~ ~495.5 {Tags:["mr_builder", "mr_temp"]}


# Build city grid
scoreboard players set mr_grid_x mr_var 0
scoreboard players set mr_grid_y mr_var 0
return run schedule function maze_runner:z_internal/maze/loop 1t