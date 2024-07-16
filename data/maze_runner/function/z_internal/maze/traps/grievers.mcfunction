execute as @e[tag=mr_center, tag=!mr_pause] at @s as @a[gamemode=!creative, gamemode=!spectator, distance=71..360] at @s run summon cave_spider ~ ~10 ~-1

execute if score mr_time mr_var matches 14000..22000 run return run schedule function maze_runner:z_internal/maze/traps/grievers 30s