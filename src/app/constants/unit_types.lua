--[[
	unit所有使用到的类型
]]

U_EMPTY		= 0
U_BUILDING 	= 1
U_PEOPLE 	= 2
U_PLANT 	= 3

U_ST_WAITING 	= 1  -- 等待建造
U_ST_BUILDING	= 2  -- 建造中
U_ST_BUILDED	= 3  -- 已完成
U_ST_SELECTED 	= 4  -- 已选中
U_ST_UNSELECTED = 5  
U_ST_PRESSED 	= 6  -- 按下
U_ST_UNPRESSED 	= 7  -- 抬起
U_ST_MOVING 	= 8

-- Z order
ZORDER_NORMAL 	= 1
ZORDER_MOVING 	= 2

-- store type
STORE_POSITION = 1  -- 按位置存储
STORE_LIST = 2  	-- 直接保存