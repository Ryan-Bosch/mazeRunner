scoreboard players set @s mr_x 0
scoreboard players add @s mr_y 2

execute unless score @s mr_y matches 100.. as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~-1 ~ ~24
execute unless score @s mr_y matches 100.. as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~-10 ~ ~240
execute unless score @s mr_y matches 100.. run return run schedule function maze_runner:z_internal/maze/next_chunk 1t

execute if score @s mr_half matches ..0 run scoreboard players set @s mr_y 0
execute if score @s mr_half matches ..0 as @e[tag=mr_reader] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~49 ~ ~-1
execute if score @s mr_half matches ..0 as @e[tag=mr_builder] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync at @s run tp ~490 ~ ~-10
execute if score @s mr_half matches ..0 run schedule function maze_runner:z_internal/maze/next_chunk 1t
execute if score @s mr_half matches ..0 run return run scoreboard players set @s mr_half 1

tellraw @a[tag=!mr_mute] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" finished building the maze"}]
execute as @e[tag=mr_temp] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run kill @s
execute unless entity @e[tag=mr_temp] run tag @a remove mr_active
fill ~49 ~51 ~49 ~-50 ~52 ~-50 air