gamerule maxCommandChainLength 1000000000
gamerule maxCommandForkCount 1000000000
gamerule commandModificationBlockLimit 1000000

tellraw @s [{"text":"WARNING: \n","color":"dark_red","bold":true},{"text":"This will overwrite large parts of your world.\nAre you sure you wish to continue?\n","color":"white","bold":false},{"text":"Yes, Continue!","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Continue and Overwrite World?","color":"dark_red","bold":true}]},"clickEvent":{"action":"run_command","value":"/execute align xyz positioned ~ ~-1 ~ run function maze_runner:z_internal/city/build"}}]