quest fortune_telling begin
	state start begin
		when oldwoman.chat.gameforge.fortune_telling._10_npcChat begin
			if pc.level<=20 then
				say_title(gameforge.couple_ring._20_sayTitle)
				say(gameforge.fortune_telling._20_say)
				return
			end

			if get_time()-pc.getqf("time") < 8*60*60 then
				local passed_time = get_time() - pc.getqf("time")
				say_title(gameforge.couple_ring._20_sayTitle)
				say(gameforge.fortune_telling._30_say)
				
				wait()
				local idx = pc.getqf("idx")
				if idx!=0 then
					say_title(gameforge.fortune_telling._40_sayTitle)
					say(gameforge.fortune_telling._50_say)
					say(locale.fortune_words[idx][1])
					
					wait()
					
					if pc.getqf("talisman") == 0 and special.fortune_telling[idx][5] > 0 then
						local talisman_cost = special.fortune_telling[idx][5]
						say_title(gameforge.fortune_telling._40_sayTitle)
						say(gameforge.fortune_telling._60_say)
						
						local s =  select(gameforge.fortune_telling._70_select, gameforge.fortune_telling._80_select)
						if s == 1 then
							if pc.gold < talisman_cost then
								say_title(gameforge.fortune_telling._40_sayTitle)
								say(gameforge.fortune_telling._90_say)
								
								pc.setqf("talisman", 0)
							else
								pc.give_item2(70052,1)
								pc.changegold(-talisman_cost)
								pc.setqf("talisman", 1)
								
							end
						else
							return
						end
					else
						return
					end
				end
			end

			local gold = 7777
			
			say_title(gameforge.fortune_telling._100_sayTitle)


			say(gameforge.fortune_telling._110_say)
			local s =  select(gameforge.fortune_telling._120_select, gameforge.fortune_telling._130_select)

			if s == 2 then
				say_title(gameforge.fortune_telling._100_sayTitle)
				say(gameforge.fortune_telling._140_say)
				
				return
			end

			local n = number(1, 10000)

			local i
			local idx
			for i = 1, table.getn(special.fortune_telling) do
				if n<=special.fortune_telling[i][1] then
					idx = i
					break
				else
					n = n - special.fortune_telling[i][1]
				end
			end
			i = idx

			say_title(gameforge.fortune_telling._100_sayTitle)
			say(locale.fortune_words[i][2])
			
			local t = {}

			n = 0
			local j
			for j = 2,4 do
				if special.fortune_telling[i][j] != 0 then
					n=n+1
					t[n] = j
				end
			end

			if n > 0 then
				n = number(1, n)
				__give_char_priv(t[n]-1, special.fortune_telling[i][t[n]])
			end

			pc.setqf("time", get_time())
			pc.setqf("idx", i)

			if special.fortune_telling[i][5]>0 then
				wait()
				
				say_title(gameforge.fortune_telling._100_sayTitle)
				say(locale.fortune_words[i][3])

				local talisman_cost = special.fortune_telling[i][5]
				local s =  select(gameforge.fortune_telling._150_select, gameforge.fortune_telling._160_select)
				if s == 1 then
					if pc.gold < talisman_cost then
						say(string.format(gameforge.fortune_telling._170_say, gold))
						pc.setqf("talisman", 0)
						
					else
						pc.give_item2(70052,1)
						pc.changegold(-talisman_cost)
						pc.setqf("talisman", 1)
						
					end

				elseif s == 2 then
					say_title(gameforge.fortune_telling._40_sayTitle)
					say(gameforge.fortune_telling._180_say)
					pc.setqf("talisman", 0)
				end
			end

		end -- end_of_when
	end -- end_of_state
end -- end_of_quest
