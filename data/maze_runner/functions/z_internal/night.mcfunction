scoreboard players set mr_day mr_var 0

fill ~51 ~2 ~ ~51 ~50 ~-1 bedrock replace air
fill ~ ~2 ~51 ~-1 ~50 ~51 bedrock replace air
fill ~-52 ~2 ~ ~-52 ~50 ~-1 bedrock replace air
fill ~ ~2 ~-52 ~-1 ~50 ~-52 bedrock replace air


tag @r add mg_center
execute as @a[tag=mg_center, limit=1] run function maze_runner:z_internal/maze/build
tag @a remove mg_center