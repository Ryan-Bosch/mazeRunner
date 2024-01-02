place template mr_door_ns ~-5 ~ ~50
place template mr_door_ns ~-5 ~ ~-51
place template minecraft:mr_door_we ~50 ~ ~-5
place template minecraft:mr_door_we ~-51 ~ ~-5

scoreboard players remove mr_var mr_var 1
execute if score mr_var mr_var matches 1.. positioned ~ ~2 ~ run function maze_runner:z_internal/build_city/gate