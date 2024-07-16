# Get random value. 100 for each type and 2000 per type for the empties. Currently 15 types
execute store result score mr_random mr_var run random value 1..10

execute if score mr_random mr_var matches 1..9 run place template minecraft:mr_white_mooshroom_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1..9 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"mooshroom"}}}]}

execute if score mr_random mr_var matches 10 run place template minecraft:mr_white_reward_house ~ ~-1 ~