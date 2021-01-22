require("关卡位置")
require("科研")
require("TSLib")
require("检测服务器断开")
require("伪科学收做")
require("ui")
require("每日图")

--setScreenScale(720,1280)    --在720*1280中开发


w,h = getScreenSize();
if w == 720 and h == 1280 then
    --dialog("720*1280")
    init('0', 1); --以当前应用 Home 键在右边初始化 --xx用1
elseif w == 1280 and h == 720 then
    --dialog("1280*1280")
    init('0', 0); --以当前应用 Home 键在右边初始化 --xx用1

else
    init('0', 1); --以当前应用 Home 键在右边初始化 --xx用1
    dialog("最佳适配分辨率为720x1280\n可以尝试继续运行 但不一定能用",{timeout = 20,title = "非最佳适配分辨率",button = "继续运行"})
end

mSleep(1000)
mainUi()
--UIbool, UIVal = showUI("ui.json")  --jsonUI
--if UIbool == 0 then --如果取消就退出脚本--jsonUI
--	lua_exit()
--end
--print (UIbool)--jsonUI

setting = 0

-- if UIVal.主功能 == "0" then
-- 	print("自动委托科研")
-- 	setting = 1
-- end
-- if UIVal.主功能 == "1" then --测试用
-- 	print("dier")
-- end
-- if UIVal.主功能 == "2" then --2=每日
-- 	print("去做每日")
-- 	setting = 3
-- end


if 主功能 == "自动委托科研" then
    --nLog('自动委托科研')
    setting = 1
    --local time2 = os.time()
    --nLog(os.time())
end

if 主功能 == "一键日常" then --2=每日
    textUi("去做每日")
    setting = 3
end

if setting == 3 then
    --id = createHUD() --叉叉HUD
    --showHUD(id,"欢迎使用还没想好名字的脚本！",14,"0xffff0000","0xffffffff",0,100,0,228,32)      --显示HUD内容
    showTextView("欢迎使用还没想好名字的脚本","abc",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
    mSleep(2000)
    --showHUD(id,"日常",14,"0xffff0000","0xffffffff",0,100,0,228,32)     --变更显示的HUD内容
    showTextView("日常","abc",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
    mSleep(1000)
    --hideHUD(id)
    
    closeFw()
	每日图选图()
	
	randomTap(1228, 32)--回家
    mSleep(1000)
    randomTap(1228, 32)
    mSleep(1000)
    
	mSleep(3000)--停一下然后循环伪科学
	setting = 1
	mSleep(100)
	
end

-- if UIbool == 1 and setting == 1 then
--     UIbool1, UIVal1 = showUI("伪科学.json")
--     if UIVal1.RadioGroup1 == "1" or UIVal1.RadioGroup1 == "2" then
--         toast("未实装！")
--         mSleep(3000)
--         lua_exit()
--     end

if setting == 1 then
    -- secUi()--二级菜单
    -- if check2 == "多选组合" then
    --     toast("未实装！")
    --     mSleep(3000)
    --     lua_exit()
    -- end
    
    dialog("每30分钟自动检查一次",{timeout = 0,title="自动委托科研",button = "好"})
    mSleep(500)
    
    showTextView("欢迎使用还没想好名字的脚本","tit",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
    mSleep(2000)
    closeFw()
    
    伪科学收做()--开始先做一次
    timeswitch = os.time() -- 获取开始时时间
    while true do --这是个计时器
        mSleep(1000)
        runtime = os.time() --获取运行时间
        
        if(runtime - timeswitch > 60) then
            closeFw()--到时间就关闭计时器text 显示要开始的功能
            textUi("检查委托边栏")
            伪科学收做()
            timeswitch = os.time()--做完之后重置开始时间
        else
            local t = tostring(runtime - timeswitch)
            --textUi("距上次检查过去了"..t.."秒.")
            showTextView("距上次检查过去了"..t.."秒.","count",104,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
        end
        
    end
end