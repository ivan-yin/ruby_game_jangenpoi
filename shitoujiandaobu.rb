
arr = ['石头', '剪刀', '布']
win_arr = [['石头', '剪刀'], ['剪刀', '布'], ['布', '石头']]

while (true)
	result = [arr.sample]
	puts "请输入石头(s)、剪刀(j)、布(b)"
	input_value = gets.force_encoding("UTF-8").encode("UTF-8").chomp
	case input_value
	when 's'
		input_value = arr[0]
	when 'j'
		input_value = arr[1]
	when 'b'
		input_value = arr[2]
	end
	puts "computer is "+ result[0]
	puts "your input is "+input_value
	if arr.include? input_value
		result << input_value
		if result[0] == result[1]
			puts '平手'
		elsif win_arr.include? result
			puts '电脑获胜'
		else
			puts "您获胜了! Is continue? y to continue, other to exit"
			isgoon = gets.chomp
			if isgoon.casecmp("y") == 0
				next
			else break 
			end
		end
	else
		puts '输入的值有误，请输入石头、剪刀、布'
		next
	end
end
