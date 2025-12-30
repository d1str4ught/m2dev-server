quest guild_war_join begin
    state start begin
		when letter with ( pc.get_map_index() != 71 and pc.get_map_index() != 104 and pc.get_map_index() != 72 and  pc.get_map_index() != 73 and pc.get_map_index() != 208) and pc.get_map_index() <= 200 begin
			local e = guild.get_any_war()

			if e != 0 and pc.get_war_map() == 0 then
			setskin(NOWINDOW)
			makequestbutton(gameforge.locale.guild.war_join_request)
			end
		end

		when button with ( pc.get_map_index() != 71 and pc.get_map_index() != 104 and pc.get_map_index() != 72 and pc.get_map_index() != 73 and pc.get_map_index() != 208) and pc.get_map_index() <= 200 begin
			local e = guild.get_any_war()

			if e == 0 then
				say(gameforge.locale.guild.war_over)
			else
				say(string.format(gameforge.guild_war_join._10_say, guild.name(e)))

				local s =  select(gameforge.locale.guild.yes, gameforge.locale.guild.no)

				if s == 1 then
					guild.war_enter(e)
				else
					setskin(NOWINDOW)
					makequestbutton(gameforge.locale.guild.war_join_request)
				end
			end
		end
    end
end


