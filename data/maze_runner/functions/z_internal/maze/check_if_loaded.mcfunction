# If reader and builder are both loaded, build grid
tag @s add mr_active
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tag @s add mr_active
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tag @s add mr_active
execute if entity @e[tag=mr_reader, tag=mr_active] if entity @e[tag=mr_builder, tag=mr_active] run return run function maze_runner:z_internal/maze/grid

# Else reset and try again in one more tick
tag @e remove mr_active
tellraw @a[tag=mr_debug] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" builder didn't load. Trying again ..."}]
return run schedule function maze_runner:z_internal/maze/next_chunk 1t