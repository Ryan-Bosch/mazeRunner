# Open Walls
fill ~51 ~2 ~ ~51 ~50 ~-1 air replace bedrock
fill ~ ~2 ~51 ~-1 ~50 ~51 air replace bedrock
fill ~-52 ~2 ~ ~-52 ~50 ~-1 air replace bedrock
fill ~ ~2 ~-52 ~-1 ~50 ~-52 air replace bedrock

kill @s
execute unless entity @e[tag=mr_center] run scoreboard objectives remove mr_var
execute unless entity @e[tag=mr_center] run scoreboard objectives remove mr_sync
execute unless entity @e[tag=mr_center] run scoreboard objectives remove mr_x
execute unless entity @e[tag=mr_center] run scoreboard objectives remove mr_y
execute unless entity @e[tag=mr_center] run schedule clear maze_runner:z_internal/repeat