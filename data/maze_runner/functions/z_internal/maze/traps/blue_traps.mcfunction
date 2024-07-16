# Get random value. 100 for each type and 2000 per type for the empties. Currently 15 types
execute store result score mr_random mr_var run random value 1..30000

# Cut out if none
execute if score mr_random mr_var matches 1501.. run return 0

# Arctic
execute if score mr_random mr_var matches 1..100 run place template mr_maze_arctic_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1..100 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_arctic"},shared_data:{loot_table:"maze_runner:spawner_arctic"}}
execute if score mr_random mr_var matches 1..100 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{equipment:{loot_table:"maze_runner:equipment/trial_undead_ranged",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}},entity:{id:"stray",DeathLootTable:"maze_runner:empty"}},weight:40},{data:{entity:{id:"illusioner",DeathLootTable:"maze_runner:empty"}},weight:20},{data:{entity:{id:"spider",DeathLootTable:"maze_runner:empty"}},weight:7},{data:{entity:{id:"phantom",DeathLootTable:"maze_runner:empty"}},weight:7},{data:{entity:{id:"creeper",DeathLootTable:"maze_runner:empty"}},weight:7}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}} replace

# Deepdark
execute if score mr_random mr_var matches 101..200 run place template mr_maze_deepdark_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 101..200 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_deepdark"},shared_data:{loot_table:"maze_runner:spawner_deepdark"}}
execute if score mr_random mr_var matches 101..200 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"creeper",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"warden",DeathLootTable:"maze_runner:empty"}},weight:5},{data:{entity:{id:"slime",DeathLootTable:"maze_runner:empty"}},weight:17},{data:{entity:{id:"silverfish",DeathLootTable:"maze_runner:empty"}},weight:17},{data:{entity:{id:"spider",DeathLootTable:"maze_runner:empty",}},weight:17},{data:{equipment:{loot_table:"maze_runner:equipment/trial_undead_melee",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}},entity:{id:"zombie_villager",DeathLootTable:"maze_runner:empty"}},weight:17},{data:{equipment:{loot_table:"maze_runner:equipment/trial_undead_ranged",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}},entity:{id:"skeleton",DeathLootTable:"maze_runner:empty"}},weight:17}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# Desert
execute if score mr_random mr_var matches 201..300 run place template mr_maze_desert_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 201..300 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_desert"},shared_data:{loot_table:"maze_runner:spawner_desert"}}
execute if score mr_random mr_var matches 201..300 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"skeleton",DeathLootTable:"maze_runner:empty"},equipment:{loot_table:"maze_runner:equipment/trial_undead_ranged",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}}},weight:15},{data:{entity:{id:"spider",DeathLootTable:"maze_runner:empty"}},weight:15},{data:{equipment:{loot_table:"maze_runner:equipment/trial_undead_melee",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}},entity:{id:"husk",DeathLootTable:"maze_runner:empty"}},weight:40}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# dungeon
execute if score mr_random mr_var matches 301..400 run place template mr_maze_dungeon_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 301..400 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_dungeon"},shared_data:{loot_table:"maze_runner:spawner_dugeon"}}
execute if score mr_random mr_var matches 301..400 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"creeper",DeathLootTable:"maze_runner:empty"}},weight:5},{data:{entity:{id:"enderman",DeathLootTable:"maze_runner:empty"}},weight:15},{data:{entity:{id:"silverfish",DeathLootTable:"maze_runner:empty"}},weight:15},{data:{entity:{id:"cave_spider",DeathLootTable:"maze_runner:empty"}},weight:15},{data:{entity:{id:"slime",DeathLootTable:"maze_runner:empty"}},weight:20},{data:{entity:{id:"zombie",DeathLootTable:"maze_runner:empty"},equipment:{loot_table:"maze_runner:equipment/trial_undead_melee",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}}},weight:20},{data:{entity:{id:"skeleton",DeathLootTable:"maze_runner:empty"},equipment:{loot_table:"maze_runner:equipment/trial_undead_ranged",slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0,mainhand:0,offhand:0}}},weight:20}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# end
execute if score mr_random mr_var matches 401..500 run place template mr_maze_end_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 401..500 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_end"},shared_data:{loot_table:"maze_runner:spawner_end"}}
execute if score mr_random mr_var matches 401..500 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"endermite",DeathLootTable:"maze_runner:empty"}},weight:30},{data:{entity:{id:"shulker",DeathLootTable:"maze_runner:empty"}},weight:30},{data:{entity:{id:"enderman",DeathLootTable:"maze_runner:empty"}},weight:40}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

