# Get random house or job 1:3
execute store result score mr_random mr_var run random value 0..3

# Do not include center
execute if score mr_grid_x mr_var matches 4..5 if score mr_grid_y mr_var matches 4..5 run scoreboard players reset mr_random mr_var

# Fill either result
execute if score mr_random mr_var matches ..2 run function maze_runner:z_internal/city/job
execute if score mr_random mr_var matches 3 run function maze_runner:z_internal/city/house

scoreboard players add mr_grid_x mr_var 1
execute if score mr_grid_x mr_var matches 10.. run return run function maze_runner:z_internal/city/tenth_row

execute positioned ~ ~ ~-10 run function maze_runner:z_internal/city/grid