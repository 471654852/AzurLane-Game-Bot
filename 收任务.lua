require("TSLib")
require("检测服务器断开")

--识别任务感叹号
function 收任务()
    local rwx, rwy = findMultiColorInRegionFuzzy(0xb55542,"6|0|0xffefef,13|1|0xb55142,11|-1|0xb55142", 92, 925, 653, 966, 694, 0, 0)
	
    if rwx > -1 then
        randomTap(893, 696)--点开任务按钮
        mSleep(1000)
        
        --判断是不是只有一个任务		
        local tmp1, tmp2 = findColorInRegionFuzzy(0x5275c6, 92, 1090, 121, 1185, 186, 0, 0)
        if tmp1 > -1 then
            randomTap(1138, 148)
            mSleep(1000)
        end

        randomTap(1070, 19)--全部收取
        mSleep(1000)
        randomTap(1070, 19)
        mSleep(500)
        randomTap(1070, 19)
        mSleep(500)
        randomTap(1070, 19)
        mSleep(500)
		randomTap(1070, 19)
        mSleep(1000)
        
        randomTap(1228, 32)--回家
        mSleep(1000)
    end
end