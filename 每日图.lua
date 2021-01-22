require("TSLib")
require("检测服务器断开")
require("ui")
require("出击前检查")

function 每日选舰队(num)
    local i = 0 --点十次左箭头确保回到第一舰队
    while (i < 10) do
        randomTap(34, 338)--舰队选择左箭头
        mSleep(300)
        i = i + 1
    end
    mSleep(1000)
    local i = 0
    while (i < (num - 1)) do--选择舰队
        randomTap(913, 341)--舰队选择右箭头
        mSleep(500)
        i = i + 1
    end
end

function 还有次数吗()
    --检测是否还有次数 每日关卡外面右上方绿色次数UI 如果是0就识别到了
    local xc, yc = findColorInRegionFuzzy(0x94ff63, 99, 1182, 95, 1186, 97, 0, 0)
    if xc > -1 then
        textUi("次数用完")
        mSleep(500)
        randomTap(54, 53)
        mSleep(500)
        return false
        
    else--没识别到0就还有 就继续
        return true
    end
end

function 每日图选图()
    randomTap(1228, 32)--回家
    mSleep(1000)
    randomTap(1228, 32)
    mSleep(1000)
    randomTap(1083, 364) --点击出击
    mSleep(2000)
    randomTap(823,673) --每日任务
    mSleep(1000)
    local index = 0 --判断每日是否打完index 每遇到一个未开放or破交or0就+1
    --判断是不是在每日界面 识别每日界面下方红色光点UI
    local x, y = findColorInRegionFuzzy(0xbd5552, 92, 702, 681, 754, 701, 0, 0)
    
    if x > -1 then --到每日界面了就开始循环
        textUi("每日界面")
        mSleep(1000)
        while index < 6  do --检查多少次出去(检查是不是打完了)
            mSleep(500)--识别之前等一下切换 不然会出问题
                        
            --未开放的判断 识别中间一点的红色未开放字UI    
            local nox, noy = findColorInRegionFuzzy(0xad3839, 99, 513, 348, 684, 396, 0, 0) --99是扫描精度
            if nox > -1 then
                index = index + 1
                textUi("未开放")
                randomTap(961, 378)--未开放切下一个
                mSleep(500)
            end
    
            --破交作战判断 识别正中字体鲜亮橙色字UI
            local nodax, noday = findColorInRegionFuzzy(0xff9239, 99, 570, 466, 693, 513, 0, 0)
            if nodax > -1 then --如果是破交就跳
                index = index + 1
                textUi("不打破交")
                randomTap(961, 378)--切下一个
                mSleep(500)
            end

            --战术研修判断 识别正中字体鲜亮浅蓝色字UI
            local x1, y1 = findColorInRegionFuzzy(0x42e7ff, 99, 581, 470, 689, 513, 0, 0)
            if x1 > -1 then
                textUi("战术研修")
                randomTap(635, 323)--点进去(屏幕中间)
                mSleep(1000)
                
                while (还有次数吗() == true) do
                    textUi("还有次数")
                    mSleep(300)
                    randomTap(675, 358)--炮击 --50
                    mSleep(1000)
                    --出击检查(1800)--红脸默认休息1800s
                    开启自律(1)--测试开自律
                    randomTap(1144, 638)--点出击
                end
                index = index + 1
                randomTap(961, 378)--切下一个--
            end
            --randomTap(630, 201)--航空 --70
            --randomTap(675, 358)--炮击 --50
            --randomTap(667, 516)--雷击 --35
    
            --商船护卫判断 识别正中字体鲜亮深蓝色字UI
            local x2, y2 = findColorInRegionFuzzy(0x4296ff, 99, 583, 470, 685, 513, 0, 0)
            if x2 > -1 then
                textUi("商船护卫")
                
                randomTap(961, 378)--切下一个
                mSleep(500)
                
            end
    
            --海域突进判断 识别正中字体鲜亮绿色字UI
            local x3, y3 = findColorInRegionFuzzy(0x31e3bd, 99, 588, 472, 689, 513, 0, 0)
            if x3 > -1 then
                textUi("海域突进")
                
                randomTap(961, 378)--切下一个
                mSleep(500)
                
            end
    

            
            
        end
        --lua_exit()--测试退出
    else
        textUi("我是谁我在哪")
        每日图选图()
    end
end