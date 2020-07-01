# Description: Init clear lag
# Called from: main/reload
# Datapack by 2mal3

scoreboard players operation nld.clear_lag_time nld.data = nld.clear_lag_time nld.config

scoreboard players operation nld.in_0 nld.math = nld.clear_lag_time nld.config

# 50%
scoreboard players set nld.in_1 nld.math 50
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.50 nld.data = nld.out_0 nld.math

# 25%
scoreboard players set nld.in_1 nld.math 25
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.25 nld.data = nld.out_0 nld.math

# 12%
scoreboard players set nld.in_1 nld.math 12
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.12 nld.data = nld.out_0 nld.math

# 6%
scoreboard players set nld.in_1 nld.math 6
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.6 nld.data = nld.out_0 nld.math

# 3%
scoreboard players set nld.in_1 nld.math 3
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.3 nld.data = nld.out_0 nld.math

# 1%
scoreboard players set nld.in_1 nld.math 1
function nld:clear_lag/math
scoreboard players operation nld.clear_lag.1 nld.data = nld.out_0 nld.math
