quest goto_empire_castle begin
	state start begin
		when 20097.chat.gameforge.goto_empire_castle._10_npcChat begin

			local empire = pc.get_empire()
			if empire==1 then
				a= select(gameforge.goto_empire_castle._20_select, gameforge.goto_empire_castle._30_select, gameforge.goto_empire_castle._35_select, gameforge.locale.cancel)
				if 1==a then
					
					say(gameforge.goto_empire_castle._40_say)
					wait()
					pc.warp(975200, 133000)
				elseif 2==a then
					say(gameforge.goto_empire_castle._50_say)
					wait()
					pc.warp(978000, 199500)
				elseif 3==a then
					say(gameforge.goto_empire_castle._60_say)
					wait()
					pc.warp(967900, 199400)
				else
					return
				end
			else  
				say(gameforge.goto_empire_castle._70_say)
			end
		end

		when 20098.chat.gameforge.goto_empire_castle._80_npcChat begin

			local empire = pc.get_empire()
			if empire==2 then
				a= select(gameforge.goto_empire_castle._20_select, gameforge.goto_empire_castle._30_select, gameforge.goto_empire_castle._35_select, gameforge.locale.cancel)
				if 1==a then
					say(gameforge.goto_empire_castle._90_say)
					wait()
					pc.warp(977400, 150100)
				elseif 2==a then
					say(gameforge.goto_empire_castle._100_say)
					wait()
					pc.warp(977200, 185000)
				elseif 3==a then
					say(gameforge.goto_empire_castle._60_say)
					wait()
					pc.warp(925600, 201200)
				else
					return
				end	
			else  
				say(gameforge.goto_empire_castle._110_say)
			end
		end
		when 20099.chat.gameforge.goto_empire_castle._10_npcChat begin

			local empire = pc.get_empire()
			if empire==3 then
				a= select(gameforge.goto_empire_castle._20_select, gameforge.goto_empire_castle._30_select, gameforge.goto_empire_castle._35_select, gameforge.locale.cancel)
				if 1==a then
					say(gameforge.goto_empire_castle._90_say)
					wait()
					pc.warp(1018900, 148400)
				elseif 2==a then
					say(gameforge.goto_empire_castle._100_say)
					wait()
					pc.warp(1019000, 200200)
				elseif 3==a then
					say(gameforge.goto_empire_castle._60_say)
					wait()
					pc.warp(923900, 183600)
				else
					return
				end	
			else  
				say(gameforge.goto_empire_castle._120_say)
			end
		end
	end
end
