# It no work


execute if entity @s[tag=!mr_spawn_flame_pillar] run scoreboard players set mr_flame mr_var 10
tag @s add mr_spawn_flame_pillar

summon blaze ~ ~ ~ {Tags:["mr_new"]}
#ride @e[tag=mr_new, limit=1, sort=nearest] mount @e[sort=nearest, limit=1, tag=mr_base]

tag @e[tag=mr_base] remove mr_base
tag @e[tag=mr_new] add mr_base
tag @e[tag=mr_new] remove mr_new

scoreboard players remove mr_flame mr_var 1

execute if score mr_flame mr_var matches 1.. run return run function maze_runner:z_internal/maze/traps/spawn_flame_pillar
tag @s remove mr_spawn_flame_pillar