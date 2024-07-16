tellraw @a[tag=!mr_mute] [{"score":{"name":"@s","objective":"mr_sync"}},{"text":" canceled building the maze"}]
execute as @e[tag=mr_temp] if score @s mr_sync = @e[limit=1, sort=nearest] mr_sync run kill @s
execute unless entity @e[tag=mr_temp] run tag @a remove mr_active
fill ~49 ~51 ~49 ~-50 ~52 ~-50 air