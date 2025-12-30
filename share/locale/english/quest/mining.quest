quest mining begin
	state start begin
		when 20015.chat.gameforge.fisher._10_npcChat begin
			setskin(NOWINDOW)
			npc.open_shop()
		end

		when 20015.take with item.vnum >= 29101 and item.vnum < 29110 and item.get_socket(0) != item.get_value(2) begin
			
			say_title(gameforge.mining._10_sayTitle)
			say(gameforge.mining._20_say)
		end
		when 20015.take with item.vnum >= 29101 and item.vnum < 29110 and item.get_socket(0) == item.get_value(2) begin
			say_title(gameforge.mining._10_sayTitle)

			say(string.format(gameforge.mining._30_say,  item.get_level()))
			if item.get_value(3) == 100 then
			say_title(gameforge.mining._10_sayTitle)
				say(gameforge.mining._40_say)
			else
			say_title(gameforge.mining._10_sayTitle)
				say(string.format(gameforge.mining._50_say,  100-item.get_value(3)))
			end

			local s =  select(gameforge.locale.guild.yes, gameforge.locale.guild.no)
			if s == 2 then
			say_title(gameforge.mining._10_sayTitle)
				say(gameforge.mining._55_say)
				return
			end
			
			local f = __refine_pick(item.get_cell())
			if f == 2 then 
			say_title(gameforge.mining._10_sayTitle)

				say(gameforge.mining._60_say)
			elseif f == 1 then 
			say_title(gameforge.mining._10_sayTitle)
				say(gameforge.mining._70_say)
			else 
			say_title(gameforge.mining._10_sayTitle)
				say(gameforge.mining._80_say)
			end
		end

		when 20047.click or	20048.click or	20049.click or	20050.click or	20051.click or	20052.click or	20053.click or	20054.click or	20055.click or	20056.click or	20057.click or	20058.click or	20059.click
			or 30301.click or 30302.click or 30303.click or 30304.click or 30305.click 
		begin
			if pc.is_mount() != true then
				pc.mining()
			end
		end
	end
end


