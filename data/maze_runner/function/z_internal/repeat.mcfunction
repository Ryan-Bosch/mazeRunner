execute store result score mr_time mr_var run time query daytime

execute unless score mr_time mr_var matches 14000..22000 unless score mr_day mr_var matches 1.. as @e[tag=mr_center] at @s run function maze_runner:z_internal/morning
execute if entity @e[tag=mr_center] if score mr_time mr_var matches 14000..22000 if score mr_day mr_var matches 1.. as @e[tag=mr_center, tag=!pause] at @s run function maze_runner:z_internal/night

schedule function maze_runner:z_internal/repeat 1s