#head_house
execute if score mr_random mr_var matches 501..600 run place template mr_maze_head_house ~ ~-1 ~
execute if score mr_random mr_var matches 501..600 run summon zombie_villager ~4 ~4 ~4 {DeathLootTable:"maze_runner:empty",ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}

# Nether
execute if score mr_random mr_var matches 601..700 run place template mr_maze_nether_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 601..700 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_nether"},shared_data:{loot_table:"maze_runner:spawner_nether"}}
execute if score mr_random mr_var matches 601..700 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"wither",DeathLootTable:"maze_runner:empty"}},weight:4},{data:{entity:{id:"enderman",DeathLootTable:"maze_runner:empty"}},weight:6},{data:{entity:{id:"ghast",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"wither_skeleton",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"zoglin",DeathLootTable:"maze_runner:empty"}},weight:17},{data:{entity:{id:"zombified_piglin",DeathLootTable:"maze_runner:empty"}},weight:17},{data:{entity:{id:"magma_cube",DeathLootTable:"maze_runner:empty"}},weight:18},{data:{entity:{id:"blaze",DeathLootTable:"maze_runner:empty"}},weight:18}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# Pillager
execute if score mr_random mr_var matches 701..800 run place template mr_maze_pillager_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 701..800 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_pillager"},shared_data:{loot_table:"maze_runner:spawner_pillager"}}
execute if score mr_random mr_var matches 701..800 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"illusioner",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"vex",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"ravager",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"witch",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"evoker",DeathLootTable:"maze_runner:empty"}},weight:20},{data:{entity:{id:"vindicator",DeathLootTable:"maze_runner:empty"}},weight:20},{data:{entity:{id:"pillager",DeathLootTable:"maze_runner:empty"}},weight:20}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# Reward
execute if score mr_random mr_var matches 801..900 run place template mr_maze_reward_house ~ ~-1 ~
execute if score mr_random mr_var matches 801..900 run loot insert ~4 ~2 ~3 loot maze_runner:chests/reward_house

# Trap
execute if score mr_random mr_var matches 901..1000 run place template mr_maze_trap_house ~ ~-1 ~
execute if score mr_random mr_var matches 901..1000 run loot insert ~4 ~2 ~3 loot maze_runner:chests/mr_spawner

# Water
execute if score mr_random mr_var matches 1001..1100 run place template mr_maze_water_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1001..1100 run loot insert ~5 ~3 ~5 loot maze_runner:chests/mr_spawner
execute if score mr_random mr_var matches 1001..1100 run summon elder_guardian ~4 ~17 ~4

# Woodland
execute if score mr_random mr_var matches 1101..1200 run place template mr_maze_woodland_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1101..1200 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_woodland"},shared_data:{loot_table:"maze_runner:spawner_woodland"}}
execute if score mr_random mr_var matches 1101..1200 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"vex",DeathLootTable:"maze_runner:empty"}},weight:10},{data:{entity:{id:"evoker",DeathLootTable:"maze_runner:empty"}},weight:40},{data:{entity:{id:"vindicator",DeathLootTable:"maze_runner:empty"}},weight:50}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# Swamp
execute if score mr_random mr_var matches 1201..1300 run place template mr_maze_swamp_spawner ~ ~-1 ~
execute if score mr_random mr_var matches 1201..1300 run setblock ~5 ~3 ~5 vault{config:{loot_table:"maze_runner:spawner_swamp"},shared_data:{loot_table:"maze_runner:spawner_swamp"}}
execute if score mr_random mr_var matches 1201..1300 run setblock ~4 ~3 ~5 trial_spawner{normal_config:{spawn_potentials:[{data:{entity:{id:"drowned",DeathLootTable:"maze_runner:empty"}},weight:20},{data:{entity:{id:"witch",DeathLootTable:"maze_runner:empty"}},weight:40},{data:{entity:{id:"slime",DeathLootTable:"maze_runner:empty"}},weight:40}],loot_tables_to_eject:[{data:"minecraft:spawners/trial_chamber/key",weight:1}],simultaneous_mobs:2,simultaneous_mobs_added_per_player:1,ticks_between_spawn:40}}

# Mine hole
execute if score mr_random mr_var matches 1301..1400 run fill ~ ~1 ~ ~9 -64 ~9 minecraft:bedrock outline
execute if score mr_random mr_var matches 1301..1400 run fill ~ ~3 ~ ~9 ~-1 ~9 air

# Blaze tower