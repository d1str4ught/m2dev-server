quest guild_building begin
    state start begin
	when 20040.click begin
	    say_title(gameforge.guild_building._10_sayTitle)
		say(gameforge.guild_building._20_say)

	    local s =  select(locale.yes, locale.no)

	    if s == 1 then
		if not pc.is_guild_master() then
		    say_title(gameforge.guild_building._10_sayTitle)
			say(gameforge.guild_building._30_say)
		elseif building.has_land(pc.get_guild()) then
		    say_title(gameforge.guild_building._10_sayTitle)
			say(gameforge.guild_building._40_say)
		else
		    local land_id = building.get_land_id(pc.get_map_index(), pc.get_x()*100, pc.get_y()*100)

		    if land_id == 0 then
			say_title(gameforge.guild_building._10_sayTitle)
			say(gameforge.guild_building._50_say)
		    else
			local price, owner, guild_level_limit = building.get_land_info(land_id)
			say_title(gameforge.guild_building._10_sayTitle)
			say(string.format(gameforge.guild_building._60_say, guild_level_limit, price..locale.gold))

			if guild.level(pc.get_guild()) < guild_level_limit then
			    say_title(gameforge.guild_building._10_sayTitle)
				say(gameforge.guild_building._70_say)
			else
			    say_title(gameforge.guild_building._10_sayTitle)
				say(gameforge.guild_building._80_say)

			    s =  select(locale.yes, locale.no)

			    if s == 1 then
				local price, owner, guild_level_limit = building.get_land_info(land_id)

				if owner!= 0 then
				    say_title(gameforge.guild_building._10_sayTitle)
					say(gameforge.guild_building._90_say)
				elseif pc.gold < price then
				    say_title(gameforge.guild_building._10_sayTitle)
					say(gameforge.guild_building._100_say)
				else
				    pc.changegold(-price)
				    building.set_land_owner(land_id, pc.get_guild())
				    notice_multiline(string.format(gameforge.guild_building._105_say, guild.name(pc.get_guild())),notice)
				end
			    else
				say_title(gameforge.guild_building._10_sayTitle)
				say(gameforge.guild_building._110_say)
			    end
			end
		    end
		end
	    else
            say_title(gameforge.guild_building._10_sayTitle)
		    say(gameforge.guild_building._110_say)
	    end
	end
    end
end


