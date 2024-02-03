execute unless entity @e[tag=mr_erasing] run forceload add ~505 ~505 ~485 ~485
execute unless entity @e[tag=mr_erasing] run summon marker ~495.5 ~ ~495.5 {Tags:["mr_eraser", "mr_temp"]}
execute unless entity @e[tag=mr_erasing] run scoreboard players set @e[tag=mr_eraser] mr_x 0
execute unless entity @e[tag=mr_erasing] run scoreboard players set @e[tag=mr_eraser] mr_y 0
tag @e[tag=mr_eraser] remove mr_reset
tag @s add mr_erasing


execute unless entity @e[tag=mr_eraser] run say didn't load. Trying again
execute unless entity @e[tag=mr_eraser] run return run schedule function maze_runner:z_internal/erase 1t


#erase
execute as @e[tag=mr_eraser] run say erased blocks
execute at @e[tag=mr_eraser] run fill ~6 ~-5 ~6 ~-7 ~55 ~-7 air


#change scores
scoreboard players add @e[tag=mr_eraser] mr_x 1
execute as @e[tag=mr_eraser, scores={mr_x=100..}] run tag @s add mr_reset
execute as @e[tag=mr_reset] run scoreboard players add @s mr_y 1
execute as @e[tag=mr_reset] run scoreboard players set @s mr_x 0


#move
execute as @e[tag=mr_eraser, tag=!mr_reset] run say moving 1 forward
execute at @e[tag=mr_eraser, tag=!mr_reset] run forceload add ~6 ~-5 ~-7 ~-15
execute as @e[tag=mr_eraser, tag=!mr_reset] at @s run tp ~ ~ ~-10

execute as @e[tag=mr_eraser, tag=mr_reset] run say moving 990 back
execute at @e[tag=mr_eraser, tag=mr_reset] run forceload add ~-5 ~995 ~-15 ~985
execute as @e[tag=mr_eraser, tag=mr_reset] at @s run tp ~-10 ~ ~990


execute unless entity @e[tag=mr_eraser] run say didn't load. Trying again
execute unless entity @e[tag=mr_eraser] run return run schedule function maze_runner:z_internal/erase 1t


execute unless entity @e[tag=mr_reset] run say rerunning
execute unless entity @e[tag=mr_reset] run return run function maze_runner:z_internal/erase


say done
tag @e remove mr_erasing
kill @e[tag=mr_eraser]
forceload remove all