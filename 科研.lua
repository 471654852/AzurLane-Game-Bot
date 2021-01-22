require("TSLib")

function 做蓝色科研()
	
	while true do
		mSleep(1000)
		
		m1, m2 = findMultiColorInRegionFuzzy(0x213ce7,"9|5|0xf7f7f7,21|3|0x1830d6,28|6|0xf7f7f7,47|1|0xefebf7,62|2|0x1018bd,68|2|0xf7f7f7,79|2|0xf7f7f7,86|3|0x0010b5", 80, 0, 0, 1279, 719, 0, 0)--蓝色最前
		m3, m4 = findMultiColorInRegionFuzzy(0x2141de,"7|0|0xf7f7f7,11|0|0x2141e7,16|1|0xf7f7f7,21|3|0x2141e7", 80, 0, 0, 1279, 719, 0, 0)
		
		if m1 == (-1) and m3 == (-1) then
			toast("这个不好")
			mSleep(500)
			randomTap(888, 301)
			mSleep(500)
			randomTap(888, 301)
			mSleep(500)
		end
		
		if m1 > -1 then
			toast("这个好")
			mSleep(500)
			randomTap(m1, m2)
			mSleep(1000)
			randomTap(503, 580)--点开始
			mSleep(1000)
			randomTap(792, 504)--点确定
			break
			
		elseif m3 > -1 then
			toast("这个好")
			mSleep(500)
			randomTap(m3, m4)
			mSleep(1000)
			randomTap(503, 580)--点开始
			mSleep(1000)
			randomTap(792, 504)--点确定
			break
		end
		
		
	end
end