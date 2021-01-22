require("TSLib")

function 检测服务器断开()
	d1, d2 = findMultiColorInRegionFuzzy(0x4271ad,"15|-2|0xffffff,20|-6|0x3969a5,37|8|0xffffff,43|8|0x4275b5,53|2|0x5a92d6,66|9|0xffffff,90|12|0x5a96d6,69|27|0x4a8ad6", 92, 701, 480, 879, 547, 0, 0)
	if d1 > -1 then
		randomTap(d1, d2)
		mSleep(500)
	end
end