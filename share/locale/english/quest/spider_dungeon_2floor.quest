quest spider_dungeon_2floor begin
	state start begin
		when login or levelup with pc.level >0 begin
			set_state(to_spider_2floor)
		end
	end
		
	state to_spider_2floor begin
		when 20089.chat.gameforge.spider_dungeon_2floor._10_npcChat begin
			say_title(gameforge.spider_dungeon_2floor._15_sayTitle)
			say(gameforge.spider_dungeon_2floor._20_say)
			
			local a= select(gameforge.locale.guild.yes, gameforge.locale.guild.no)
			if 1==a then
			
				say_title(gameforge.spider_dungeon_2floor._15_sayTitle)
				say(gameforge.spider_dungeon_2floor._30_say)
				wait()

				pc.warp(91700, 525300)
				return
			end

			say_title(gameforge.spider_dungeon_2floor._15_sayTitle)
			say(gameforge.spider_dungeon_2floor._40_say)
		end
	end
end