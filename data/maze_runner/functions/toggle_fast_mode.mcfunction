execute if score mr_fast_mode mr_var matches 1 run tellraw @s {"text":"Fast Mode Disabled"}
execute if score mr_fast_mode mr_var matches 1 run return run scoreboard players reset mr_fast_mode mr_var
tellraw @s {"text":"Fast Mode Enabled\nWarning: Fast mode loads many rooms at a time. Reloading the maze will take less time, but the game will lag during the process."}
return run scoreboard players add mr_fast_mode mr_var 1