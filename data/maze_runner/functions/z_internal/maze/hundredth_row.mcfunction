scoreboard players set mr_grid_x mr_var 0
scoreboard players add mr_grid_y mr_var 1

execute unless score mr_grid_y mr_var matches 100.. as @e[tag=mr_builder] at @s run forceload add ~ ~1000 ~20 ~980
execute unless score mr_grid_y mr_var matches 100.. as @e[tag=mr_reader] at @s run tp ~-1 ~ ~99
execute unless score mr_grid_y mr_var matches 100.. as @e[tag=mr_builder] at @s run tp ~-10 ~ ~990
execute unless score mr_grid_y mr_var matches 100.. run return run schedule function maze_runner:z_internal/maze/loop 1t

kill @e[tag=mr_temp]
execute as @e[tag=mr_center] at @s run fill ~49 ~51 ~49 ~-50 ~51 ~-50 air
execute as @e[tag=mr_center] at @s run forceload remove all