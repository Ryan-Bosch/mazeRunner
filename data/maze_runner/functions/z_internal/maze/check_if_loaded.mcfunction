# If reader and builder are both loaded, build grid
tag @s add mr_active
execute as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tag @s add mr_active
execute as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run tag @s add mr_active
execute if entity @e[tag=mr_reader, tag=mr_active] if entity @e[tag=mr_builder, tag=mr_active] run return run function maze_runner:z_internal/maze/grid


# Else reset and try again in one more tick
# Tp active player to center to try to load
gamerule spectatorsGenerateChunks true
scoreboard players reset mr_success mr_var
execute as @a[tag=mr_active] if score @s mr_sync = @e[tag=mr_active, limit=1] mr_sync store result score mr_success mr_var run tag @s add mr_loader
execute unless score mr_success mr_var matches 1.. store result score mr_success mr_var run tag @p[tag=mr_active, tag=!mr_primary] add mr_loader
execute unless score mr_success mr_var matches 1.. run tag @p[tag=mr_active] add mr_loader
tellraw @a[tag=mr_loader,tag=!mr_mute] [{"text":"You are being teleported to maze "},{"score":{"name":"","objective":""}},{"text":" in order to assist in execution"}]
gamemode spectator @a[tag=mr_loader]
tp @a[tag=mr_loader] ~ ~20 ~
tag @a remove mr_loader


tag @e[type=!player] remove mr_active
tellraw @a[tag=mr_debug] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" builder didn't load. Trying again ..."}]
return run schedule function maze_runner:z_internal/maze/next_chunk 1t