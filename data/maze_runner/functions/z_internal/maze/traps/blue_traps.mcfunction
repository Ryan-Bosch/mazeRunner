# Get random value. 100 for each type and 2000 per type for the empties. Currently 15 types
execute store result score mr_random mr_var run random value 1..30000

# Cut out if none
execute if score mr_random mr_var matches 1501.. run return 0

# Arctic spawner
execute if score mr_random mr_var matches 1..100 run place template mr_maze_arctic_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1..40 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"stray"}}}]}
execute if score mr_random mr_var matches 41..60 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"polar_bear"}}}]}
execute if score mr_random mr_var matches 61..80 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"illusioner"}}}]}
execute if score mr_random mr_var matches 81..87 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"spider"}}}]}
execute if score mr_random mr_var matches 88..93 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"phantom"}}}]}
execute if score mr_random mr_var matches 94..100 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"creeper"}}}]}

# Deepdark
execute if score mr_random mr_var matches 101..200 run place template mr_maze_deepdark_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 101..200 run summon warden ~4 ~4 ~4
execute if score mr_random mr_var matches 101..117 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"skeleton"}}}]}
execute if score mr_random mr_var matches 118..134 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"zombie_villager"}}}]}
execute if score mr_random mr_var matches 135..151 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"spider"}}}]}
execute if score mr_random mr_var matches 152..168 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"silverfish"}}}]}
execute if score mr_random mr_var matches 169..185 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"slime"}}}]}
execute if score mr_random mr_var matches 186..195 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"creeper"}}}]}
execute if score mr_random mr_var matches 196..200 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"warden"}}}]}

# Desert
execute if score mr_random mr_var matches 201..300 run place template mr_maze_desert_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 201..240 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"husk"}}}]}
execute if score mr_random mr_var matches 241..255 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"spider"}}}]}
execute if score mr_random mr_var matches 256..270 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"skeleton"}}}]}
execute if score mr_random mr_var matches 271..280 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"pillager"}}}]}
execute if score mr_random mr_var matches 281..290 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"enderman"}}}]}
execute if score mr_random mr_var matches 291..295 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"phantom"}}}]}
execute if score mr_random mr_var matches 296..300 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"creeper"}}}]}

# dungeon
execute if score mr_random mr_var matches 301..400 run place template mr_maze_dungeon_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 301..320 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"skeleton"}}}]}
execute if score mr_random mr_var matches 321..340 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"zombie"}}}]}
execute if score mr_random mr_var matches 341..360 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"slime"}}}]}
execute if score mr_random mr_var matches 361..375 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"cave_spider"}}}]}
execute if score mr_random mr_var matches 376..390 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"silverfish"}}}]}
execute if score mr_random mr_var matches 391..395 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"enderman"}}}]}
execute if score mr_random mr_var matches 396..400 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"creeper"}}}]}

# end
execute if score mr_random mr_var matches 401..500 run place template mr_maze_end_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 401..440 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"enderman"}}}]}
execute if score mr_random mr_var matches 441..470 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"shulker"}}}]}
execute if score mr_random mr_var matches 471..500 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"endermite"}}}]}

#head_house
execute if score mr_random mr_var matches 501..600 run place template mr_maze_head_house ~ ~-1 ~
execute if score mr_random mr_var matches 501..600 run summon zombie_villager ~4 ~4 ~4

# Nether
execute if score mr_random mr_var matches 601..700 run place template mr_maze_nether_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 601..618 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"blaze"}}}]}
execute if score mr_random mr_var matches 619..636 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"magma_cube"}}}]}
execute if score mr_random mr_var matches 637..653 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"zombified_piglin"}}}]}
execute if score mr_random mr_var matches 654..670 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"zoglin"}}}]}
execute if score mr_random mr_var matches 671..680 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"wither_skeleton"}}}]}
execute if score mr_random mr_var matches 681..690 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"ghast"}}}]}
execute if score mr_random mr_var matches 691..696 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"enderman"}}}]}
execute if score mr_random mr_var matches 697..700 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"wither"}}}]}

# Pillager
execute if score mr_random mr_var matches 701..800 run place template mr_maze_pillager_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 701..720 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"pillager"}}}]}
execute if score mr_random mr_var matches 721..740 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"vindicator"}}}]}
execute if score mr_random mr_var matches 741..760 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"evoker"}}}]}
execute if score mr_random mr_var matches 761..770 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"witch"}}}]}
execute if score mr_random mr_var matches 771..780 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"ravager"}}}]}
execute if score mr_random mr_var matches 781..790 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"vex"}}}]}
execute if score mr_random mr_var matches 791..800 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"illusioner"}}}]}

# Reward
execute if score mr_random mr_var matches 801..900 run place template mr_maze_reward_house ~ ~-1 ~

# Trap
execute if score mr_random mr_var matches 901..1000 run place template mr_maze_trap_house ~ ~-1 ~

# Water
execute if score mr_random mr_var matches 1001..1100 run place template mr_maze_water_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1001..1100 run summon elder_guardian ~4 ~17 ~4

# Woodland
execute if score mr_random mr_var matches 1101..1200 run place template mr_maze_woodland_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1101..1150 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"vindicator"}}}]}
execute if score mr_random mr_var matches 1151..1190 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"evoker"}}}]}
execute if score mr_random mr_var matches 1191..1200 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"vex"}}}]}

# Swamp
execute if score mr_random mr_var matches 1201..1300 run place template mr_maze_swamp_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1201..1240 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"slime"}}}]}
execute if score mr_random mr_var matches 1241..1280 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"witch"}}}]}
execute if score mr_random mr_var matches 1281..1300 run setblock ~4 ~3 ~5 spawner{SpawnPotentials:[{weight:1,data:{entity:{id:"drowned"}}}]}

# Mine hole
execute if score mr_random mr_var matches 1301..1400 run fill ~ ~1 ~ ~9 -64 ~9 minecraft:bedrock outline
execute if score mr_random mr_var matches 1301..1400 run place template minecraft:mr_city_mason_room ~ ~ ~

# Blaze tower