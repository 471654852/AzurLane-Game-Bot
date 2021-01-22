require("TSLib")
require("科研")
require("检测服务器断开")
require("收任务")
require("ui")

function 伪科学收做()

    timeinitial = os.time()
    timefinal = timeinitial
    
    --    while true do
		
    mSleep(1000) --加延时，否则卡死
    检测服务器断开()
    mSleep(500)		
    收任务()	
		
    x, y = findMultiColorInRegionFuzzy(0xb55542,"4|-1|0xe7aead,11|-5|0xd64939,14|2|0xfff3ef,18|0|0xc64d39", 92, 28, 125, 73, 169, 0, 0)--左边栏按钮的感叹号
    z, c = findMultiColorInRegionFuzzy(0xb55142,"-5|6|0xffefde,-5|-1|0xffefef,-10|1|0xb55142", 92, 746, 634, 820, 707, 0, 0)--科研按钮旁边的感叹号
		
		
    if z > -1 then --如果识别到底边科研感叹号
            
        randomTap(20, 164)--打开左边栏
        mSleep(1000)
            
        --先识别是不是空闲(识别空闲字体绿色UI)
        local tmp3, tmp4 = findColorInRegionFuzzy(0x8cffe7, 92, 223, 586, 277, 612, 0, 0)
        if tmp3 > -1 then --如果空闲
            -- showTextView("空闲，做科研","abc",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
            -- mSleep(1000)
            -- closeFw()
            -- mSleep(500)
            textUi("空闲，做科研")
                
            randomTap(437, 567)--左边栏收科研按钮

            做蓝色科研()
            mSleep(1000)
                
            randomTap(1228, 32)--做完回家
            mSleep(1000)
            
        else
            textUi("收科研")
            randomTap(437, 567)--收科研
            mSleep(5000)--等五秒 网络不好
            randomTap(424, 13)--收
            mSleep(2000)
			
            --showTextView("做科研","abc",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)

            --showHUD(id,"做科研",14,"0xffff0000","0xffffffff",0,100,0,228,32)     --变更显示的HUD内容
            randomTap(437, 567)--去做科研
			
            做蓝色科研()
            mSleep(1000)
            randomTap(1228, 32)--回家
            mSleep(1000)    
            
        end
    end
		
    if x > -1 then --如果识别到左边栏感叹(委托)
        randomTap(20, 164)--打开左边栏
			
        mSleep(1500)--gap
            
        --识别左边栏委托完成按钮金色UI
        local tmp5, tmp6 = findColorInRegionFuzzy(0xefa242, 92, 379, 259, 507, 305, 0, 0)
        --识别左边栏委托空闲绿色UI
        local tmp7, tmp8 = findColorInRegionFuzzy(0x8cffe7, 92, 214, 296, 366, 334, 0, 0)
        
        randomTap(170, 80) --左边栏石油
        mSleep(1500)--gap
			
        randomTap(420, 80)  --左边栏金币
        mSleep(1500)--gap
        
        if tmp5 > -1 then --如果完成
            textUi("委托完成啦")
            randomTap(440, 280)-- 点完成
			
            mSleep(2000)
			
            randomTap(424, 13)--收
            mSleep(1000)
            randomTap(424, 13)--收
            mSleep(1000)
            randomTap(424, 13)--收
            mSleep(1000)
            randomTap(424, 13)--收
            mSleep(1000)
            -- randomTap(1228, 32)--回家
            -- mSleep(1000)
                
        end
		
        if tmp7 > -1 then  --如果空闲
            randomTap(440, 280)-- 点完成
            
        end
        
        randomTap(1228, 32)--回家
        mSleep(1000)    
			
			
	else
	    textUi("啥都没有再等等")
	    textUi("啥都没有再等等")
    end
end
--end