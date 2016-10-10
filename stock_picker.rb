def stock_picker(days)
	select = [0,0]
	days.each.with_index do |d,i|
		for index in i...days.size
			actualPrice = days[select[1]]	- days[select[0]]
			comparePrice = days[index] - days[i]
			if(comparePrice > actualPrice)
				select[0] = i
				select[1] = index
			end
		end
	end
	puts "#{select[0]},#{select[1]}"
end
stock_picker([17,3,6,9,15,8,6,1,10])
		