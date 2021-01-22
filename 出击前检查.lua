require("TSLib")
require("检测服务器断开")

function 识别自律提示弹窗() --识别自律开启时弹窗提示 弹窗按钮 知道了UI
    local x, y = findMultiColorInRegionFuzzy(0x4a86ce,"2|-15|0xffffff,-2|-33|0xffffff,-3|-40|0x5a8ece", 92, 586, 520, 690, 563, 0, 1)
    if x > -1 then
        randomTap(642, 542)
    end
    mSleep(500)
end

function 开启自律(bool)--接收用户设置 开启自律是1 不开是0
    识别自律提示弹窗()
    local x, y = findColorInRegionFuzzy(0x08c37b, 92, 732, 102, 819, 139, 1, 0)--识别出击界面自律开关绿色ON的UI
    if x > -1 and bool == 1 then--如果开了and用户要开
        textUi("自律已开")
    
    elseif x > -1 and bool == 0 then--如果开了and用户不要开
        textUi("关闭自律")
        randomTap(819, 118)--出击界面自律开关
    
    elseif x == -1 and bool == 1 then--如果没开and用户要开
        textUi("打开自律")
        randomTap(819, 118)--出击界面自律开关
        
    else--如果没开and用户不要开
        textUi("不开自律")

    end
    mSleep(500)
end

function 出击检查(tim)--传入休息时间
    local timei = os.time()
    while 红脸 do --如果红脸就休息
        mSleep(1000)
        runtime = os.time() --获取运行时间
        if(runtime - timei > tim) then
            closeFw()--到时间就关闭计时器text 显示要开始的功能
            textUi("继续出击")
            break
        else
            local t = tostring(runtime - timeswitch)
            showTextView("红脸休息开始"..t.."秒.","count",104,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
        end
    end
end

function 点击出击按钮()
    mSleep(300)
    randomTap(1143, 639)
    mSleep(300)
end