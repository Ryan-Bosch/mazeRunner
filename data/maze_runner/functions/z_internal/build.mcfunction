summon block_display ~ ~ ~ {Tags:["mr_center"]}
scoreboard objectives add mr_var dummy

# Build center
place template minecraft:mr_town_hall ~ ~ ~
place template minecraft:mr_fountain ~ ~-1 ~-10
place template minecraft:mr_empty ~-10 ~ ~-10
place template minecraft:mr_map_room ~-10 ~ ~

scoreboard players reset mr_grid_x mr_var
scoreboard players reset mr_grid_y mr_var
execute positioned ~40 ~ ~40 run function maze_runner:z_internal/build_city/grid