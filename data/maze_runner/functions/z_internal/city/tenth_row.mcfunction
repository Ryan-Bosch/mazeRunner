scoreboard players reset mr_grid_x mr_var
scoreboard players add mr_grid_y mr_var 1

execute unless score mr_grid_y mr_var matches 10.. positioned ~-10 ~ ~90 run function maze_runner:z_internal/city/grid