execute as @e[tag=mr_reader] at @s run function maze_runner:z_internal/maze/grid

# Reset unless it has moved too far
scoreboard players add mr_grid_x mr_var 1
execute if score mr_grid_x mr_var matches 100.. run return run function maze_runner:z_internal/maze/hundredth_row
execute as @e[tag=mr_reader] at @s run tp ~ ~ ~-1
execute at @e[tag=mr_builder] run forceload add ~10 ~10 ~-20 ~-20
execute as @e[tag=mr_builder] at @s run tp ~ ~ ~-10
return run schedule function maze_runner:z_internal/maze/loop 1t