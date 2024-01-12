scoreboard players reset mr_grid_x mr_var
scoreboard players add mr_grid_y mr_var 1

execute unless score mr_grid_y mr_var matches 100.. as @e[tag=mr_builder, limit=1, sort=nearest] at @s run tp ~-10 ~ ~990
execute unless score mr_grid_y mr_var matches 100.. positioned ~-1 ~ ~99 run function maze_runner:z_internal/maze/grid