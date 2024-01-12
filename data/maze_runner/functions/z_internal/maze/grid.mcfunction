execute if block ~ ~ ~ blue_wool run function maze_runner:z_internal/maze/path
execute if block ~ ~ ~ white_wool run function maze_runner:z_internal/maze/hole

# Reset unless it has moved too far
scoreboard players add mr_grid_x mr_var 1
execute if score mr_grid_x mr_var matches 100.. run function maze_runner:z_internal/maze/hundredth_row
execute unless score mr_grid_y mr_var matches 100.. as @e[tag=mr_builder, limit=1, sort=nearest] at @s run tp ~ ~ ~-10
execute unless score mr_grid_y mr_var matches 100.. positioned ~ ~ ~-1 run function maze_runner:z_internal/maze/grid