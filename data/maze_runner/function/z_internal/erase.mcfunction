execute unless entity @e[tag=mr_erasing] run summon marker ~245.5 ~ ~245.5 {Tags:["mr_eraser", "mr_temp"]}
execute unless entity @e[tag=mr_erasing] run scoreboard players set @e[tag=mr_eraser] mr_x 0
execute unless entity @e[tag=mr_erasing] run scoreboard players set @e[tag=mr_eraser] mr_y 0
execute unless entity @e[tag=mr_erasing] run tellraw @a[tag=!mr_mute] {"text":"STOP! Erasing"}
tag @e[tag=mr_eraser] remove mr_reset
tag @s add mr_erasing


execute unless entity @e[tag=mr_eraser] run tellraw @a[tag=mr_debug] {"text":"Didn't load. Trying again ..."}
execute unless entity @e[tag=mr_eraser] run return run schedule function maze_runner:z_internal/erase 1t

#erase
execute as @e[tag=mr_eraser] run tellraw @a[tag=mr_debug] {"text":"Erased Blocks"}
execute as @e[tag=mr_eraser] at @s run fill ~6 ~-5 ~6 ~-7 ~55 ~-7 air


#change scores
scoreboard players add @e[tag=mr_eraser] mr_x 2
execute as @e[tag=mr_eraser, scores={mr_x=100..}] run tag @s add mr_reset
execute as @e[tag=mr_reset] run scoreboard players add @s mr_y 2
execute as @e[tag=mr_reset] run scoreboard players set @s mr_x 0
execute as @e[tag=mr_reset, scores={mr_y=100..}] run tag @s add mr_done


#move
execute as @e[tag=mr_eraser, tag=!mr_reset] run tellraw @a[tag=mr_debug] {"text":"Moving 1 forward"}
execute as @e[tag=mr_eraser, tag=!mr_reset] at @s run tp ~ ~ ~-10

execute as @e[tag=mr_eraser, tag=mr_reset, tag=!mr_done] run tellraw @a[tag=mr_debug] {"text":"Moving 990 blocks"}
execute as @e[tag=mr_eraser, tag=mr_reset, tag=!mr_done] at @s run tp ~-10 ~ ~490


execute unless entity @e[tag=mr_done] run tellraw @a[tag=mr_debug] {"text":"Rerunning"}
execute unless entity @e[tag=mr_done] run return run schedule function maze_runner:z_internal/erase 1t


execute unless entity @e[tag=mr_erasing] run tellraw @a[tag=!mr_mute] {"text":"Done erasing"}
tag @e remove mr_erasing
kill @e[tag=mr_eraser]