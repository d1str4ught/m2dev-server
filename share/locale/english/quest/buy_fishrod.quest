quest buy_fishrod begin
	state start begin
		when 9009.chat.gameforge.buy_fishrod._10_npcChat with pc.level>=7 and pc.level<=17 begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._30_say)
			local b= select(gameforge.buy_fishrod._40_select, gameforge.buy_fishrod._50_select)
			if 1==b then
				if pc.money>=3980 then
					pc.changemoney(-3980)
					say_title(gameforge.buy_fishrod._20_sayTitle)
					say(gameforge.buy_fishrod._60_say)
					pc.give_item2("27400", 1)
					pc.give_item2("27800", 100)
					pc.give_item2("27801", 20)
					setstate(notify_event)
				else
					say_title(gameforge.buy_fishrod._20_sayTitle)
					say(gameforge.buy_fishrod._70_say)
				end
			elseif 2==b then
			else
				say(string.format(gameforge.buy_fishrod._80_say, b))
			end
		end
	end
	state notify_event begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(gameforge.buy_fishrod._90_makequestbutton)
			q.set_title(gameforge.buy_fishrod._90_makequestbutton)
			q.start()
		end
		when button begin
			say_title(gameforge.buy_fishrod._100_sayTitle)
			say(gameforge.buy_fishrod._110_say)
			local b= select(gameforge.buy_fishrod._120_select, gameforge.buy_fishrod._130_select)
			if 1==b then
				setstate(play_event)
			elseif 2==b then
				setstate(__COMPLETE__)
				q.done()
			else
				say(string.format(gameforge.buy_fishrod._80_say, b))
			end
		end
		when info begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._140_say)
			local b= select(gameforge.buy_fishrod._120_select, gameforge.buy_fishrod._130_select)
			if 1==b then
				setstate(play_event)
			elseif 2==b then
				setstate(__COMPLETE__)
				q.done()
			else
				say(string.format(gameforge.buy_fishrod._80_say, b))
			end
		end
	end
	state play_event begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(gameforge.buy_fishrod._150_makequestbutton)
			q.set_title(gameforge.buy_fishrod._150_makequestbutton)
			q.start()
		end
		when button begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._160_say)
		end
		when info begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._160_say)
		end
		when 9009.chat.gameforge.buy_fishrod._170_npcChat with pc.countitem("27833")>=5 begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._180_say)
			setstate(reward)
		end
		when 9009.chat.gameforge.buy_fishrod._170_npcChat with pc.countitem("27833")<5 begin
			say_title(gameforge.buy_fishrod._20_sayTitle)
			say(gameforge.buy_fishrod._190_say)
		end
	end
	state reward begin
		when letter begin
			setskin(NOWINDOW)
			makequestbutton(gameforge.buy_fishrod._200_makequestbutton)
			q.set_title(gameforge.buy_fishrod._200_makequestbutton)
			q.start()
		end
		when button begin
			say_title(gameforge.buy_fishrod._210_sayTitle)
			say(gameforge.buy_fishrod._220_say)
			if pc.countitem("27833")>=5 then
				pc.removeitem("27833", 5)
				say(gameforge.buy_fishrod._230_say)
				if pc.job==0 then
					local r=number(1, 10)
					if r==1 then
						pc.give_item2("00013", 1)
					elseif r==2 then
						pc.give_item2("00023", 1)
					elseif r==3 then
						pc.give_item2("00033", 1)
					elseif r==4 then
						pc.give_item2("00043", 1)
					elseif r==5 then
						pc.give_item2("00053", 1)
					elseif r==6 then
						pc.give_item2("03003", 1)
					elseif r==7 then
						pc.give_item2("03013", 1)
					elseif r==8 then
						pc.give_item2("03023", 1)
					elseif r==9 then
						pc.give_item2("03033", 1)
					elseif r==10 then
						pc.give_item2("03043", 1)
					end
				elseif pc.job==1 then
					local r=number(1, 15)
					if r==1 then
						pc.give_item2("00013", 1)
					elseif r==2 then
						pc.give_item2("00023", 1)
					elseif r==3 then
						pc.give_item2("00033", 1)
					elseif r==4 then
						pc.give_item2("00043", 1)
					elseif r==5 then
						pc.give_item2("00053", 1)
					elseif r==6 then
						pc.give_item2("01003", 1)
					elseif r==7 then
						pc.give_item2("04003", 1)
					elseif r==8 then
						pc.give_item2("01013", 1)
					elseif r==9 then
						pc.give_item2("04013", 1)
					elseif r==10 then
						pc.give_item2("01023", 1)
					elseif r==11 then
						pc.give_item2("02003", 1)
					elseif r==12 then
						pc.give_item2("02013", 1)
					elseif r==13 then
						pc.give_item2("02023", 1)
					elseif r==14 then
						pc.give_item2("02033", 1)
					elseif r==15 then
						pc.give_item2("2043", 1)
					end
				elseif pc.job==2 then
					local r=number(1, 6)
					if r==1 then
						pc.give_item2("00013", 1)
					elseif r==2 then
						pc.give_item2("00023", 1)
					elseif r==3 then
						pc.give_item2("00033", 1)
					elseif r==4 then
						pc.give_item2("00043", 1)
					elseif r==5 then
						pc.give_item2("00053", 1)
					elseif r==6 then
						pc.give_item2("00053", 1)
					end
				elseif pc.job==3 then
					local r=number(1, 8)
					if r==1 then
						pc.give_item2("05003", 1)
					elseif r==2 then
						pc.give_item2("05013", 1)
					elseif r==3 then
						pc.give_item2("05023", 1)
					elseif r==4 then
						pc.give_item2("07003", 1)
					elseif r==5 then
						pc.give_item2("07013", 1)
					elseif r==6 then
						pc.give_item2("07023", 1)
					elseif r==7 then
						pc.give_item2("07033", 1)
					elseif r==8 then
						pc.give_item2("07043", 1)
					end
				end
			else
				say_title(gameforge.buy_fishrod._20_sayTitle)
				say(gameforge.buy_fishrod._240_say)
			end
			setstate(__COMPLETE__)
			q.done()
		end
	end
	state __COMPLETE__ begin
		when enter begin
			q.done()
		end
	end
end
