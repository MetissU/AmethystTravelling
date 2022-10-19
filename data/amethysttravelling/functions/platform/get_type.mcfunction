# default if unknown block
scoreboard players set @s AT.level 1
scoreboard players set @s AT.channelTime 200

# switch on block below
execute if block ~ ~-1 ~ minecraft:lodestone run scoreboard players set @s AT.level 2
execute if block ~ ~-1 ~ minecraft:lodestone run scoreboard players operation @s AT.channelTime = diamond AT.config
execute if block ~ ~-1 ~ minecraft:beacon run scoreboard players set @s AT.level 3
execute if block ~ ~-1 ~ minecraft:beacon run scoreboard players operation @s AT.channelTime = netherite AT.config

# get diminsion
#   1: "minecraft:the_end"
#   0: "minecraft:overworld" 
#  -1: "minecraft:the_nether"
# 999: "custom diminsion"  
scoreboard players set @s AT.dimension 999
execute if predicate amethysttravelling:in_end run scoreboard players set @s AT.dimension 1
execute if predicate amethysttravelling:in_overworld run scoreboard players set @s AT.dimension 0
execute if predicate amethysttravelling:in_nether run scoreboard players set @s AT.dimension -1
