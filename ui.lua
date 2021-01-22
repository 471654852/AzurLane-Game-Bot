require "TSLib"

function mainUi()

    -- w,h = getScreenSize()
    UINew(2,"主功能,出击选项","确定","取消","save.dat",1,0,950,600,"255,255,255","242,242,242","","dot",1)
    UIRadio(1,"主功能","自动委托科研,一键日常,刷图,1-1刷好感,7-2炼金, 推图","1",-1,0,"",1,3)
    UILabel(1,"拆船选项",14,"left","38,38,38")
    UIRadio(1,"check1,check2,check3,check4,check5","白,蓝,紫,自动,喂了","0",-1,0,"",1,6)
    UILabel(1,"科研选择",14,"left","38,38,38")
    UICheck(1,"check6,check7,check8,check9,check10","一期优先,二期优先,三期优先,不吃魔方,不花金币","2@3",-1,0,"",1,3)
    UILabel(1,"委托",14,"left","38,38,38")
    UICheck(1,"check1","不做紧急","")
    UILabel(2,"一队",15,"left","38,38,38")
    UICombo(2,"select2","第1舰队,第2舰队,第3舰队,第4舰队,第5舰队,第6舰队","0")
    UILabel(2,"二队",15,"left","38,38,38")
    UICombo(2,"select3","第1舰队,第2舰队,第3舰队,第4舰队,第5舰队,第6舰队","0")
    UICheck(2,"check1","无视红脸","")
    UIShow()

end


function secUi()
    UINew(1,"第1页","确定","取消","save.dat",1,0,950,700,"255,255,255","255,255,255","","dot",1)
    UICheck(1,"check1,check2","开始,多选组合","0")
    UIShow()
end

function textUi(s)
    showTextView(s,"abc",100,0,300,30,"center","FFFFFF","000000",12,1,1,1,50)
    mSleep(1000)
    closeFw()
    mSleep(500)
end